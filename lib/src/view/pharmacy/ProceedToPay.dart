import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/Pay.dart';
import 'package:biacoo/src/view/ProfileDetailScreen.dart';
import 'package:biacoo/src/view/pharmacy/VerifyOrder.dart';
import 'package:biacoo/src/view/userRegisteration/welcome.dart';
import 'package:flutter/material.dart';
class ProceedToPay extends StatefulWidget {
  const ProceedToPay({Key? key}) : super(key: key);

  @override
  _ProceedToPayState createState() => _ProceedToPayState();
}

class _ProceedToPayState extends State<ProceedToPay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            bottom: false,
            left: false,
            right: false,
            top: true,
            child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 1.0 * SizeConfig.heightMultiplier!,),
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
                                  Navigator.of(context).push(
                                    MaterialPageRoute( builder: (BuildContext context){
                                      return VerifyOrder();
                                    },),
                                  );
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
                    SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                              child: InkWell(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child:  Icon(Icons.arrow_back ,size: 7*SizeConfig.imageSizeMultiplier!, color: Colors.black,),
                              ),
                            )
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                              child: InkWell(
                                onTap: (){
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute( builder: (BuildContext context){
                                      return WelcomeScreen();
                                    },),
                                  );
                                },
                                child:  Icon(Icons.arrow_back ,size: 7*SizeConfig.imageSizeMultiplier!, color: Colors.white,),
                              ),
                            )
                        ),


                      ],
                    ),
                    SizedBox(height: 1.0 * SizeConfig.heightMultiplier!,),
                    Container(
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                "CHECKOUT",style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 3 * SizeConfig.textMultiplier!,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff767474),

                              ),textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 1.0 * SizeConfig.heightMultiplier!,),
                            Container(
                              width: 42*SizeConfig.widthMultiplier!,
                              child: Text(
                                "Please Confirm your Shipping Details",style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 2.2 * SizeConfig.textMultiplier!,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6D6B6B),

                              ),textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 2.0 * SizeConfig.heightMultiplier!,),
                            Container(
                                width: 80.0 * SizeConfig.widthMultiplier!,
                                height: 8.0 * SizeConfig.heightMultiplier!,
                                child:Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    color: Colors.white70,
                                    child: Padding(
                                      padding: EdgeInsets.all(1*SizeConfig.heightMultiplier!),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.location_on_outlined ,size: 6*SizeConfig.imageSizeMultiplier!,),
                                          Container(
                                            width: 65.0 * SizeConfig.widthMultiplier!,
                                            child: Text(
                                              "H#44 Near Abid Model School, Naeem road. Punjab",style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 1.8* SizeConfig.textMultiplier!,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff484848),

                                            ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                )
                            ),
                            SizedBox(height: 3.0 * SizeConfig.heightMultiplier!,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Text(
                                    "Bill to default billing address",style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 2.0 * SizeConfig.textMultiplier!,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,

                                  ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "EDIT",style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 1.8 * SizeConfig.textMultiplier!,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red,

                                  ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height:3.0 * SizeConfig.heightMultiplier!),
                            Container(
                                width: 80.0 * SizeConfig.widthMultiplier!,
                                height: 8.0 * SizeConfig.heightMultiplier!,
                                child:Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    color: Colors.white70,
                                    child: Padding(
                                      padding: EdgeInsets.all(1*SizeConfig.heightMultiplier!),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          SizedBox(width: 2.0 * SizeConfig.heightMultiplier!,),
                                          Icon(Icons.phone_in_talk_outlined ,size: 6*SizeConfig.imageSizeMultiplier!,),
                                          Container(
                                            width: 50.0 * SizeConfig.widthMultiplier!,
                                            child: Text(
                                              "0344 - 456 4577",style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 1.8* SizeConfig.textMultiplier!,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff484848),

                                            ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                )
                            ),
                            Container(
                                width: 80.0 * SizeConfig.widthMultiplier!,
                                height: 8.0 * SizeConfig.heightMultiplier!,
                                child:Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    color: Colors.white70,
                                    child: Padding(
                                      padding: EdgeInsets.all(1*SizeConfig.heightMultiplier!),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          SizedBox(width: 2.0 * SizeConfig.heightMultiplier!,),
                                          Icon(Icons.mail_outline_outlined ,size: 6*SizeConfig.imageSizeMultiplier!,),
                                          Container(
                                            width: 50.0 * SizeConfig.widthMultiplier!,
                                            child: Text(
                                              "arif_faizan@gmail.com",style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 1.8* SizeConfig.textMultiplier!,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff484848),

                                            ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                )
                            ),
                            Container(
                                width: 80.0 * SizeConfig.widthMultiplier!,
                                height: 8.0 * SizeConfig.heightMultiplier!,
                                child: Card(
                                    color: Colors.white70,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Subtotal (2 items):",style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 2.5 * SizeConfig.textMultiplier!,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff000000),

                                          ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "Rs.568",style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 2.5 * SizeConfig.textMultiplier!,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff000000),

                                          ),
                                          ),
                                        ),
                                      ],
                                    )
                                )
                            ),
                            Container(
                                width: 80.0 * SizeConfig.widthMultiplier!,
                                height: 8.0 * SizeConfig.heightMultiplier!,
                                child: Card(
                                    color: Colors.white70,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Delivery Charges:",style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 2.5 * SizeConfig.textMultiplier!,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff000000),

                                          ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "Rs.568",style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 2.5 * SizeConfig.textMultiplier!,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff000000),

                                          ),
                                          ),
                                        ),
                                      ],
                                    )
                                )
                            ),
                            Container(
                                width: 80.0 * SizeConfig.widthMultiplier!,
                                height: 8.0 * SizeConfig.heightMultiplier!,
                                child: Card(
                                    color: Colors.white70,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(right: 3.0 * SizeConfig.heightMultiplier!),

                                          child: Text(
                                            "Total (2 items)",style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 2.5 * SizeConfig.textMultiplier!,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff000000),

                                          ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "Rs.568",style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 2.5 * SizeConfig.textMultiplier!,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff000000),

                                          ),
                                          ),
                                        ),
                                      ],
                                    )
                                )
                            ),
                            SizedBox(height:2.0 * SizeConfig.heightMultiplier!),
                            Align(
                              child: Container(
                                height: 7*SizeConfig.heightMultiplier!,
                                width:60.0 * SizeConfig.widthMultiplier!,
                                padding: EdgeInsets.only(left: 2.0 * SizeConfig.heightMultiplier!),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.topRight,
                                      stops: [0.01, 0.4],
                                      colors: [Colors.red, Color(0xff651C69)]
                                  ),
                                ),
                                child: TextButton(
                                  child: Text('Proceed to Pay', style: TextStyle(fontSize: 2.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute( builder: (BuildContext context){
                                        return Pay();
                                      },),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        )
                    ),

                  ],
                )

            )
        ),
    );
  }
}
