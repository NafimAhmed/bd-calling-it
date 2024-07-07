




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'read_json_file.dart';

class HomePage extends StatefulWidget{

  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var  myList1;
  var  myList2;



@override
  void initState() {

  ReadJsonFile.readJsonData(path: "assets/sample_json.json").then((value) {
    setState(() {
      myList1=value["input-1"];
      myList2=value["input-2"];
    });
  });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {





    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Bd Calling'),
      ),
      body: Column(
        children: [




          // Text('${myList}'),


          Text('Output-1'),

          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('${myList1[0]['0']['title']}'),

              Text('${myList1[0]['1']['title']}'),
              Text(''),

              Text('${myList1[0]['3']['title']}'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('${myList1[1][0]['title']}'),

              Text('${myList1[1][1]['title']}'),
              Text('${myList1[1][2]['title']}'),

              Text('${myList1[1][3]['title']}'),
            ],
          ),





          // GridView.builder(
          //   shrinkWrap: true,
          //   itemCount: myList1.length,
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount:  4),
          //   itemBuilder: (BuildContext context, int index) {
          //     return Text('${index}');
          //   },
          // ),

          Text('Output-2'),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('${myList2[0]['0']['title']}'),

              Text('${myList2[0]['1']['title']}'),
              Text(''),

              Text('${myList2[0]['3']['title']}'),
            ],
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('${myList2[1]['0']['title']}'),

              Text('${myList2[1]['2']['title']}'),
              Text(''),

              Text('${myList2[1]['3']['title']}'),
            ],
          ),



          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('${myList2[2][0]['title']}'),

              Text('${myList2[2][1]['title']}'),
              Text('${myList2[2][2]['title']}'),
              Text('${myList2[2][3]['title']}'),


            ],
          ),



          // GridView.builder(
          //   shrinkWrap: true,
          //   itemCount: myList2.length,
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount:  4),
          //   itemBuilder: (BuildContext context, int index) {
          //     return Text('${index}');
          //   },
          // ),

        ],
      ),
    );
  }
}