import 'package:flutter/material.dart';
import 'package:travel/detailpage.dart';
import 'package:travel/models/attractions.dart';
class Nature extends StatelessWidget {
  const Nature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Nature'),
      ),
      body: Container(
        height: double.infinity,
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
            itemCount: nature1.length,
            itemBuilder: (context,index){
          return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>detail(
                  img: nature1[index]['img'],
                  name: nature1[index]['name'],
                  dis: nature1[index]['dis'],
                  place: nature1[index]['place'])));
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
            image: DecorationImage(image: AssetImage('assets/${nature1[index]['img']}'),
            fit: BoxFit.cover,
            ),
            ),
            ),
            SizedBox(height: 10,),
            Text('${nature1[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text('${nature1[index]['place']}'),

            ],


            ),
            ),
            ),
          ),
          )]);

        }),
      ),
    );
  }
}
