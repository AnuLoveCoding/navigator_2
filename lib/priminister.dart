import 'dart:math';

import 'package:flutter/material.dart';
import 'package:navigator_2/modelclass.dart';

class pminister extends StatelessWidget {

  final int p;

  pminister({required this.p});

  List<cls> mini = [
    cls(name: 'Narendar Modi', imagee: '../images/modi.jpg'),
    cls(name: 'Atal Bhiari vajpee', imagee: '../images/atal.jpg'),
    cls(name: 'Lal Bhadur Shsatri', imagee: '../images/lal.jpg')

  ];

  List<cls> doc = [
    cls(name: 'vardhan', imagee: '../images/vardhan.jpg'),
    cls(name: 'Mansukh', imagee: '../images/mansukh.jpg'),
  ];
  
  List<cls> Actor = [
    cls(name: "Salman Khan", imagee: '../images/salman.jpg'),
    cls(name: 'Akshay Kumar', imagee: '../images/akshay.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Personalities'),
        centerTitle: true,
      ),

      body: Column(
        children: [
            if(p==0)...[
                Expanded(
                    child: Container(

                      child: ListView.builder(
                          itemCount: mini.length,
                          itemBuilder: (BuildContext context, int pos){
                            return Column(
                              children: [
                                Image(image: AssetImage(mini[pos].imagee),width: 200.0, height: 100.0,),
                                Text(mini[pos].name),
                                SizedBox(height: 10.0,)
                              ],
                            );
                        }
                      )
                )
              ),
              SizedBox(height: 10.0,)
            ]else if(p == 1)...[
              Expanded(
                  child: Container(
                    child: ListView.builder(
                        itemCount: doc.length,
                        itemBuilder: (BuildContext context, int pos){
                      return Column(
                        children: [
                          Image(image: AssetImage(doc[pos].imagee),width: 200.0, height: 100.0,),
                          Text(doc[pos].name),
                          SizedBox(height: 10.0,)
                        ],
                      );
                      }
                    ),
                  )
              ),
              SizedBox(height: 10.0,),
            ]else if(p == 2)...[
              Expanded(child: Container(
                        child: ListView.builder(
                        itemCount: Actor.length,
                        itemBuilder: (BuildContext context, int pos){
                          return Column(
                            children: [
                              Image(image: AssetImage(Actor[pos].imagee),width: 200.0,height: 100.0,),
                              Text(Actor[pos].name),
                              SizedBox(height: 10.0,)
                            ],
                          );
                      }
                  ),
                ),
              ),
            ],
          SizedBox(height: 10.0,)
        ],
      ),
    );
  }
}
