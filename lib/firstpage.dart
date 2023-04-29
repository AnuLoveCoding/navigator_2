import 'package:flutter/material.dart';
import 'package:navigator_2/modelclass.dart';
import 'package:navigator_2/priminister.dart';

class minister extends StatelessWidget {

 // List<String> cls = ['Prime Minister','Doctors', 'Actor'];
 // List<String> imag = ['../images/modi.jpg','../images/vardhan.jpg','../images/salman.jpg'];


  List<ModelClass>cls=[ModelClass(name: 'Prime Minister', imagee: '../images/modi.jpg'),
    ModelClass(name: 'Doctors', imagee: '../images/vardhan.jpg'),
    ModelClass(name: 'Actor', imagee: '../images/salman.jpg'),

  ];

  static String Routname='/pminister';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prime Minister'),
        centerTitle: true,
      ),

      body: Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        alignment: Alignment.center,

        child: ListView.builder(
            itemCount: cls.length,
            itemBuilder: (BuildContext context, int pos){
          return GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, Routname,
                  arguments: {'p':pos.toString(),
                    'title':cls[pos].name}
              );
              /*Navigator.push(context, MaterialPageRoute(builder: (context){
                return pminister(p: pos,)  ;
              }));*/
            },
              child: Column(
                children: [
                  Image(image: AssetImage(cls[pos].imagee),height: 70.0,),
                  Text(cls[pos].name,style: TextStyle(color: Colors.deepOrange[200], shadows: [BoxShadow(offset: Offset(1, 2),color: Colors.lime)],),),
                  SizedBox(height: 20.0),
                ],
              ),
            );
        }),
      )
    );
  }
}
