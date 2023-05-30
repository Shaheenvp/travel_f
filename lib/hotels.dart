import 'package:flutter/material.dart';
import 'package:travel/detailpage.dart';
import 'package:travel/models/hotelmodels.dart';

class hotel extends StatelessWidget {
  const hotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 235),
            child: Text(
              'Find a place to stay',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            height: 610,
            child: ListView.builder(
                itemCount: hotelmodel.length,
                itemBuilder: (context, index) {
                  var starcount=int.parse(hotelmodel[index]['star']);
                  
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>detail(img: hotelmodel[index]['image'],
                          name: hotelmodel[index]['name'],
                          dis: hotelmodel[index]['dis'],
                          place: hotelmodel[index]['place'])));
                    },
                    child: Card(
                      elevation: 5,
                      child: Container(
                        height: 340,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/${hotelmodel[index]['image']}'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${hotelmodel[index]['name']}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  Text('\$${hotelmodel[index]['rate']}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                                ],
                              ),
                              Text('${hotelmodel[index]['place']}',style: TextStyle(fontSize: 15),),
                              Container(
                                height: 50,
                                child: ListView.builder(
                                  scrollDirection:Axis.horizontal,
                                  itemCount: 5,
                                    itemBuilder: (context,index){
                                  return (index<starcount)? Icon(Icons.star,color: Colors.yellow,):Icon(Icons.star_border);
                                }),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
