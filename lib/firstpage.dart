import 'package:flutter/material.dart';
import 'package:navigator_2/modelclass.dart';

class minister extends StatelessWidget {

  List<String> cls = ['Prime Minister','Doctors', 'Actor', 'Actress', 'Cricket'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prime Minister'),
        centerTitle: true,
      ),

      body: Container(
        child: ListView.builder(
            itemCount: cls.length,
            itemBuilder: (BuildContext context, int pos){
          return GestureDetector(

            onTap: (){
              /*Navigator.push(context, MaterialPageRoute(builder: (context){
                return  ;
              }));*/
            },

            child: Column(
              children: [
                Text(cls[pos]),
              ],
            ),
          );
        }),
      )
    );
  }
}
