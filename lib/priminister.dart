import 'dart:math';

import 'package:flutter/material.dart';
import 'package:navigator_2/modelclass.dart';

class pminister extends StatelessWidget {
/*
  final int p;

  pminister({required this.p});*/

  List<ModelClass> mini = [
    ModelClass(name: 'Narendar Modi', imagee: '../images/modi.jpg'),
    ModelClass(name: 'Atal Bhiari vajpee', imagee: '../images/atal.jpg'),
    ModelClass(name: 'Lal Bhadur Shsatri', imagee: '../images/lal.jpg')

  ];

  List<ModelClass> doc = [
    ModelClass(name: 'vardhan', imagee: '../images/vardhan.jpg'),
    ModelClass(name: 'Mansukh', imagee: '../images/mansukh.jpg'),
  ];
  
  List<ModelClass> Actor = [
    ModelClass(name: "Salman Khan", imagee: '../images/salman.jpg'),
    ModelClass(name: 'Akshay Kumar', imagee: '../images/akshay.jpg'),
  ];

  List<ModelClass> Actress = [
    ModelClass(name: 'Priyanka Chopra', imagee: '../images/priyanka.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    final routeArgs1 =
    ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    String? p = routeArgs1['p'];
    String? name = routeArgs1['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text(name!),
        centerTitle: true,
      ),

      body: Column(
        children: [
            if(p=="0")...[
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
            ]else if(p == "1")...[
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
            ]else if(p == "2")...[
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
              SizedBox(height: 10.0,),
            ]else if(p == 3)...[
              Displaydata('../images/priyanka.jpg', 'Priyanka Chopra', context),
              SizedBox(height: 10.0,)
            ],
        ],
      ),
    );
  }

  Widget Displaydata(String url, String naam , BuildContext context){
    return  Expanded(
      child: Container(
        child: ListView.builder(
            itemCount: Actor.length,
            itemBuilder: (BuildContext context, int pos){
              return Column(
                children: [
                  Image(image: AssetImage(url),width: 200.0,height: 100.0,),
                  Text(naam),
                  SizedBox(height: 10.0,),
                ],
              );
            }
        ),
      ),
    );
  }

}
