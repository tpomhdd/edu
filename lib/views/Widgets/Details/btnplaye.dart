import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:mybookly/core/utils/man_widget/mytext.dart';

class btnplay extends StatefulWidget {
  final String url;
  final double size;

  const btnplay({Key? key,required this.url, required this.size,

  }) : super(key: key);

  @override
  State<btnplay> createState() => _btnplayState();
}

class _btnplayState extends State<btnplay> {
  final audioplyer=AudioPlayer();
  bool idPlayer=false;
  Duration duration=Duration.zero;
  Duration position=Duration.zero;
  @override
  void initState() {
    audioplyer.onPlayerStateChanged.listen((event) {
      setState(() {
        idPlayer=event==PlayerState.playing;

      });
    });
    audioplyer.onDurationChanged.listen((event) {
      setState(() {
        duration=event;
      });
    });
    audioplyer.onPositionChanged.listen((event) {
      setState(() {

        position=event;
      });
    });

    // TODO: implement initState
    super.initState();
  }
  void dispose() {
    audioplyer.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // String url="https://tpowep.com/files/3.mp3";

    return           Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(onPressed: () async {
            if(idPlayer){
              await audioplyer.pause();

            }
            else{

              await audioplyer.play(UrlSource(widget.url));
            }
          }, icon:Icon( idPlayer?Icons.pause_circle
              :Icons.play_circle,color: Colors.white,size: widget.size,),

          ),
        ),
        Slider(
            min: 0,
            max: duration.inSeconds.toDouble(),
            value: position.inSeconds.toDouble(), onChanged: (value) async {
          final position=Duration(seconds: value.toInt());
          await audioplyer.seek(position);
          await audioplyer.resume();
        }),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(color: Colors.white, text: position.toString(), size: 12),
            MyText(color: Colors.white, text: duration.toString(), size: 12),

          ],
        )
        
      ],
    );}

}
