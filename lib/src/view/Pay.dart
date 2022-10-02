import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/OrderComplete.dart';
import 'package:biacoo/src/view/ProfileDetailScreen.dart';
import 'package:biacoo/src/view/userRegisteration/welcome.dart';
import 'package:flutter/material.dart';
class Pay extends StatefulWidget {
  const Pay({Key? key}) : super(key: key);

  @override
  _PayState createState() => _PayState();
}

class _PayState extends State<Pay> {
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
                                return ProfileDetailScreen();
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
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                        child: Text("Pay",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
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
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 2.0 * SizeConfig.heightMultiplier!,),
                    Container(
                      alignment:Alignment.center,
                      child: Text(
                        "Select Payment Method",style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 2.3 * SizeConfig.textMultiplier!,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff767474),
                      ),
                      ),
                    ),
                    SizedBox(height: 2.0 * SizeConfig.heightMultiplier!,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute( builder: (BuildContext context){
                            return OrderComplete();
                          },),
                        );
                      },
                      child: Container(
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
                                    Icon(Icons.credit_card ,size: 7*SizeConfig.imageSizeMultiplier!,),
                                    Container(
                                      width: 45.0 * SizeConfig.widthMultiplier!,
                                      child: Text(
                                        "Credit/Debit Card",style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 1.8* SizeConfig.textMultiplier!,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff484848),
                                      ),
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward_outlined ,size: 6*SizeConfig.imageSizeMultiplier!,)
                                  ],
                                ),
                              )
                          )
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute( builder: (BuildContext context){
                            return OrderComplete();
                          },),
                        );
                      },
                      child: Container(
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
                                    Icon(Icons.money ,size: 7*SizeConfig.imageSizeMultiplier!,),
                                    Container(
                                      width: 45.0 * SizeConfig.widthMultiplier!,
                                      child: Text(
                                        "Jazz Cash",style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 1.8* SizeConfig.textMultiplier!,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff484848),
                                      ),
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward_outlined ,size: 6*SizeConfig.imageSizeMultiplier!,)
                                  ],
                                ),
                              )
                          )
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute( builder: (BuildContext context){
                            return OrderComplete();
                          },),
                        );
                      },
                      child: Container(
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
                                    Icon(Icons.money ,size: 7*SizeConfig.imageSizeMultiplier!,),
                                    Container(
                                      width: 45.0 * SizeConfig.widthMultiplier!,
                                      child: Text(
                                        "Easy Paisa",style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 1.8* SizeConfig.textMultiplier!,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff484848),
                                      ),
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward_outlined ,size: 6*SizeConfig.imageSizeMultiplier!,)
                                  ],
                                ),
                              )
                          )
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute( builder: (BuildContext context){
                            return OrderComplete();
                          },),
                        );
                      },
                      child: Container(
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
                                    Icon(Icons.money ,size: 7*SizeConfig.imageSizeMultiplier!,),
                                    Container(
                                      width: 45.0 * SizeConfig.widthMultiplier!,
                                      child: Text(
                                        "U Paisa",style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 1.8* SizeConfig.textMultiplier!,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff484848),
                                      ),
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward_outlined ,size: 6*SizeConfig.imageSizeMultiplier!,)
                                  ],
                                ),
                              )
                          )
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute( builder: (BuildContext context){
                            return OrderComplete();
                          },),
                        );
                      },
                      child: Container(
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
                                    Icon(Icons.attach_money_outlined ,size: 7*SizeConfig.imageSizeMultiplier!,),
                                    Container(
                                      width: 45.0 * SizeConfig.widthMultiplier!,
                                      child: Text(
                                        "Cash on Delivery",style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 1.8* SizeConfig.textMultiplier!,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff484848),
                                      ),
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward_outlined ,size: 6*SizeConfig.imageSizeMultiplier!,)
                                  ],
                                ),
                              )
                          )
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
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 40.0 * SizeConfig.widthMultiplier!,
                              child: Text(
                                "TOTAL (2 items):",style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 2.5 * SizeConfig.textMultiplier!,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff484848),
                              ),
                              ),
                            ),Container(
                              child: Text(
                                "Rs.568",style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 2.5 * SizeConfig.textMultiplier!,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff484848),
                              ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
