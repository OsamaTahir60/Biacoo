import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class OrderComplete extends StatefulWidget {
  const OrderComplete({Key? key}) : super(key: key);

  @override
  _OrderCompleteState createState() => _OrderCompleteState();
}

class _OrderCompleteState extends State<OrderComplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          top:false,
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
            child:Column(
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: Align(alignment: Alignment.center, child: welcomeContentWidget()),
                ),

              ],
            ),
          )
      ),
    );

  }
  Widget welcomeContentWidget(){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              flex: 3,
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
          SizedBox(height: 15.0 * SizeConfig.heightMultiplier!,),
          Expanded(
            flex:3,
            child: Align(
                alignment: Alignment.topCenter,
                child:Column(
                  children: [
                    SizedBox(height: 5.0 * SizeConfig.heightMultiplier!,),
                    Text(
                      "Thank you",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 2.8 * SizeConfig.textMultiplier!,
                        fontFamily: 'Roboto',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "For Your Order",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 2.8 * SizeConfig.textMultiplier!,
                        fontFamily: 'Roboto',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 3.0 * SizeConfig.heightMultiplier!, ),
                    Text(
                      "Our Delivery team will",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 2.2 * SizeConfig.textMultiplier!,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Roboto',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "call you shortly",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 2.2 * SizeConfig.textMultiplier!,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Roboto',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 3.0 * SizeConfig.heightMultiplier!, ),
                    Container(
                      width: 60.0 * SizeConfig.widthMultiplier!,
                      height: 7.0 * SizeConfig.heightMultiplier!,
                      margin: EdgeInsets.only(bottom: 10.0 * SizeConfig.heightMultiplier!,),
                      //color: Colors.white,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.white),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        child: Text('NEXT',style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 3*SizeConfig.textMultiplier!,
                          fontFamily: 'Roboto',
                        ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute( builder: (BuildContext context){
                              return HomeScreen();
                            },),
                          );
                        },
                      ),
                    ),

                  ],
                )
            ),
          ),

        ],
      ),
    );
  }
}
