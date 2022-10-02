
import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/ProfileDetailScreen.dart';
import 'package:biacoo/src/view/lab/ThanksScreen.dart';
import 'package:biacoo/src/view/pharmacy/VerifyOrder.dart';
import 'package:flutter/material.dart';
class ChooseLab extends StatefulWidget {
  @override
  _ChooseLabState createState() => new _ChooseLabState();
}

class _ChooseLabState extends State<ChooseLab> {
 int _radioVal = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:SafeArea(
          bottom: false,
          left: false,
          right: false,
          top: true,
          child: SingleChildScrollView(
            child:Column(
                children: <Widget>[
                  SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
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
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                            child: Text("Choose Labs",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                          )
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                            child: InkWell(
                              onTap: (){

                              },
                              child:  Icon(Icons.arrow_back ,size: 7*SizeConfig.imageSizeMultiplier!, color: Colors.white,),
                            ),
                          )
                      ),

                    ],
                  ),
                  SizedBox(height: 1.0 * SizeConfig.heightMultiplier!,),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 75.0 * SizeConfig.widthMultiplier!,
                      height: 6.5 * SizeConfig.heightMultiplier!,
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
                          padding: EdgeInsets.only(top:0.3*SizeConfig.heightMultiplier!,left: 1.0 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white
                          ),
                          child: TextFormField(
                            style: TextStyle(fontSize: 2.1*SizeConfig.textMultiplier!,),
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                              hintText: 'Search Labs',
                              hintStyle: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
                            ),
                            keyboardType: TextInputType.text,
                            //controller: pass,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),

                  Container(
                    child:Column(
                      children: [
                        for (int i = 1; i <= 5; i++)
                          ListTile(
                            title:  Padding(padding: EdgeInsets.all(0.1*SizeConfig.heightMultiplier!),
                                child:InkWell(
                                  onTap: ()
                                  {
                                    // Navigator.of(context).push(
                                    //   MaterialPageRoute( builder: (BuildContext context){
                                    //     return DoctorProfileScreen();
                                    //   },),
                                    // );
                                  },
                                  child:  Container(
                                    height: 8.0*SizeConfig.heightMultiplier!,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(width: 1.0, color: Colors.black),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(1.0),
                                          width: 10.0*SizeConfig.widthMultiplier!,
                                          child:  Container(
                                            margin: EdgeInsets.all(2.0),
                                            height: 6.0*SizeConfig.heightMultiplier!,
                                            width: 5.0*SizeConfig.widthMultiplier!,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage("https://media-exp1.licdn.com/dms/image/C4E0BAQFUD81C97pnsA/company-logo_200_200/0/1519895430891?e=2159024400&v=beta&t=ITEtZSfYGfwdo4a3P0Y2CDNnlaeU-e8YySb6OtImrfs"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.all(2.0),
                                          height: 9.0*SizeConfig.heightMultiplier!,
                                          width: 60*SizeConfig.widthMultiplier!,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 1.5 * SizeConfig.heightMultiplier!,),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child:Text('Chughtai Lab',
                                                  style: TextStyle(
                                                    fontSize: 2.0 * SizeConfig.textMultiplier!,
                                                    fontFamily: 'OpenSans-Regular',
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff6D6B6B),
                                                  ),textAlign: TextAlign.center,),

                                              ),
                                              SizedBox(height: 0.5 * SizeConfig.heightMultiplier!,),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child:Text('(5\5) 1454 Reviews',
                                                  style: TextStyle(
                                                    fontSize: 1.5 * SizeConfig.textMultiplier!,
                                                    fontFamily: 'OpenSans-Regular',
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff6D6B6B),
                                                  ),textAlign: TextAlign.center,),

                                              ),
                                              SizedBox(height: 0.2 * SizeConfig.heightMultiplier!,),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child:Text('Distance (3 KM)',
                                                  style: TextStyle(
                                                    fontSize: 1.5 * SizeConfig.textMultiplier!,
                                                    fontFamily: 'OpenSans-Regular',
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff6D6B6B),
                                                  ),textAlign: TextAlign.center,),

                                              ),

                                            ],
                                          ),
                                        ),
                                      ],
                                    ),

                                  ),
                                )
                            ),
                            leading: Radio(
                              value: i,
                              groupValue: _radioVal,
                              activeColor: Colors.black,
                              onChanged: i == 5 ? null : (int? value) {
                                setState(() {
                                  _radioVal = value!;
                                });
                              },
                            ),
                          ),
                      ],
                    )
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 75.0 * SizeConfig.widthMultiplier!,
                      height: 6.0 * SizeConfig.heightMultiplier!,
                      margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ,bottom: 1.0*SizeConfig.heightMultiplier!),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [Color(0xffC1272D), Color(0xffC1272D), Color(0xff7D1A6D), Color(0xff28225E)]
                        ),
                      ),
                      child: TextButton(
                        child: Text('Next', style: TextStyle(fontSize: 2.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute( builder: (BuildContext context){
                              return ThanksScreen();
                            },),
                          );
                        },
                      ),
                    ),
                  ),
                ]
            ),

          ),
        )
    );
  }
}