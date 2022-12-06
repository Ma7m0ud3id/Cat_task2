import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  static const String routName = 'Detail';

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  List<Color> coler = <Color>[
    Colors.greenAccent,
    Colors.grey,
    Colors.grey,
  ];
  List<DataModel> data = <DataModel>[
    (DataModel(
        'assets/me1.jpg', 'Mahmoud', '5 minit', 'I hope you like my project')),
    (DataModel('assets/me2.jpg', 'khaled', '2 day ago',
        'you and me when donot pass in curcits')),
    (DataModel('assets/me3.jpg', 'khaled', ' 3 manth ago', 'Lord succeed')),
  ];
  Map<String, String> map = {
    'posts': '32',
    'follower': '20M',
    'Subscreb': '100K',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Profile',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25)),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 60, bottom: 10),
              child: Container(
                //padding: EdgeInsets.all(), // Border width
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(65), // Image radius
                    child: Image.asset('assets/me.jpg', fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              'Mahmoud eid',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Center(
            child: Text(
              '@_Mahmoud',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Card(
                    color: Colors.greenAccent,
                    child: new Container(
                        // margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        width: 125.0,
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${map["posts"]}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Text(
                              'posts',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ],
                        ))),
              ),
              Expanded(
                child: Card(
                    color: Colors.grey,
                    child: new Container(
                      // margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        width: 125.0,
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${map["follower"]}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Text(
                              'follower',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ],
                        ))),
              ),
              Expanded(
                child: Card(
                    color: Colors.grey,
                    child: new Container(
                      // margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        width: 125.0,
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${map["Subscreb"]}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Text(
                              'Subscreb',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ],
                        ))),
              ),
            ],
          ),
          //Spacer(),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: coler.length,
          //     scrollDirection: Axis.horizontal,
          //     shrinkWrap: true,
          //     itemBuilder: (BuildContext context, int index) {
          //       return SizedBox(
          //         height: 20,
          //         child: Card(
          //           color: coler[index],
          //           child: new Container(
          //            // margin: EdgeInsets.all(5),
          //             padding: EdgeInsets.all(5),
          //               width: 125.0,
          //               height: 0,
          //               child: index==0?Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   Text('${map["posts"]}',
          //                     style: TextStyle(color: Colors.black,
          //                         fontWeight: FontWeight.bold,
          //                         fontSize: 15),),
          //                    Text('posts',
          //                      style: TextStyle(color: Colors.black,
          //                          fontWeight: FontWeight.bold,
          //                          fontSize: 15),),
          //                 ],
          //               ):index==1?Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   Text('${map["follower"]}',
          //                     style: TextStyle(color: Colors.black,
          //                         fontWeight: FontWeight.bold,
          //                         fontSize: 15),),
          //                   Text('follower',
          //                     style: TextStyle(color: Colors.black,
          //                         fontWeight: FontWeight.bold,
          //                         fontSize: 15),),
          //                 ],
          //               ):index==2?Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   Text('${map["Subscreb"]}',
          //                     style: TextStyle(color: Colors.black,
          //                         fontWeight: FontWeight.bold,
          //                         fontSize: 15),),
          //                   Text('Subscreb',
          //                     style: TextStyle(color: Colors.black,
          //                         fontWeight: FontWeight.bold,
          //                         fontSize: 15),),
          //                 ],
          //               ):Column(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   Text('${map["post"]}',
          //                     style: TextStyle(color: Colors.black,
          //                         fontWeight: FontWeight.bold,
          //                         fontSize: 15),),
          //                   Text('posts',
          //                     style: TextStyle(color: Colors.black,
          //                         fontWeight: FontWeight.bold,
          //                         fontSize: 15),),
          //                 ],
          //               )
          //           ),
          //         ),
          //       );
          //     },
          //
          //   ),
          // ),
          Row(
            children: [
              Text(
                'posts',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Spacer(),
              Text(
                'Sorting',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
            ],
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          child: Container(
                            padding: EdgeInsets.all(5), // Border width
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(20), // Image radius
                                child: Image.asset(data[index].imdge,
                                    fit: BoxFit.cover),
                              ),
                            ),
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
                              data[index].name,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                //Color(0xFF5D9CEC),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(data[index].time,
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black)),
                          ],
                        )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          data[index].discripe,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Spacer(),
                        Icon(Icons.favorite,color: Colors.orange,),
                        Text('35',style: TextStyle(color: Colors.red),),
                        SizedBox(width: 15,),
                        Icon(Icons.comment,color: Colors.white,),
                        Text('12',style: TextStyle(color: Colors.white),),
                        SizedBox(width: 15,),
                        Icon(Icons.share,color: Colors.white,),


                      ],
                    )
                  ],
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}

class DataModel {
  String imdge;
  String name;

  String time;

  String discripe;

  DataModel(this.imdge, this.name, this.time, this.discripe);
}
