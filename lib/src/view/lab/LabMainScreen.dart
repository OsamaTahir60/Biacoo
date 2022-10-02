import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/ProfileDetailScreen.dart';
import 'package:biacoo/src/view/lab/SelectLabManual.dart';
import 'package:biacoo/src/view/pharmacy/VerifyOrder.dart';
import 'package:flutter/material.dart';
class LabMainScreen extends StatefulWidget {
  const LabMainScreen({Key? key}) : super(key: key);

  @override
  _LabMainScreenState createState() => _LabMainScreenState();
}

class _LabMainScreenState extends State<LabMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          top: true,
          bottom: false,
          right: false,
          left: true,
          child: ListView(
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


                ],
              ),
              SizedBox(height: 1.0 * SizeConfig.heightMultiplier!,),
              Container(
                height: 15*SizeConfig.heightMultiplier!,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff6EB6F5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Container(
                      width: 45*SizeConfig.widthMultiplier!,
                      child: Text('Welcome to our ONLINE DIAGNOSTICS',style: TextStyle(
                          fontSize: 2.3 * SizeConfig.textMultiplier!,
                          fontFamily: 'Muli',
                          color: Color(0xff2D2355),
                          fontWeight: FontWeight.w700
                      ),
                      ),
                    ),
                    Image.asset(
                      Images.pharmacylabIcon,
                      width:30.0 * SizeConfig.imageSizeMultiplier!,
                    ),
                  ],
                ),
              ),
              SizedBox( height:4.0*SizeConfig.heightMultiplier!,),
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
                                      Text('Need Help?',style: TextStyle(
                                          fontSize: 2.3 * SizeConfig.textMultiplier!,
                                          fontFamily: 'OpenSans',
                                          color: Color(0xffC1272D),
                                          fontWeight: FontWeight.w500
                                      ),
                                      ),
                                      Text('Simply Call To',style: TextStyle(
                                          fontSize: 2.9 * SizeConfig.textMultiplier!,
                                          fontFamily: 'OpenSans',
                                          color: Color(0xff6D6B6B),
                                          fontWeight: FontWeight.w500
                                      ),
                                      ),
                                      Text('Schedule Your Test',style: TextStyle(
                                          fontSize: 2.9 * SizeConfig.textMultiplier!,
                                          fontFamily: 'OpenSans',
                                          color: Color(0xff6D6B6B),
                                          fontWeight: FontWeight.w500
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
                            // Navigator.of(context).pushReplacement(
                            //   MaterialPageRoute( builder: (BuildContext context){
                            //     return  WaitingScreen();
                            //   },),
                            // );

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
              SizedBox(height: 4.0 * SizeConfig.heightMultiplier!,),
              Container(
                  height: 20*SizeConfig.heightMultiplier!,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffEEEEEE)
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 10*SizeConfig.heightMultiplier!,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            Container(
                              width: 40*SizeConfig.widthMultiplier!,
                              child: Text('Schedule quickly with prescription',style: TextStyle(
                                  fontSize: 2.3 * SizeConfig.textMultiplier!,
                                  fontFamily: 'Muli',
                                  color: Color(0xff2D2355),
                                  fontWeight: FontWeight.w700
                              ),
                              ),
                            ),
                            Image.asset(
                              Images.plogoIcon,
                              width:30.0 * SizeConfig.imageSizeMultiplier!,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 10*SizeConfig.heightMultiplier!,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                width: 40.0 * SizeConfig.widthMultiplier!,
                                height: 5.0 * SizeConfig.heightMultiplier!,
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
                                  child: Text('Schedule Manually', style: TextStyle(fontSize: 2.0 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute( builder: (BuildContext context){
                                        return SelectLabManual();
                                      },),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                width: 40.0 * SizeConfig.widthMultiplier!,
                                height: 5.0 * SizeConfig.heightMultiplier!,
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
                                  child: Text('UPLOAD NEW', style: TextStyle(fontSize: 2.0 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                                  onPressed: () {
                                    // Navigator.of(context).pushReplacement(
                                    //   MaterialPageRoute( builder: (BuildContext context){
                                    //     return UploadPrescription();
                                    //   },),
                                    // );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ],
          )
      ),
    );
  }
}
