import 'package:flutter/material.dart';
class detail extends StatefulWidget {

  detail({Key? key,required this.img,required this.name,required this.dis,required this.place}) : super(key: key);
  var img,name,dis,place;

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  var isSelected=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration:  BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/${widget.img}'),fit: BoxFit.cover,),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)))
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.name,style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              IconButton(onPressed: (){
                setState(() {
                  isSelected=!isSelected;
                });
              }, icon:(isSelected)? Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite_border))
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.place),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.dis),
            )
          ],),
      ),
    );
  }
}
