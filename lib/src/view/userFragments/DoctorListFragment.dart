import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:flutter/material.dart';
class DoctorListFragment extends StatefulWidget {
  const DoctorListFragment({Key? key}) : super(key: key);

  @override
  _DoctorListFragmentState createState() => _DoctorListFragmentState();
}

class _DoctorListFragmentState extends State<DoctorListFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          Images.bHome,
          width:7.0 * SizeConfig.imageSizeMultiplier!,

        ),
        actions: <Widget>[
          CircleAvatar(
            radius: 15.0,
            //NetworkImage('https://png.pngtree.com/png-clipart/20190924/original/pngtree-businessman-user-avatar-free-vector-png-image_4827807.jpg'),
            backgroundColor: Colors.green,
            child: Icon(Icons.power_settings_new, size: 10.0, color: Colors.white,),
          ),
        ],
      ),
      body: SafeArea(
        top: true,
        bottom: false,
        right: false,
        left: false,
        child: ListView(
          children: [
            SizedBox(height: 1.0 * SizeConfig.heightMultiplier!,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                      child: InkWell(
                        onTap: (){
                          // Navigator.of(context).pushReplacement(
                          //   MaterialPageRoute( builder: (BuildContext context){
                          //     return WelcomeScreen();
                          //   },),
                          // );
                        },
                        child:  Icon(Icons.arrow_back ,size: 7*SizeConfig.imageSizeMultiplier!, color: Colors.black,),
                      ),
                    )
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                      child: Text("Dentist",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                    )
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                      child: InkWell(
                        onTap: (){
                          // Navigator.of(context).pushReplacement(
                          //   MaterialPageRoute( builder: (BuildContext context){
                          //     return WelcomeScreen();
                          //   },),
                          // );
                        },
                        child:  Icon(Icons.arrow_back ,size: 7*SizeConfig.imageSizeMultiplier!, color: Colors.white,),
                      ),
                    )
                ),


              ],
            ),
          ],
        )
      ),
    );
  }
}
