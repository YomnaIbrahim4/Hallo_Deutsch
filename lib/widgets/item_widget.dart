import 'package:flutter/material.dart';
import 'package:hallo_deutsch/models/item_model.dart';
import 'package:hallo_deutsch/audio_player_helper.dart';

class ItemWidget extends StatefulWidget {
  final ItemModel itemModel;

  const ItemWidget({super.key, required this.itemModel});

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();

    AudioPlayerHelper.player.onPlayerComplete.listen((event) {
      setState(() {
        isPlaying = false;
      });
    });
  }

  void _togglePlay() async {
    if (isPlaying) {
      await AudioPlayerHelper.stopAudio();
      setState(() => isPlaying = false);
    } else {
      await AudioPlayerHelper.playAudio(widget.itemModel.sound);
      setState(() => isPlaying = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Image.asset(widget.itemModel.image,height: 80,width: 70,),
        title: Text(widget.itemModel.engText,style: TextStyle(fontSize: 25),),
        subtitle: Text(widget.itemModel.gerText,style: TextStyle(fontSize: 20)),
        trailing: IconButton(
          icon: Icon(
            isPlaying
                ? Icons.pause
                : Icons.play_arrow,size: 30,),
          onPressed: _togglePlay,
        ),
      ),
    );
  }
}
