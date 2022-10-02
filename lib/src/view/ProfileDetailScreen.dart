import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/plugins/styling.dart';
import 'package:biacoo/src/view/EditProfileScreen.dart';
import 'package:biacoo/src/view/pharmacy/VerifyOrder.dart';
import 'package:flutter/material.dart';
class ProfileDetailScreen extends StatefulWidget {
  const ProfileDetailScreen({Key? key}) : super(key: key);

  @override
  _ProfileDetailScreenState createState() => _ProfileDetailScreenState();
}

class _ProfileDetailScreenState extends State<ProfileDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appBackgroundColor,
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        top: true,
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                          child: Text("Edit Profile",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                        )
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: InkWell(
                            onTap: (){},
                            child:  Icon(Icons.arrow_back ,size: 7*SizeConfig.imageSizeMultiplier!, color: Colors.white,),
                          ),
                        )
                    ),


                  ],
                ),
                SizedBox(height: 2.0 *SizeConfig.heightMultiplier!,),
                Container(
                    height: 28.0 * SizeConfig.heightMultiplier!,
                    width: double.infinity,
                    color: Color(0xffe8e6e1),
                    child: Padding(
                      padding: EdgeInsets.all(1.0*SizeConfig.heightMultiplier!),
                      child: Column(
                        children: [
                          Align(
                            alignment:Alignment.topRight,
                                child:IconButton(
                                  icon: Icon(Icons.edit),
                                  onPressed: (){
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute( builder: (BuildContext context){
                                        return EditProfileScreen();
                                      },),
                                    );
                                  },
                                )
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle
                            ),
                            height: 15*SizeConfig.heightMultiplier!,
                            child:CircleAvatar(
                              radius: 70.0,
                              backgroundImage:NetworkImage('https://png.pngtree.com/png-clipart/20190924/original/pngtree-businessman-user-avatar-free-vector-png-image_4827807.jpg'),
                              backgroundColor: Colors.white,

                            ),

                          ),
                          Align(
                              alignment: Alignment.topCenter,
                              child: FittedBox(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 0.5 * SizeConfig.heightMultiplier!),
                                    child: Text('Profile Photo',
                                      style: TextStyle(
                                        fontSize: 2.8 * SizeConfig.textMultiplier!,
                                        fontFamily: 'OpenSans_semibold',
                                        color: Color(0xff6D6B6B),
                                      ),textAlign: TextAlign.center,),
                                  )
                              )
                          ),
                        ],
                      ),
                    )

                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 75.0 * SizeConfig.widthMultiplier!,
                    height: 7.5 * SizeConfig.heightMultiplier!,
                    margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ),
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
                        padding: EdgeInsets.only(top:0.3*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            color: Colors.white
                        ),
                        child: Row(
                          children: [
                            Text("Name: ",style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!, fontFamily: 'OpenSans', fontWeight: FontWeight.w400,color: Color(0xffC5C2C2)),),
                            Text("Talha Munir ",style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!, fontFamily: 'OpenSans', fontWeight: FontWeight.w400,),),
                          ],
                        )
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 75.0 * SizeConfig.widthMultiplier!,
                    height: 7.5 * SizeConfig.heightMultiplier!,
                    margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ),
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
                          padding: EdgeInsets.only(top:0.3*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Text("Phone: ",style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!, fontFamily: 'OpenSans', fontWeight: FontWeight.w400,color: Color(0xffC5C2C2)),),
                              Container(
                                width: 15.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:ExactAssetImage(Images.pakflag),
                                  ),
                                ),
                              ),
                              Text("+92 21 4566787 ",style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!, fontFamily: 'OpenSans', fontWeight: FontWeight.w400,),),
                            ],
                          )
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 75.0 * SizeConfig.widthMultiplier!,
                    height: 7.5 * SizeConfig.heightMultiplier!,
                    margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ),
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
                          padding: EdgeInsets.only(top:0.3*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Address: ",style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!, fontFamily: 'OpenSans', fontWeight: FontWeight.w400,color: Color(0xffC5C2C2)),),
                              Text("Model Town Lahore ",style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!, fontFamily: 'OpenSans', fontWeight: FontWeight.w400,),),
                              Icon(Icons.location_on_outlined)
                            ],
                          )
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 75.0 * SizeConfig.widthMultiplier!,
                    height: 7.5 * SizeConfig.heightMultiplier!,
                    margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ),
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
                          padding: EdgeInsets.only(top:0.3*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Text("Gender: ",style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!, fontFamily: 'OpenSans', fontWeight: FontWeight.w400,color: Color(0xffC5C2C2)),),
                              Text("Male ",style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!, fontFamily: 'OpenSans', fontWeight: FontWeight.w400,),),
                            ],
                          )
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 75.0 * SizeConfig.widthMultiplier!,
                    height: 7.5 * SizeConfig.heightMultiplier!,
                    margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ),
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
                          padding: EdgeInsets.only(top:0.3*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Date of birth: ",style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!, fontFamily: 'OpenSans', fontWeight: FontWeight.w400,color: Color(0xffC5C2C2)),),
                              Text("15 December 1991 ",style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!, fontFamily: 'OpenSans', fontWeight: FontWeight.w400,),),
                              Icon(Icons.calendar_today_outlined)
                            ],
                          )
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 75.0 * SizeConfig.widthMultiplier!,
                    height: 7.5 * SizeConfig.heightMultiplier!,
                    margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ),
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
                          padding: EdgeInsets.only(top:0.3*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Text("Email: ",style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!, fontFamily: 'OpenSans', fontWeight: FontWeight.w400,color: Color(0xffC5C2C2)),),
                              Text("talha.munir@biaaco.co ",style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!, fontFamily: 'OpenSans', fontWeight: FontWeight.w400,),),
                            ],
                          )
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 75.0 * SizeConfig.widthMultiplier!,
                    height: 7.5 * SizeConfig.heightMultiplier!,
                    margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ),
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
                          padding: EdgeInsets.only(top:0.3*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Text("Blood group: ",style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!, fontFamily: 'OpenSans', fontWeight: FontWeight.w400,color: Color(0xffC5C2C2)),),
                              Text("B+ ",style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!, fontFamily: 'OpenSans', fontWeight: FontWeight.w400,),),
                            ],
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.0 *SizeConfig.heightMultiplier!,),


              ]
          ),
        ),
      ),

    );
  }
}
