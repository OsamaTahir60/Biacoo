import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/ProfileDetailScreen.dart';
import 'package:biacoo/src/view/RateExperience.dart';
import 'package:flutter/material.dart';

import 'pharmacy/VerifyOrder.dart';
class LiveInformation extends StatefulWidget {
  const LiveInformation({Key? key}) : super(key: key);

  @override
  _LiveInformationState createState() => _LiveInformationState();
}

class _LiveInformationState extends State<LiveInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView(
    children: [
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
      Card(
        color: Color(0xfffCBC9C9),
        child:  Container(
          height: 3.0 * SizeConfig.heightMultiplier!,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 50.0 * SizeConfig.heightMultiplier),
                    height: 2.0 * SizeConfig.heightMultiplier!,
                    width: 2.0 * SizeConfig.heightMultiplier!,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:ExactAssetImage(Images.check),
                      ),
                    ),
                  ),
                  SizedBox(width: 2*SizeConfig.widthMultiplier!,),
                  Container(
                    child: Text(
                      "You are now connected",style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xff6D6B6B),
                      fontSize: 2 * SizeConfig.textMultiplier!,
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 2.0 * SizeConfig.heightMultiplier!,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:ExactAssetImage(Images.signal),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        child: Row(
          children: [
            Container(
                height: 30.0 * SizeConfig.heightMultiplier!,
                width: 50.0 * SizeConfig.widthMultiplier!,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.1, 0.5],
                      colors: [Colors.red, Color(0xff651C69)]
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      // alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 5.0 * SizeConfig.heightMultiplier!),
                      height: 10.0 * SizeConfig.heightMultiplier!,
                      width: 10.0 * SizeConfig.heightMultiplier!,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:ExactAssetImage(Images.headphone),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1*SizeConfig.heightMultiplier!,
                    ),
                    Container(
                      //margin: EdgeInsets.only(left: 40.0,right: 20.0),
                      alignment: Alignment.center,
                      child: Text("Biaaco online",style: TextStyle(
                          color: Colors.white,
                          fontSize: 1.5 * SizeConfig.textMultiplier!,
                          fontFamily: 'Muli',
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    Container(
                      //margin: EdgeInsets.only(left: 40.0,right: 20.0),
                      alignment: Alignment.center,
                      child: Text("healthcare facilitator",style: TextStyle(
                          color: Colors.white,
                          fontSize: 1.5 * SizeConfig.textMultiplier!,
                          fontFamily: 'Muli',
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ],
                )
            ),
            Container(
              height: 30.0 * SizeConfig.heightMultiplier!,
              width: 50.0 * SizeConfig.widthMultiplier!,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(0)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.1, 0.5],
                    colors: [Colors.red, Colors.purple]
                ),
              ),
              child: Column(
                children: [
                  Container(
                    // alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 5.0 * SizeConfig.heightMultiplier!),
                    height: 10.0 * SizeConfig.heightMultiplier!,
                    width: 10.0 * SizeConfig.heightMultiplier!,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:NetworkImage('https://png.pngtree.com/png-clipart/20190924/original/pngtree-businessman-user-avatar-free-vector-png-image_4827807.jpg'),
                      ),
                      shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(
                    height: 1*SizeConfig.heightMultiplier!,
                  ),
                  Container(
                    //margin: EdgeInsets.only(left: 40.0,right: 20.0),
                    alignment: Alignment.center,
                    child: Text("Kashif Khan",style: TextStyle(
                        color: Colors.white,
                        fontSize: 1.5 * SizeConfig.textMultiplier!,
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 1*SizeConfig.heightMultiplier!,
      ),
      Center(
        child: Text("Live Information Feed",style: TextStyle(
            color: Color(0xff363636),
            fontSize: 2.9 * SizeConfig.textMultiplier!,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w400
        ),),
      ),
      SizedBox(
        height: 1*SizeConfig.heightMultiplier!,
      ),
      Container(
        height: 35.0 *SizeConfig.heightMultiplier! ,
        child: Card(
          elevation: 0,
          color: Color(0xfffEEEEEE),
          child: Padding(
            padding: EdgeInsets.all(1*SizeConfig.heightMultiplier!),
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 3.0 * SizeConfig.heightMultiplier!, top:1*SizeConfig.heightMultiplier!),
                  child: Text("Symptoms",
                    style: TextStyle(
                        color: Color(0xff6D6B6B),
                        fontSize: 2.0 * SizeConfig.textMultiplier!,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400
                    ),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.0 * SizeConfig.heightMultiplier!,right: 5.0 * SizeConfig.heightMultiplier!),
                  child: TextField(
                    decoration: new InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff656464)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff656464)),
                      ),
                    ),

                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.0 * SizeConfig.heightMultiplier!,right: 5.0 * SizeConfig.heightMultiplier!),
                  child: TextField(
                    decoration: new InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff656464)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff656464)),
                      ),
                    ),

                  ),

                ),
                SizedBox(height: 1*SizeConfig.heightMultiplier!,),
                Container(
                  margin: EdgeInsets.only(left: 3.0 * SizeConfig.heightMultiplier!,),
                  child: Text("Allergies",
                    style: TextStyle(
                        color: Color(0xff6D6B6B),
                        fontSize: 2.0 * SizeConfig.textMultiplier!,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400
                    ),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.0 * SizeConfig.heightMultiplier!,right: 5.0 * SizeConfig.heightMultiplier!),
                  child: TextField(
                    decoration: new InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff656464)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff656464)),
                      ),
                    ),

                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.0 * SizeConfig.heightMultiplier!,right: 5.0 * SizeConfig.heightMultiplier!),
                  child: TextField(
                    decoration: new InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff656464)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff656464)),
                      ),
                    ),

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        height: 1*SizeConfig.heightMultiplier!,
      ),
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
            child: Text('Confirm', style: TextStyle(fontSize: 2.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute( builder: (BuildContext context){
                  return RateExperience();
                },),
              );
            },
          ),
        ),
      ),
    ],
    ),
    );
  }
}
