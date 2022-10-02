
import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/ProfileDetailScreen.dart';
import 'package:biacoo/src/view/pharmacy/VerifyOrder.dart';
import 'package:flutter/material.dart';
class SelectPanel extends StatefulWidget {
  @override
  SelectPanelState createState() => new SelectPanelState();
}

class SelectPanelState extends State<SelectPanel> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<CheckBoxListTileModel> checkBoxListTileModel =
  CheckBoxListTileModel.getCategoryList();
  List<CheckBoxListTileFilter> checkBoxListFilter =
  CheckBoxListTileFilter.getFilterList();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _scaffoldKey,
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
                            child: Text("Panel",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                          )
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                            child: InkWell(
                              onTap: (){
                                this
                                    ._scaffoldKey
                                    .currentState!
                                    .showBottomSheet((ctx) => _buildBottomSheet(ctx));
                                // Navigator.of(context).pushReplacement(
                                //   MaterialPageRoute( builder: (BuildContext context){
                                //     return WelcomeScreen();
                                //   },),
                                // );
                              },
                              child:  Icon(Icons.filter_list ,size: 7*SizeConfig.imageSizeMultiplier!, color: Colors.grey,),
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
                              hintText: 'Search',
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
                  Padding(
                    padding:EdgeInsets.only(left:2*SizeConfig.heightMultiplier!),
                    child: Text("Select Panel",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                  ),

                  Container(
                    height: 60*SizeConfig.heightMultiplier!,
                    child:  new ListView.builder(
                        itemCount: checkBoxListTileModel.length,
                        itemBuilder: (BuildContext context, int index) {
                          return new Card(
                            child: new Container(
                              padding: new EdgeInsets.all(10.0),
                              child: Column(
                                children: <Widget>[
                                  new CheckboxListTile(
                                      activeColor: Colors.grey,
                                      dense: true,
                                      //font change
                                      title: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          new Text(
                                            checkBoxListTileModel[index].title!,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 0.5),
                                          ),

                                        ],
                                      ),
                                      value: checkBoxListTileModel[index].isCheck,
                                      secondary: Container(
                                        padding: EdgeInsets.all(2.0),
                                        height: 8.0*SizeConfig.heightMultiplier!,
                                        width: 12.0*SizeConfig.widthMultiplier!,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                                          margin: EdgeInsets.all(0.2*SizeConfig.heightMultiplier!),
                                          child: Container(
                                            margin: EdgeInsets.all(0.4*SizeConfig.heightMultiplier!),
                                            child:ImageIcon(
                                              AssetImage(  checkBoxListTileModel[index].img!),
                                              color: Colors.white,
                                            ),
                                            // Image.asset(
                                            //   checkBoxListTileModel[index].img!,
                                            //   fit: BoxFit.cover,
                                            // ),
                                          ),
                                        ),
                                      ),

                                      onChanged: (val) {
                                        itemChange(val!, index);
                                      })
                                ],
                              ),
                            ),
                          );
                        }),
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
                        child: Text('Next', style: TextStyle(fontSize: 2.0 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                        onPressed: () {
                          // Navigator.of(context).pushReplacement(
                          //   MaterialPageRoute( builder: (BuildContext context){
                          //     return SelectLabManual();
                          //   },),
                          // );
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
  Container _buildBottomSheet(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.clear),
                onPressed: () => Navigator.pop(context),
              ),
              Center(
                  child: Text("Filter",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,)
              ),
              IconButton(
                icon: Text("OK",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),

          Divider(),
          Container(
            height: 4*SizeConfig.heightMultiplier!,
            color: Color(0xffEEEEEE),
            child: Text("Sort By",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.left,),
          ),
          Container(
            height: 20*SizeConfig.heightMultiplier!,
            child:  new ListView.builder(
                itemCount: checkBoxListFilter.length,
                itemBuilder: (BuildContext context, int index) {
                  return new Card(
                    child: new Container(
                      padding: new EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          new CheckboxListTile(
                              activeColor: Colors.grey,
                              dense: true,
                              //font change
                              title: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  new Text(
                                    checkBoxListFilter[index].title!,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.5),
                                  ),
                                ],
                              ),
                              value: checkBoxListFilter[index].isFilterCheck,
                              onChanged: (val) {
                                filterChange(val!, index);
                              })
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
    print( checkBoxListTileModel[index].categoryId);
  }
  void filterChange(bool val, int index) {
    setState(() {
      checkBoxListFilter[index].isFilterCheck = val;
    });
    print( checkBoxListFilter[index].id);
  }
}
class CheckBoxListTileModel {
  int? categoryId;
  String? img;
  String? title;
  bool? isCheck;

  CheckBoxListTileModel({this.categoryId, this.img, this.title,  this.isCheck});

  static List<CheckBoxListTileModel> getCategoryList() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
          categoryId: 1,
          img: Images.ABScreenIcon,
          title: "AB Screen",
          isCheck: true),
      CheckBoxListTileModel(
          categoryId: 2,
          img: Images.ABGIcon,
          title: "ABG",
          isCheck: false),
      CheckBoxListTileModel(
          categoryId: 3,
          img: Images.ElectrolytesIcon,
          title: "BMP",
          isCheck: true),
      CheckBoxListTileModel(
          categoryId: 4,
          img: Images.CBCIcon,
          title: "CBC",
          isCheck: false),




    ];
  }


}
class CheckBoxListTileFilter {
  int? id;

  String? title;
  bool? isFilterCheck;

  CheckBoxListTileFilter({this.id, this.title,this.isFilterCheck});

  static List<CheckBoxListTileFilter> getFilterList() {
    return <CheckBoxListTileFilter>[
      CheckBoxListTileFilter(
          id: 1,
          title: "A-Z",
          isFilterCheck: true),
      CheckBoxListTileFilter(
          id: 2,
          title: "Z-A",
          isFilterCheck: false),





    ];
  }


}