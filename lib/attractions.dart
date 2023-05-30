import 'dart:html';

import 'package:flutter/material.dart';
import 'package:travel/detailpage.dart';
import 'package:travel/history.dart';
import 'package:travel/models/attractions.dart';
import 'package:travel/naturecategory.dart';
import 'package:travel/religion.dart';
class attractions extends StatelessWidget {
  const attractions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Nature'),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Nature()));
                  }, icon: Icon(Icons.arrow_forward))
                ],
              ),
            ),
            Container(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal  ,
                  itemCount: nature1.length,
                  itemBuilder: (context,index){
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>detail(img: nature1[index]['img'],
            name: nature1[index]['name'],
            dis: nature1[index]['dis'],
            place: nature1[index]['place'])));
      },
      child: Card(
      child: Container(

      height: 150,
      width: 150,
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
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
      ),
      ),
      ),
    );
    ;
    }),
            ),

                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Card(
                //     child: Container(
                //
                //       height: 150,
                //       width: 150,
                //       child : Column(
                //         crossAxisAlignment: CrossAxisAlignment.start ,
                //         children: [
                //           Container(
                //             height: 90,
                //             width: 150,
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(20),
                //               image: DecorationImage(image: NetworkImage(''
                //                   'https://media.istockphoto.com/id/1288385045/photo/snowcapped-k2-peak.jpg?s=612x612&w=0&k=20&c=sfA4jU8kXKZZqQiy0pHlQ4CeDR0DxCxXhtuTDEW81oo='),
                //                 fit: BoxFit.cover,
                //               ),
                //             ),
                //           ),
                //           SizedBox(height: 10,),
                //           Text('Lorem',style: TextStyle(fontWeight: FontWeight.bold),),
                //           SizedBox(height: 5,),
                //           Text('Srilanka'),
                //
                //         ],
                //
                //
                //       ),
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(20),
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                // ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('History'),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>h1()));
                  }, icon: Icon(Icons.arrow_forward))
                ],
              ),
            ),
            Container(
              height: 180,
              child: ListView.builder(
                itemCount: history.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>detail(img: history[index]['img'],
                        name: history[index]['name'],
                        dis: history[index]['dis'],
                        place: history[index]['place'])));
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
                              image: DecorationImage(image: AssetImage('assets/${history[index]['img']}'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text('${history[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text('${history[index]['place']}'),

                        ],


                      ),
                    ),
                  ),
                );
              }
            ),
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Religious'),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>reli()));
                  }, icon: Icon(Icons.arrow_forward))
                ],
              ),
            ),
            Container(
              height: 180,
              child: ListView.builder(
                itemCount: rel.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                return  GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>detail(img: rel[index]['img'],
                        name: rel[index]['name'],
                        dis: rel[index]['dis'],
                        place: rel[index]['place'])));
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
                );
              },
            )
            ),


              ],
        ),





        ),

    );
  }
}
