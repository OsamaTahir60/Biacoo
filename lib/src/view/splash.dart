import 'dart:async';
import 'package:biacoo/src/view/userRegisteration/welcome.dart';
import 'package:flutter/material.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/plugins/images.dart';
import 'package:flutter_svg/svg.dart';



class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                 (context) => WelcomeScreen()
               // (context) => DoctorSignIn()

            )
        )
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Align(
                    alignment: Alignment.center,
                    child: welcomeContentWidget(),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }


  Widget welcomeContentWidget() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(6.5 * SizeConfig.heightMultiplier!),
                child: Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    Images.biacooLogoWhite,
                    semanticsLabel: 'BIAACO Logo',
                    fit: BoxFit.fill,
                  ),
                ),
              )),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: <Widget>[
                  Text(
                    "WELCOME",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 5.3 * SizeConfig.textMultiplier!,
                      fontFamily: 'Proxima',
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 7.0 *SizeConfig.heightMultiplier!,),
                  Text(
                    "Always Getting Better",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 2.5 * SizeConfig.textMultiplier!,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'OpenSans',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 18.0 *SizeConfig.heightMultiplier!,),
                  Center(
                    child: Image.asset(
                      Images.pakflag,
                      width:8.0 * SizeConfig.imageSizeMultiplier!,

                    ),
                  ),
                  SizedBox(height: 1.5 *SizeConfig.heightMultiplier!,),
                  Text(
                    "Now in Pakistan",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 2.5 * SizeConfig.textMultiplier!,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'OpenSans',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    }

}
