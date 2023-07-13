import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:untitled9/notification.dart';

class MusicPlayer extends StatefulWidget{
  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  bool isPlaying = false;
  double value = 0;
  final player = AudioPlayer();

  Duration? duration = Duration(seconds: 0);


  Future<void> initPlayer() async {
    await player.setSource(AssetSource("song.mp3"));

    duration = await player.getDuration();
  }

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.yellow,
        title: Text('PodCasts', style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
      ),
      body: Stack(
        children: [

          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/yellow1.jpg"),
                fit: BoxFit.cover,
              )
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              Text('Dil Ki Baat',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                ),),
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset("assets/images/vc.jpg",
                  width: 250.0,),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(' Hon\'ble Vice Chancellor',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    letterSpacing: 4,
                    fontWeight: FontWeight.bold,

                  ),),


              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(' Prof. Alok Kumar Chakrawal',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    letterSpacing: 4,
                    fontWeight: FontWeight.bold

                  ),),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${(value /60).floor()}: ${(value %60).floor()}",
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  Slider.adaptive(
                    min: 0.0,
                    max: duration!.inSeconds.toDouble(),


                    value: value,
                    onChanged: (Value) {},
                    activeColor: Colors.white,

                  ),


                  Text("${duration!.inMinutes} : ${duration!.inSeconds % 60}",
                    style: TextStyle(
                      color: Colors.white,
                    ),)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.black87,
                  border: Border.all(color: Colors.white38),
                ),
                child: InkWell(
                 onTap: () async{
                   if(isPlaying){
                     await player.pause();
                     setState(() {
                       isPlaying = false;

                     });

                   }
                   else
                     {
                       await player.resume();
                       setState(() {
                         isPlaying = true;

                       });

                     }
                    player.onPositionChanged.listen((position) {
                      setState(() {
                        value = position.inSeconds.toDouble();
                      });

                    },);

                    },

                  child: Icon(
                   isPlaying ? Icons.pause : Icons.play_arrow,
                    color: Colors.white38,
                  ),
                  ),
                ),
              ],
              ),


            ],
          )



    );
  }
}