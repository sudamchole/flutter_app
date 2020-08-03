import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeDetails extends StatefulWidget {
  @override
  _HomeDetailsState createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  List studentList = [
    'Student first',
    'Student second',
    'Student third',
    'Student fourth',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.only(
            top: 16.0,
            left: 16.0,
            right: 16.0,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          "Monday, March 25",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue[300],
                      ),
                    ),
                    Container(padding:EdgeInsets.all(5),child: Text("To")),
                    Expanded(
                      flex: 2,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          "Monday, March 25",
                          style: TextStyle(color: Colors.white),
                          maxLines: 2,
                        ),
                        color: Colors.blue[300],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              CircularPercentIndicator(
                  radius: 90.0,
                  lineWidth: 5.0,
                  animation: true,
                  percent: 1.0,
                  center: new Text(
                    "100.0%",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.0),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.redAccent),
              SizedBox(height: 16),
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                child: Divider(
                  thickness: 2.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Text(
                          "Book Name",
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                    ),

                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Topic Name",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 130,
                margin: EdgeInsets.only(left: 16, right: 16),
                color: Colors.grey[300],
              ),
              SizedBox(height: 32),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 32),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Question Assigned : 20",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 64,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 32),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Student Acknowlegment",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue[300],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ListView.builder(
                itemCount: studentList.length,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.only(left: 32),
                      child: Text(studentList[index],style: TextStyle(color: Colors.green),));
                },
              ),
              SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
