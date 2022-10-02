import 'dart:async';

import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/ProfileDetailScreen.dart';
import 'package:biacoo/src/view/RateExperience.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class WaitingScreen extends StatefulWidget {
  const WaitingScreen({Key? key}) : super(key: key);

  @override
  _WaitingScreenState createState() => _WaitingScreenState();
}

class _WaitingScreenState extends State<WaitingScreen> {
  static String myVideoId = 'sqBm7QR34lc';
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: YoutubePlayerFlags(
      mute: false,
      autoPlay: false,
      disableDragSeek: true,
      loop: false,
      isLive: false,
      forceHD: false,
      enableCaption: true,

    ),
  );
  double value=0;
  bool connectionStatus=false;
  final interval = const Duration(seconds: 1);

   int timerMaxSeconds = 90;

  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  startTimeout([int? milliseconds]) {
    var duration = interval;
    Timer.periodic(duration, (timer) {
      setState(() {
        print(timer.tick);
        print(timerText);
        currentSeconds = timer.tick;
        if (timer.tick >= 80)
          {

             connectionStatus = true;
            if(timer.tick >=timerMaxSeconds)
            {
              Navigator.of(context).push(
                MaterialPageRoute( builder: (BuildContext context){
                  return RateExperience();
                },),
              );
              timer.cancel();
            }
          }
        else
          {
            value = timer.tick/90;
          }
      });
    });
  }

  @override
  void initState() {
    startTimeout();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: connectionStatus==true ? timerWidget2() : timerWidget()
    );
  }
  Widget timerWidget(){
    return SafeArea(
      top: true,
      bottom: false,
      left: false,
      right: false,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.all(1*SizeConfig.heightMultiplier!),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  Images.bHome,
                  width:7.0 * SizeConfig.imageSizeMultiplier!,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute( builder: (BuildContext context){
                            return ProfileDetailScreen();
                          },),
                        );
                      },
                      child: Container(

                          padding: EdgeInsets.all(0.2*SizeConfig.heightMultiplier!),

                          width: 12*SizeConfig.widthMultiplier!,
                          height: 4.5*SizeConfig.heightMultiplier!,
                          decoration: BoxDecoration(
                              color:Colors.grey,
                              shape: BoxShape.circle
                          ),

                          child:Stack(
                            children: [
                              CircleAvatar(
                                radius: 30.0,
                                backgroundImage:NetworkImage('https://png.pngtree.com/png-clipart/20190924/original/pngtree-businessman-user-avatar-free-vector-png-image_4827807.jpg'),
                                backgroundColor: Colors.red,
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child:  Container(
                                    padding: EdgeInsets.all(2.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white
                                    ),
                                    child: Icon(Icons.edit,
                                      color: Colors.black,
                                      size: 10.0,),
                                  ))
                            ],
                          )
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        // Navigator.of(context).push(
                        //   MaterialPageRoute( builder: (BuildContext context){
                        //     return ProfileDetailScreen();
                        //   },),
                        // );
                      },
                      child: Container(

                        padding: EdgeInsets.all(0.2*SizeConfig.heightMultiplier!),

                        width: 12*SizeConfig.widthMultiplier!,
                        height: 4.5*SizeConfig.heightMultiplier!,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1,color: Colors.grey),
                            // color:Colors.white,
                            shape: BoxShape.circle
                        ),

                        child:CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.transparent,
                          child: Icon(Icons.shopping_cart,color: Colors.grey,),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Container(
                                width: 43.0* SizeConfig.widthMultiplier!,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 0.5 * SizeConfig.heightMultiplier!),
                                  child: Text('Please wait while we are connecting to the call center',
                                    style: TextStyle(
                                      fontSize: 2.1 * SizeConfig.textMultiplier!,
                                      fontFamily: 'OpenSans-Regular',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff6D6B6B),
                                    ),textAlign: TextAlign.center,),
                                )
                            ),
                          )
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                  flex:1,
                                  child: Container(
                                    width: 20.0 * SizeConfig.widthMultiplier!,
                                    child: CircularProgressIndicator(
                                      backgroundColor: Colors.grey,
                                      color:Color(0xffC1272D),
                                      strokeWidth: 5,
                                      value: value,
                                    ),
                                  )
                              ),
                              Expanded(
                                  flex:2,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Text(timerText,
                                          style: TextStyle(
                                              fontSize: 8.2 * SizeConfig.textMultiplier!,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Roboto",
                                              color: Colors.black),
                                        ),
                                        Text('Estimated waiting time',
                                          style: TextStyle(
                                            fontSize: 1.8 * SizeConfig.textMultiplier!,
                                            fontFamily: 'OpenSans-Regular',
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff6D6B6B),
                                          ),textAlign: TextAlign.center,),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ))
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(0.0),
                child: YoutubePlayer(
                  controller: _controller,
                  liveUIColor: Colors.amber,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget timerWidget2(){
    return SafeArea(
      top: false,
      bottom: false,
      left: false,
      right: false,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.4,0.8],
            colors: [
              Color(0xffC1272D),
              Color(0xff651C69),
              Color(0xff28225E),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                child: Text('Get Ready',
                  style: TextStyle(
                      fontSize: 3.5 * SizeConfig.textMultiplier!,
                      fontWeight: FontWeight.w800,
                      fontFamily: "OpenSans",
                      color: Colors.white),
                ),
              ),
              Align(
                child: Text(((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0'),
                  style: TextStyle(
                      fontSize: 15.2 * SizeConfig.textMultiplier!,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      color: Colors.white),
                ),
              ),
              Align(
                child: Text('Seconds',
                  style: TextStyle(
                      fontSize: 2.5 * SizeConfig.textMultiplier!,
                      fontWeight: FontWeight.w400,
                      fontFamily: "OpenSans",
                      color: Colors.white),
                ),
              ),
            ],
          ),
        )
      )
    );
  }

}
