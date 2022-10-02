import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/plugins/styling.dart';
import 'package:biacoo/src/view/WaitScreen.dart';
import 'package:biacoo/src/view/userRegisteration/SignIn.dart';
import 'package:biacoo/src/view/userRegisteration/SignupStep1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appBackgroundColor,
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        top: false,
        child: mainContent(),

      ),
    );
  }
  Widget mainContent()
  {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 5.0 *SizeConfig.heightMultiplier!,),
            Padding(
              padding: EdgeInsets.all(3.0*SizeConfig.heightMultiplier!),
              child:  Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  Images.biacooLogoColor,
                  alignment: Alignment.center,
                  semanticsLabel: 'BIAACO Logo',
                  height: 35.0 * SizeConfig.imageSizeMultiplier!,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: FittedBox(
                    child: Padding(
                      padding: EdgeInsets.only(top: 0.5 * SizeConfig.heightMultiplier!),
                      child: Text('Join our family',
                        style: TextStyle(
                          fontSize: 2.8 * SizeConfig.textMultiplier!,
                          fontFamily: 'OpenSans_semibold',
                          color: Color(0xff6D6B6B),
                        ),textAlign: TextAlign.center,),
                    )
                )
            ),
            SizedBox(height: 3.0 *SizeConfig.heightMultiplier!,),
            Container(
              height: 35.0 * SizeConfig.heightMultiplier!,
              child: Stack(
                children: [
                  Positioned(
                    child:Container(
                        height: 30.0 * SizeConfig.heightMultiplier!,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.1, 0.5],
                              colors: [Colors.red, Color(0xff651C69)]
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(1 * SizeConfig.heightMultiplier!),
                          child:  Container(
                            height: 20.0 * SizeConfig.heightMultiplier!,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Call Now',style: TextStyle(
                                        fontSize: 2.9 * SizeConfig.textMultiplier!,
                                        fontFamily: 'OpenSans',
                                        color: Color(0xff6D6B6B),
                                        fontWeight: FontWeight.w700
                                    ),
                                    ),
                                    Text('to Register',style: TextStyle(
                                        fontSize: 2.9 * SizeConfig.textMultiplier!,
                                        fontFamily: 'OpenSans',
                                        color: Color(0xff6D6B6B),
                                        fontWeight: FontWeight.w700
                                    ),
                                    ),
                                  ],
                                )
                            ),
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 11.0 * SizeConfig.heightMultiplier!,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            stops: [0.02, 0.8],
                            colors: [Color(0xff2b6026), Color(0xff3d8f38)]
                        ),
                        shape: BoxShape.circle,
                      ),
                      child:InkWell(
                        onTap: (){
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute( builder: (BuildContext context){
                              return  WaitingScreen();
                            },),
                          );

                        },
                        child: ImageIcon(
                          AssetImage(Images.phone),
                          color: Color(0xffffffff),
                          size: 11 * SizeConfig.heightMultiplier!,),
                      ),

                    ),
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: FittedBox(
                    child: Padding(
                      padding: EdgeInsets.only(top: 3 * SizeConfig.heightMultiplier!),
                      child: Text('Or simply sign up manually',
                        style: TextStyle(
                          fontSize: 2.3 * SizeConfig.textMultiplier!,
                          fontFamily: 'Proxima',
                          color: Color(0xff1d1d1d),
                          fontWeight: FontWeight.w400,
                        ),textAlign: TextAlign.center,),
                    )
                )
            ),
            SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width:26.0 * SizeConfig.heightMultiplier!,
                margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier!),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [Color(0xffC1272D), Color(0xffC1272D), Color(0xff7D1A6D), Color(0xff28225E)]
                  ),
                ),
                child: TextButton(
                  child: Text('SIGN IN', style: TextStyle(fontSize: 2.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                  onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute( builder: (BuildContext context){
                      return SignInScreen();
                    },),
                  );
                  },
                ),
              ),
            ),
            SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width:26.0 * SizeConfig.heightMultiplier!,
                margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier!),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [Color(0xffC1272D), Color(0xffC1272D), Color(0xff7D1A6D), Color(0xff28225E)]
                  ),
                ),
                child: TextButton(
                  child: Text('SIGN UP', style: TextStyle(fontSize: 2.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute( builder: (BuildContext context){
                         return SignupStep1();
                      },),
                    );
                  },
                ),
              ),
            ),

          ]
      ),
    );
  }

}
