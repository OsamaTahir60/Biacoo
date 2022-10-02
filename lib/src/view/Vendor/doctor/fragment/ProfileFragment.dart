import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:flutter/material.dart';
class VendorProfileFragment extends StatefulWidget {
  const VendorProfileFragment({Key? key}) : super(key: key);

  @override
  _VendorProfileFragmentState createState() => _VendorProfileFragmentState();
}

class _VendorProfileFragmentState extends State<VendorProfileFragment> {
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
                    ],
                  ),
                ),
                SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                      child: Text("Edit Profile",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                    )
                ),
                SizedBox(height: 2.0 *SizeConfig.heightMultiplier!,),
                Container(
                    height: 22.0 * SizeConfig.heightMultiplier!,
                    width: double.infinity,
                    color: Color(0xffe8e6e1),
                    child: Padding(
                      padding: EdgeInsets.all(1.0*SizeConfig.heightMultiplier!),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle
                                ),
                                height: 15*SizeConfig.heightMultiplier!,
                                width: 30*SizeConfig.widthMultiplier!,
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
                                        child: Text('Dr Umar Zia',
                                          style: TextStyle(
                                            fontSize: 2.2 * SizeConfig.textMultiplier!,
                                            fontFamily: 'OpenSans_semibold',
                                            color: Color(0xff6D6B6B),
                                          ),textAlign: TextAlign.center,),
                                      )
                                  )
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                    color: Colors.transparent,
                                  border: Border(
                                    bottom: BorderSide(width: 1.0, color: Colors.black),
                                    right: BorderSide(width: 1.0, color: Colors.black),
                                    left: BorderSide(width: 1.0, color: Colors.black),
                                    top: BorderSide(width: 1.0, color: Colors.black),
                                  ),
                                ),
                                height: 15*SizeConfig.heightMultiplier!,
                                width: 30*SizeConfig.widthMultiplier!,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: FittedBox(
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 0.5 * SizeConfig.heightMultiplier!),
                                          child: Text('4.3',
                                            style: TextStyle(
                                              fontSize: 2.2 * SizeConfig.textMultiplier!,
                                              fontFamily: 'OpenSans_semibold',
                                              color: Color(0xff6D6B6B),
                                            ),textAlign: TextAlign.center,),
                                        )
                                    )
                                ),

                              ),
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: FittedBox(
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 0.5 * SizeConfig.heightMultiplier!),
                                        child: Text('Ratings',
                                          style: TextStyle(
                                            fontSize: 2.2 * SizeConfig.textMultiplier!,
                                            fontFamily: 'OpenSans_semibold',
                                            color: Color(0xff6D6B6B),
                                          ),textAlign: TextAlign.center,),
                                      )
                                  )
                              ),
                            ],
                          ),
                        ],
                      )
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
