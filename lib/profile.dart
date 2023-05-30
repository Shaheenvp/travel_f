import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/models/attractions.dart';
import 'package:travel/models/profilemodel.dart';
class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/ronocover.png'),
                      fit: BoxFit.cover),)
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 120,left: 90),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,

                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/rono.png'),
                          radius: 94,
                        ),
                        radius: 100,
                      ),
                    ),
                ],
              ),
               SizedBox(height: 5,),
               Text('Cristiano Ronaldo',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              SizedBox(height: 3,),
              Text('cristianoronaldo7@gmail.com',),
              SizedBox(height: 10,),
              Wrap(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                  IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.photo)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.people_outline)),
                  SizedBox(height: 10,),



                ],
              ),

              Container(

                height: 150,
                child: ListView.builder(
                  itemCount: promod.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ( context,  index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('${promod[index]['img']}'),
                            radius: 40,
                          ),
                          Text('${promod[index]['name']}'),
                        ],
                      ),
                    );
                  },

                ),
              ),

    Text(
    'My Favourite',
    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    ),
    Container(
    height: 300,
    width: double.infinity,
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: nature1.length,
    itemBuilder: (context, index) {
      return Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            children: [
              Container(
                  width: 250,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            '${nature1[index]['img']}',
                          ),
                      )
                  ),
                  child: Stack(children: [
                    Opacity(
                        opacity: 0.5,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 30,
                            width: 300,
                            color: Colors.black,
                          ),
                        )),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${nature1[index]['name']}',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 22),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ),
                  ]
                  ),
          ),



            ],
          )

      );




    })
    )
    ]
          ),
        ),
      ),

    );
  }
}
