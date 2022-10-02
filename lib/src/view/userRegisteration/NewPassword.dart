import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/plugins/styling.dart';
import 'package:biacoo/src/view/userRegisteration/ForgetPassCode.dart';
import 'package:biacoo/src/view/userRegisteration/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  _NewPasswordScreenState createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  bool newPass=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appBackgroundColor,
      body: SafeArea(
          bottom: false,
          left: false,
          right: false,
          top: false,
          child: SingleChildScrollView(
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
                  newPassForm()!,
                // loginAgain(),
                ]
            ),
          )

      ),
    );
  }
  Widget? newPassForm()
  {
    if(newPass==false){
      return Column(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: FittedBox(
                  child: Padding(
                    padding: EdgeInsets.only(top: 0.5 * SizeConfig.heightMultiplier!),
                    child: Text('Create New Password',
                      style: TextStyle(
                        fontSize: 2.8 * SizeConfig.textMultiplier!,
                        fontFamily: 'OpenSans_semibold',
                        color: Color(0xff6D6B6B),
                      ),textAlign: TextAlign.center,),
                  )
              )
          ),
          SizedBox(height: 2.0 *SizeConfig.heightMultiplier!,),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: 50.0* SizeConfig.widthMultiplier!,
                  child: Padding(
                    padding: EdgeInsets.only(top: 0.5 * SizeConfig.heightMultiplier!),
                    child: Text('your new password must be different from previously used password',
                      style: TextStyle(
                        fontSize: 2.1 * SizeConfig.textMultiplier!,
                        fontFamily: 'OpenSans-Regular',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff1D1D1D),
                      ),textAlign: TextAlign.center,),
                  )
              )
          ),
          SizedBox(height: 5.0 *SizeConfig.heightMultiplier!,),
          Form(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 75.0 * SizeConfig.widthMultiplier!,
                    height: 7.5 * SizeConfig.heightMultiplier!,
                    margin: EdgeInsets.only(top:0.5 * SizeConfig.heightMultiplier! ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          stops: [0.01, 0.4,0.8],
                          colors: [Color(0xffC1272D),
                            Color(0xff651C69),
                            Color(0xff28225E),]
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(0.5* SizeConfig.heightMultiplier!),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0))
                      ),
                      child:  Container(
                        //top:0.5*SizeConfig.heightMultiplier
                        padding: EdgeInsets.only(top:0.3*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            color: Colors.white
                        ),
                        child: TextFormField(
                          style: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'New Password',
                            hintStyle: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.0 *SizeConfig.heightMultiplier!,),

                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 75.0 * SizeConfig.widthMultiplier!,
                    height: 7.5 * SizeConfig.heightMultiplier!,
                    margin: EdgeInsets.only(top:0.5 * SizeConfig.heightMultiplier! ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          stops: [0.01, 0.4,0.8],
                          colors: [Color(0xffC1272D),
                            Color(0xff651C69),
                            Color(0xff28225E),]
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(0.5* SizeConfig.heightMultiplier!),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0))
                      ),
                      child:  Container(
                        //top:0.5*SizeConfig.heightMultiplier
                        padding: EdgeInsets.only(top:0.3*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            color: Colors.white
                        ),
                        child: TextFormField(
                          style: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0 *SizeConfig.heightMultiplier!,),

                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 75.0 * SizeConfig.widthMultiplier!,
                    height: 7.0 * SizeConfig.heightMultiplier!,
                    margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ,bottom: 1.0*SizeConfig.heightMultiplier!),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [Color(0xffC1272D), Color(0xffC1272D), Color(0xff7D1A6D), Color(0xff28225E)]
                      ),
                    ),
                    child: TextButton(
                      child: Text('Save', style: TextStyle(fontSize: 2.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                      onPressed: () {
                        setState(() {
                          newPass =true;
                        });
                      },
                    ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 10.0 *SizeConfig.heightMultiplier!,),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(1*SizeConfig.heightMultiplier!),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute( builder: (BuildContext context){
                        return SignInScreen();
                      },),
                    );
                  },
                  child:  Icon(Icons.arrow_back ,size: 8*SizeConfig.imageSizeMultiplier!,),
                ),
              )
          )
        ],
      );
    }
    else
      {
        return Column(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: FittedBox(
                    child: Padding(
                      padding: EdgeInsets.only(top: 0.5 * SizeConfig.heightMultiplier!),
                      child: Text('Congratulation',
                        style: TextStyle(
                          fontSize: 2.8 * SizeConfig.textMultiplier!,
                          fontFamily: 'OpenSans_semibold',
                          color: Color(0xff6D6B6B),
                        ),textAlign: TextAlign.center,),
                    )
                )
            ),
            SizedBox(height: 2.0 *SizeConfig.heightMultiplier!,),
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                    width: 50.0* SizeConfig.widthMultiplier!,
                    child: Padding(
                      padding: EdgeInsets.only(top: 0.5 * SizeConfig.heightMultiplier!),
                      child: Text('your password has been reset successfully! Now sign in with your new password',
                        style: TextStyle(
                          fontSize: 2.1 * SizeConfig.textMultiplier!,
                          fontFamily: 'OpenSans-Regular',
                          fontWeight: FontWeight.w400,
                          color: Color(0xff1D1D1D),
                        ),textAlign: TextAlign.center,),
                    )
                )
            ),
            SizedBox(height: 10.0 *SizeConfig.heightMultiplier!,),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 75.0 * SizeConfig.widthMultiplier!,
                height: 7.0 * SizeConfig.heightMultiplier!,
                margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ,bottom: 1.0*SizeConfig.heightMultiplier!),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
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
            SizedBox(height: 30.0 *SizeConfig.heightMultiplier!,),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(1*SizeConfig.heightMultiplier!),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute( builder: (BuildContext context){
                          return NewPasswordScreen();
                        },),
                      );
                    },
                    child:  Icon(Icons.arrow_back ,size: 8*SizeConfig.imageSizeMultiplier!,),
                  ),
                )
            )
          ],
        );
      }

  }
}

