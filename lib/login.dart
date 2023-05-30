import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://www.worldatlas.com/r/w1200/upload/1c/2b/66/shutterstock-149198729-2.jpg'),
                fit: BoxFit.cover,

                // image: Image(image: NetworkImage('https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=612x612&w=0&k=20&c=A63koPKaCyIwQWOTFBRWXj_PwCrR4cEoOw2S9Q7yVl8='))

            ),

            ),
            child: Column(
              children: [
                SizedBox(height: 35,),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('Email'),
                      suffixIcon: Icon(CupertinoIcons.at,size: 15 ,),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text('Password'
                      ),
                      suffixIcon: Icon(CupertinoIcons.eye,size: 15,)
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                    width: 300,
                    color: Colors.white,
                    child: OutlinedButton(onPressed: (){}, child: Text('Login',style: TextStyle(color: Colors.black),))),
                SizedBox(height: 25,),
                TextButton(onPressed: (){}, child: Text('Forget Password',style: TextStyle(color: Colors.black),)),
                SizedBox(height: 150,),
                Container(
                    width: 300,
                    color: Colors.white,
                    child: OutlinedButton(onPressed: (){}, child: Text('Sign up with google',style: TextStyle(color: Colors.black54),))),
                SizedBox(height: 20,),
                Container(
                    width: 300,
                    color: Colors.blue,
                    child: OutlinedButton(onPressed: (){}, child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.facebook,color: Colors.white,),
                        SizedBox(width: 15,),
                        Text('Sign up with facebook',style: TextStyle(color: Colors.white),)

              ],
                    ),
                      ),
                )  ],
            ),

            ),



        ],
      ),
    );
  }
}
