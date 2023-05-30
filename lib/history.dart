import 'package:flutter/material.dart';
import 'package:travel/detailpage.dart';
import 'package:travel/models/attractions.dart';
class h1 extends StatelessWidget {
  const h1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('History'),
      ),
      body: Container(
        height: double.infinity,
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
        ),
            itemCount: history.length,
            itemBuilder: (context,index){
              return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>detail(
                              img: history[index]['img'],
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
              ),
                    )]);

            }),
      ),
    );
  }
}




