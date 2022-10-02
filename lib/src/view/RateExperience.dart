import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/HomeScreen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter/material.dart';

class RateExperience extends StatefulWidget {

  @override
  RateExperienceState createState() => RateExperienceState();
}
class RateExperienceState extends State<RateExperience> {
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

          SizedBox(height: 15.0 * SizeConfig.heightMultiplier!,),
          Expanded(
            flex:2,
            child: Align(
                alignment: Alignment.topCenter,
                child:Column(
                  children: [
                    SizedBox(height: 5.0 * SizeConfig.heightMultiplier!,),
                    Text(
                      "Thank you",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 4 * SizeConfig.textMultiplier!,
                        fontFamily: 'Roboto',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 3.0 * SizeConfig.heightMultiplier!, ),
                    Text(
                      "Please rate your experience",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 3 * SizeConfig.textMultiplier!,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 3.0 * SizeConfig.heightMultiplier!, ),
                    Container(
                      child: RatingBar.builder(
                        initialRating: 0.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 0.8 * SizeConfig.heightMultiplier! ),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                  ],
                )
            ),
          ),
          Expanded(
            flex:4,
            child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute( builder: (BuildContext context){
                                return HomeScreen();
                              },),
                            );
                          },
                          child:Container(
                              height: 20.0 * SizeConfig.heightMultiplier!,
                              width: 35.0 * SizeConfig.widthMultiplier!,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                border: Border.all(color:Color(0xff569027),width: 2.0),
                                // gradient: LinearGradient(
                                //     begin: Alignment.topLeft,
                                //     end: Alignment.topRight,
                                //     stops: [0.02, 0.8],
                                //     colors: [Color(0xff2b6026), Color(0xff3d8f38)]
                                // ),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(0.4 * SizeConfig.heightMultiplier!),
                                child:  Center(
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 5 * SizeConfig.heightMultiplier!,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image:ExactAssetImage(Images.r1Icon),
                                            ),
                                          ),
                                        ),
                                        Text('View consultation summary',style: TextStyle(
                                            fontSize: 1.5 * SizeConfig.textMultiplier!,
                                            fontFamily: 'OpenSans',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600
                                        ),textAlign: TextAlign.center,
                                        ),
                                      ],
                                    )
                                ),
                              )
                          ),
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute( builder: (BuildContext context){
                                return HomeScreen();
                              },),
                            );
                          },
                          child:Container(
                              height: 20.0 * SizeConfig.heightMultiplier!,
                              width: 35.0 * SizeConfig.widthMultiplier!,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                border: Border.all(color:Color(0xff569027),width: 2.0),
                                // gradient: LinearGradient(
                                //     begin: Alignment.topLeft,
                                //     end: Alignment.topRight,
                                //     stops: [0.02, 0.8],
                                //     colors: [Color(0xff2b6026), Color(0xff3d8f38)]
                                // ),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(0.4 * SizeConfig.heightMultiplier!),
                                child:  Center(
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 5 * SizeConfig.heightMultiplier!,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image:ExactAssetImage(Images.r2Icon),
                                            ),
                                          ),
                                        ),
                                        Text('Reconnect to the call center',style: TextStyle(
                                            fontSize: 1.5 * SizeConfig.textMultiplier!,
                                            fontFamily: 'OpenSans',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600
                                        ),textAlign: TextAlign.center,
                                        ),
                                      ],
                                    )
                                ),
                              )
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height:1*SizeConfig.heightMultiplier!),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute( builder: (BuildContext context){
                                return HomeScreen();
                              },),
                            );
                          },
                          child:Container(
                              height: 20.0 * SizeConfig.heightMultiplier!,
                              width: 35.0 * SizeConfig.widthMultiplier!,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                border: Border.all(color:Color(0xff569027),width: 2.0),
                                // gradient: LinearGradient(
                                //     begin: Alignment.topLeft,
                                //     end: Alignment.topRight,
                                //     stops: [0.02, 0.8],
                                //     colors: [Color(0xff2b6026), Color(0xff3d8f38)]
                                // ),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(0.4 * SizeConfig.heightMultiplier!),
                                child:  Center(
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 5 * SizeConfig.heightMultiplier!,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image:ExactAssetImage(Images.r3Icon),
                                            ),
                                          ),
                                        ),
                                        Text('Order Medicine',style: TextStyle(
                                            fontSize: 1.5 * SizeConfig.textMultiplier!,
                                            fontFamily: 'OpenSans',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600
                                        ),textAlign: TextAlign.center,
                                        ),
                                      ],
                                    )
                                ),
                              )
                          ),
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute( builder: (BuildContext context){
                                return HomeScreen();
                              },),
                            );
                          },
                          child:Container(
                              height: 20.0 * SizeConfig.heightMultiplier!,
                              width: 35.0 * SizeConfig.widthMultiplier!,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                border: Border.all(color:Color(0xff569027),width: 2.0),
                                // gradient: LinearGradient(
                                //     begin: Alignment.topLeft,
                                //     end: Alignment.topRight,
                                //     stops: [0.02, 0.8],
                                //     colors: [Color(0xff2b6026), Color(0xff3d8f38)]
                                // ),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(0.4 * SizeConfig.heightMultiplier!),
                                child:  Center(
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 5 * SizeConfig.heightMultiplier!,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image:ExactAssetImage(Images.r4Icon),
                                            ),
                                          ),
                                        ),
                                        Text('Lab/Diagnostics Booking',style: TextStyle(
                                            fontSize: 1.5 * SizeConfig.textMultiplier!,
                                            fontFamily: 'OpenSans',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600
                                        ),textAlign: TextAlign.center,
                                        ),
                                      ],
                                    )
                                ),
                              )
                          ),
                        ),

                      ],
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



