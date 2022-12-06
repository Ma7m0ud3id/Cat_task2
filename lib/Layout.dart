import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';



class Layout extends StatefulWidget {
  static const String routName = 'Layout';

  @override
  State<Layout> createState() => _LayoutState();
}


class _LayoutState extends State<Layout> {
  List<Color> coler = <Color>[
    Colors.orange,
    Colors.greenAccent,
    Colors.lightBlue,
    Colors.pinkAccent,
    Colors.yellow,
    Colors.orange,
    Colors.greenAccent,
    Colors.lightBlue,
    Colors.pinkAccent,
    Colors.yellow
  ];
  List<String> imdge = <String>[
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/4.jpg',
    'assets/5.jpg',
    'assets/6.jpg',
    'assets/7.jpg',
    'assets/8.jpg',
    'assets/9.jpg',
    'assets/10.jpg'
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.list),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Hello,john', style: TextStyle(fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white),),
          Container(
            margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8)),
            //color of container tasks(dark mode change)
            child: Row(
              children: [
                SizedBox(
                  width: 4,
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5), // Border width
                        decoration: BoxDecoration(color: Colors.white,
                            shape: BoxShape.circle),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(20), // Image radius
                            child: Image.asset(
                                'assets/me.jpg', fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Container(
                        //alignment: Alignment.bottomRight,
                        height: 15,
                        width: 15,
                        padding: EdgeInsets.all(5), // Border width
                        decoration: BoxDecoration(color: Colors.green,
                            shape: BoxShape.circle),

                        // color: Colors.green,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'YOUR BALANCE', style: TextStyle(fontSize: 15,
                          color: Colors.orange,
                          //Color(0xFF5D9CEC),
                          fontWeight: FontWeight.w400,),

                        ),
                        Text(
                            'S23,052.82',
                            style: TextStyle(fontSize: 25, color: Colors
                                .white)
                        ),
                      ],
                    )),
                Spacer(),
                Icon(Icons.arrow_forward_ios, color: Colors.white),

              ],
            ),


          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('Achievement', style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),),
              Spacer(),
              Text('See all', style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                new Container(
                  height: 180,
                  //width: 180,
                  child: ListView.builder(
                    itemCount: coler.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: coler[index],
                        child: new Container(
                            width: 135.0,
                            height: 100.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5), // Border width
                                  decoration: BoxDecoration(color: coler[index],
                                      shape: BoxShape.circle),
                                  child: ClipOval(
                                    child: SizedBox.fromSize(
                                      size: Size.fromRadius(20), // Image radius
                                      child: Image.asset(
                                          imdge[index], fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                                Text('${index + 1} week streak',
                                  style: TextStyle(color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),)

                              ],
                            )
                        ),
                      );
                    },

                  ),
                ),
              ],
            ),
          ),
          //SizedBox(height: 30,),
          Row(
            children: [
              Text('Investment protfolio', style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),),
              Spacer(),
              Text('See all', style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),),
            ],
          ),
          Expanded(
              child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: <Widget>[
                    Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(8)),
              //color of container tasks(dark mode change)
                   child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.apple,color: Colors.white,size: 60),
                      Spacer(),
                      Icon(Icons.more_vert,color: Colors.white,size: 30,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 9,vertical: 5),
                      child: Text('Apple',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)),
                  Container(
                  margin: EdgeInsets.symmetric(horizontal: 9,vertical: 5),
                      child: Text('S454848515',style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.bold),)),
                  LinearPercentIndicator(
                    width: 140.0,
                    lineHeight: 14.0,
                    percent: 0.5,
                    center: Text(
                      "50.0%",
                      style: new TextStyle(fontSize: 12.0),
                    ),
                   // trailing: Icon(Icons.mood),
                   // linearStrokeCap:LinearStrokeCap.roundAll,

                    backgroundColor: Colors.grey,
                    progressColor: Colors.orange,
                  ),
                ],
              )
          ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(8)),
                        //color of container tasks(dark mode change)
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.adb,color: Colors.white,size: 60),
                                Spacer(),
                                Icon(Icons.more_vert,color: Colors.white,size: 30,)
                              ],
                            ),
                            SizedBox(height: 20,),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 9,vertical: 5),
                                child: Text('Activision Blizzerd',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 9,vertical: 5),
                                child: Text('S487685515',style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.bold),)),
                            LinearPercentIndicator(
                              width: 140.0,
                              lineHeight: 14.0,
                              percent: 0.75,
                              center: Text(
                                "75.0%",
                                style: new TextStyle(fontSize: 12.0),
                              ),
                              // trailing: Icon(Icons.mood),
                              // linearStrokeCap:LinearStrokeCap.roundAll,

                              backgroundColor: Colors.grey,
                              progressColor: Colors.orange,
                            ),
                          ],
                        )
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(8)),
                        //color of container tasks(dark mode change)
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.ac_unit,color: Colors.white,size: 60),
                                Spacer(),
                                Icon(Icons.more_vert,color: Colors.white,size: 30,)
                              ],
                            ),
                            SizedBox(height: 20,),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 9,vertical: 5),
                                child: Text('AMD',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 9,vertical: 5),
                                child: Text('S4554554515',style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.bold),)),
                            LinearPercentIndicator(
                              width: 140.0,
                              lineHeight: 14.0,
                              percent: 0.25,
                              center: Text(
                                "25.0%",
                                style: new TextStyle(fontSize: 12.0),
                              ),
                              // trailing: Icon(Icons.mood),
                              // linearStrokeCap:LinearStrokeCap.roundAll,

                              backgroundColor: Colors.grey,
                              progressColor: Colors.orange,
                            ),
                          ],
                        )
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(8)),
                        //color of container tasks(dark mode change)
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.verified,color: Colors.white,size: 60),
                                Spacer(),
                                Icon(Icons.more_vert,color: Colors.white,size: 30,)
                              ],
                            ),
                            SizedBox(height: 20,),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 9,vertical: 5),
                                child: Text('Valve',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 9,vertical: 5),
                                child: Text('S45458515',style: TextStyle(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.bold),)),
                            LinearPercentIndicator(
                              width: 140.0,
                              lineHeight: 14.0,
                              percent: 0.95,
                              center: Text(
                                "95.0%",
                                style: new TextStyle(fontSize: 12.0),
                              ),
                              // trailing: Icon(Icons.mood),
                              // linearStrokeCap:LinearStrokeCap.roundAll,

                              backgroundColor: Colors.grey,
                              progressColor: Colors.orange,
                            ),
                          ],
                        )
                    ),
      ],
    ),
    )
    ],
    ),)
    ,
    );
    }
}
