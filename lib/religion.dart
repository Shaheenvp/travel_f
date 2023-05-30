import 'package:flutter/material.dart';
import 'package:travel/detailpage.dart';
import 'package:travel/models/attractions.dart';
class reli extends StatelessWidget {
  const reli({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Religious'),
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: rel.length,
          itemBuilder: (context,index){
        return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>detail(
              img: rel[index]['img'],
              name: rel[index]['name'],
              dis: rel[index]['dis'],
              place: rel[index]['place'],
            )));
          },
          child: Card(
          child: Container(

          height: 150,
          width: 150,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          ),
          child : Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
          Container(
          height: 90,
          width: 150,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage('assets/${rel[index]['img']}'),
    fit: BoxFit.cover,
    ),
    ),
    ),
    SizedBox(height: 10,),
    Text('${rel[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold),),
    SizedBox(height: 5,),
    Text('${rel[index]['place']}'),

    ],


    ),
    ),
    ),
        ),
    )]);
    }
    ));
  }
}
