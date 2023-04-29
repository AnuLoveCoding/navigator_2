import 'package:flutter/material.dart';
import 'package:navigator_2/modelclass.dart';
import 'package:navigator_2/priminister.dart';

class minister extends StatelessWidget {

  List<String> cls = ['Prime Minister','Doctors', 'Actor'];
  List<String> imag = ['../images/modi.jpg','../images/vardhan.jpg','../images/salman.jpg'];

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
            itemCount: imag.length,
            itemBuilder: (BuildContext context, int pos){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return pminister(p: pos,)  ;
              }));
            },
              child: Column(
                children: [
                  Image(image: AssetImage(imag[pos]),height: 70.0,),
                  Text(cls[pos],style: TextStyle(color: Colors.deepOrange[200], shadows: [BoxShadow(offset: Offset(1, 2),color: Colors.lime)],),),
                  SizedBox(height: 20.0),
                ],
              ),
            );
        }),
      )
    );
  }
}
