import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}
const Color gcColor = Color(0xffF36C24);
const Color bgColor = Color(0xffE5E5E5);

class SizeConfig {
  MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double b;
  static double v;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;

    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;

    b = (screenWidth - _safeAreaHorizontal) / 100;
    v = (screenHeight - _safeAreaVertical) / 100;
  }
}

const Color gc = Color(0xffF36C24);
const Color tc = Color(0xff474C51);
const Color rc = Color(0xffF43E3E);
const Color bt = Color(0xff474C51);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Home());
  }
}



class Home extends StatelessWidget {
  List<Item> itemList;
  List<Item> selectedList;
  @override
  void initState() {
    
    loadList();
    // super.initState();
  }

  loadList() {
    itemList = List();
    selectedList = List();
    itemList.add(Item("images/d.png", 1, "Suraj Sisodia"));
    itemList.add(Item("images/d.png", 2, "Ritesh Shukla"));
    itemList.add(Item("images/d.png", 3, "C.V Raman"));
    itemList.add(Item("images/d.png", 4, "C.V Raman"));
    itemList.add(Item("images/d.png", 5, "C.V Raman"));
    itemList.add(Item("images/d.png", 6, "C.V Raman"));
    itemList.add(Item("images/d.png", 7, "C.V Raman"));
    itemList.add(Item("images/d.png", 8, "C.V Raman"));
    itemList.add(Item("images/d.png", 9, "C.V Raman"));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar:  AppBar(
        elevation: 7,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: gcColor,
            ),
            onPressed: () {
              print('Show menu');
            }),
        title: Text(
          'English',
          style: TextStyle(color: gcColor, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: gcColor,
              ),
              onPressed: () {
                print('Notification');
              }),
          CircleAvatar(
            radius: SizeConfig.b * 5,
            backgroundColor: Colors.grey,
          ),
          SizedBox(
            width: SizeConfig.b * 2.77,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          selectedFontSize: SizeConfig.b * 1.75,
          unselectedFontSize: SizeConfig.b * 1.75,
          selectedItemColor: Color(0xffF36C24),
          iconSize: SizeConfig.b * 7,
          unselectedItemColor: Color(0xff999999),
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
            BottomNavigationBarItem(
                icon: Icon(Icons.view_week_rounded), label: 'COURSES'),
            BottomNavigationBarItem(
                icon: Icon(MdiIcons.viewGrid), label: 'MODULES'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), label: 'MY INSTITUTE'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: 'PROFILE'),
          ]),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: gc,
          onPressed: () {
            showChapterDialogueBox(context);
          }),
      body: Container(
          color: Color(0xffFFFFFF),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.03125),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  //height:SizeConfig.screenHeight*0.046875,
                  width: SizeConfig.screenWidth * 0.60,
                  decoration: BoxDecoration(
                    color: Color(0xffF6F6F6),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0,0,0,0.1),
                        blurRadius: SizeConfig.b*0.48,
                        spreadRadius: SizeConfig.b*0.24,
                        offset: Offset( SizeConfig.b*0.24,  SizeConfig.b*0.24)
                      )
                    ]
                  ),
                  child: Row(children: [
                    SizedBox(width: SizeConfig.b * 2),
                    Icon(Icons.search, color: Color(0xffF36C24)),
                    SizedBox(width: SizeConfig.b * 2),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.b * 1,
                          vertical: SizeConfig.v * 0),
                      width: SizeConfig.screenWidth * 0.5,
                      child: TextField(
                        textInputAction: TextInputAction.search,
                        keyboardType: TextInputType.text,
                        maxLines: null,
                        style: TextStyle(
                            fontSize: SizeConfig.b * 3.5,
                            fontWeight: FontWeight.w400),
                        //controller: _searchInputController,
                        decoration: InputDecoration(
                          
                            border: InputBorder.none,
                            hintText: 'Search Chapter',
                            isDense: true,
                            hintStyle: TextStyle(
                                fontSize: SizeConfig.b * 3.3,
                                color: Color(0xff848484),
                                fontWeight: FontWeight.w400)),
                      ),
                    )
                  ]),
                ),
                SizedBox(width: SizeConfig.screenWidth * 0.039),
                Container(
                    // padding: EdgeInsets.symmetric(
                    //     horizontal: SizeConfig.screenWidth * 0.0125),
                    height: SizeConfig.screenHeight * 0.045,
                    width: SizeConfig.screenWidth * 0.239,
                    decoration: BoxDecoration(
                      color: gc,
                      borderRadius:
                          BorderRadius.circular(SizeConfig.screenWidth * 0.1),
                    ),
                    child: MaterialButton(
                      elevation: 7,
                        padding: EdgeInsets.zero,
                        onPressed: null,
                        child: Row(children: [
                          Icon(MdiIcons.video, color: Colors.white, size: 20),
                          Text("Live Session",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: SizeConfig.screenWidth * 0.0278))
                        ])))
              ]),
              SizedBox(height: SizeConfig.screenHeight * 0.040625),
              Expanded(
                  child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (BuildContext ctxt, int index) {
                            return Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: SizeConfig.screenWidth * 0.056),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(children: [
                                        Container(
                                            height:
                                                SizeConfig.screenHeight * 0.055,
                                            width:
                                                SizeConfig.screenWidth * 0.1389,
                                            decoration: BoxDecoration(
                                              color: index % 2 == 0 ? gc : tc,
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              "CH 1",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700),
                                            )),
                                        SizedBox(
                                            width:
                                                SizeConfig.screenWidth * 0.042),
                                        Container(
                                            width: SizeConfig.screenWidth * 0.7,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Chapter Name",
                                                      style: TextStyle(
                                                          fontSize: SizeConfig
                                                                  .screenWidth *
                                                              0.045)),
                                                ]))
                                      ]),
                                      Container(
                                          width: SizeConfig.screenWidth * 0.711,
                                          child: Divider(
                                              color: Color(0xff515151))),
                                      SizedBox(
                                          height: SizeConfig.screenHeight *
                                              0.03125 /
                                              2),
                                    ]));
                          })))
            ],
          )),
    );
  }
}

class Item {
  String imageUrl;
  int rank;
  String name;
  Item(this.imageUrl, this.rank, this.name);
}

void showChapterDialogueBox(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
            insetPadding: EdgeInsets.all(SizeConfig.screenWidth * 0.0833),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(SizeConfig.b * 2),
            ),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 17),
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth * 0.04722),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.only(
                              left: SizeConfig.b * 2.6,
                              top: SizeConfig.v,
                              bottom: SizeConfig.v),
                          border: OutlineInputBorder(),
                          hintText: 'Chapter Name',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff515151))),
                          hintStyle: TextStyle(
                              color: Color(0xff848484),
                              fontSize: SizeConfig.b * 3.95,
                              fontWeight: FontWeight.w400,
                              letterSpacing: SizeConfig.b * 0.037)),
                      maxLines: null,
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.0265,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.screenWidth * 0.0125),
                            height: SizeConfig.screenHeight * 0.0468,
                            width: SizeConfig.screenWidth * 0.258,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0,0,0,0.2)
                                )
                              ],
                              color: gc,
                              borderRadius: BorderRadius.circular(
                                  SizeConfig.screenWidth * 0.012),
                            ),
                            child: MaterialButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              minWidth: SizeConfig.screenWidth * 0.25,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      SizeConfig.b * 1.4)),
                              child: Text(
                                'Add',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: SizeConfig.screenWidth * 0.039),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ]));
      });
}
