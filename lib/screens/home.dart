import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterapp/Animation/slide_side_root.dart';
import 'package:flutterapp/Animation/slide_up.dart';
import 'package:flutterapp/screens/detail_screen.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TabController tabController;
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: Icon(Icons.filter_list),
          backgroundColor: Color(0xFF4070b2),
        ),
        body: DefaultTabController(
          length: 4,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 30,
                  backgroundColor: Colors.transparent,
                  title: Text('Log Book',
                      style: new TextStyle(fontWeight: FontWeight.bold)),
                  floating: false,
                  pinned: true,
                  actions: <Widget>[
                    Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Icon(Icons.search))
                  ],
                  flexibleSpace: Container(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0)),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Color(0xFF3e6db0),
                          Color(0xFF294891),
                        ],
                      ),
                    ),
                    //margin: EdgeInsets.only(top: 100),
                    alignment: Alignment.center,
                    child: FlexibleSpaceBar(),
                  ),
                  bottom: TabBar(
                    //isScrollable: true,
                    // controller: tabController,
                    unselectedLabelColor: Color(0xFF638ec4),
                    unselectedLabelStyle: TextStyle(fontSize: 19.0),
                    labelColor: Colors.white,
                    isScrollable: true,
                    labelStyle:
                        TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                    indicator: UnderlineTabIndicator(
                        insets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        borderSide: BorderSide(color: Colors.white, width: 3)),
                    tabs: [
                      Tab(
                        text: "On Time",
                      ),
                      Tab(text: "Critical"),
                      Tab(text: "All"),
                      Tab(text: "Completed"),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              controller: tabController,
              children: [
                _showOnTimeGrid(context),
                Center(child: Text("Critical")),
                Center(child: Text("All")),
                Center(child: Text("Cmpleted")),
              ],
            ),
          ),
        ));
  }

  final titleList = ["Science", "Maths", "Hindi", "Englsih"];

  Widget _showOnTimeGrid(context) {
    return GridView.count(
      padding: EdgeInsets.fromLTRB(10, 32, 10, 32),
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.width /
        (MediaQuery.of(context).size.height),
      mainAxisSpacing: 32,
      crossAxisSpacing: 5,
      children: new List<Widget>.generate(titleList.length, (index) {
        return new GridTile(
            child: new InkResponse(
                enableFeedback: true,
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            SlideUpRoute(
                                page: DetailScreen(
                              selectedIndex: 0,
                            )));
                      },
                      child: new Card(
                        color: Colors.white,
                        elevation: 5,
                        clipBehavior: Clip.hardEdge,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                "Thrusday, 5 Nov 2019",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 15),
                              CircularPercentIndicator(
                                radius: 130.0,
                                lineWidth: 13.0,
                                animation: true,
                                percent: 0.65,
                                center: new Text(
                                  "65.0%",
                                  style: new TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                progressColor: Colors.primaries[
                                    Random().nextInt(Colors.primaries.length)],
                              ),
                              SizedBox(height: 15),
                             Text(
                                    titleList[index],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Class 3-Section A",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      )),
                )));
      }),
    );
  }
}
