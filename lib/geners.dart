import 'package:animate_do/animate_do.dart';
import 'package:ebook/comedy.dart';
import 'package:ebook/crime.dart';
import 'package:ebook/food.dart';
import 'package:ebook/historical.dart';
import 'package:ebook/home_page.dart';
import 'package:ebook/lifestyle.dart';
import 'package:ebook/scifi.dart';
import 'package:flutter/material.dart';

import 'biopic.dart';
import 'book_profile.dart';
import 'drama.dart';

class Geners extends StatefulWidget {

  @override
  State<Geners> createState() => _GenersState();
}

class _GenersState extends State<Geners> {
   dynamic email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/login5.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                top: 50,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BooksProfile(),
                      ),
                    ),
                  ),
                  const Text("Geners",
                    style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white
                    ),),
                  IconButton(
                    icon: const Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BooksHome(),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
                child:
                  Container(

                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.spaceAround ,
                            children: [
                              Column(
                                children: [

                                    GestureDetector(
                                      onTap: () async {
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Drama()));
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          top: 15,
                                          bottom: 10,
                                        ),
                                        width: 150,
                                        height: 130,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("images/drama.jpg"),
                                            fit: BoxFit.cover,

                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                          color: const Color(0xff3c73ff),
                                        ),


                                            child: FadeInRight(
                                              duration: Duration(milliseconds: 1500),
                                              delay: Duration(milliseconds: 500),
                                              child: Container(

                                                child: Center(
                                                  child: Text("Drama",style: TextStyle(
                                                      fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white,

                                                  ),),
                                                ),
                                              ),
                                            )),
                                    ),
                                     GestureDetector(
                                       onTap: () async {
                                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SciFi()));
                                       },
                                       child: Container(
                                        margin: const EdgeInsets.only(
                                          top: 15,
                                          bottom: 10,

                                        ),
                                        width: 150,
                                        height: 130,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("images/scifi3.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                          color: const Color(0xff3c73ff),
                                        ),


                                            child: FadeInRight(
                                              duration: Duration(milliseconds: 1500),
                                              delay: Duration(milliseconds: 500),
                                              child: Container(

                                                child: Center(
                                                  child: Text("Sci-Fiction",style: TextStyle(
                                                      fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
                                                  ),),
                                                ),
                                              ),
                                            )),
                                     ),
                                     GestureDetector(
                                       onTap: () async {
                                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Food()));
                                       },
                                       child: Container(
                                        margin: const EdgeInsets.only(
                                          top: 15,
                                          bottom: 10,

                                        ),
                                        width: 150,
                                        height: 130,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("images/food.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                          color: const Color(0xff3c73ff),
                                        ),


                                            child: FadeInRight(
                                              duration: Duration(milliseconds: 1500),
                                              delay: Duration(milliseconds: 500),
                                              child: Container(

                                                child: Center(
                                                  child: Text("Food",style: TextStyle(
                                                      fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
                                                  ),),
                                                ),
                                              ),
                                            )),
                                     ),
                                    GestureDetector(
                                      onTap: () async {
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LifeStyle()));
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          top: 15,
                                          bottom: 10,

                                        ),
                                        width: 150,
                                        height: 130,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("images/lifestyle2.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                          color: const Color(0xff3c73ff),
                                        ),


                                            child: FadeInRight(
                                              duration: Duration(milliseconds: 1500),
                                              delay: Duration(milliseconds: 500),
                                              child: Container(

                                                child: Center(
                                                  child: Text("Lifestyle",style: TextStyle(
                                                      fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
                                                  ),),
                                                ),
                                              ),
                                            )),
                                    ),
                                ],
                              ),
                              Column(
                                children: [

                                     GestureDetector(
                                       onTap: () async {
                                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Crime()));
                                       },
                                       child: Container(
                                        margin: const EdgeInsets.only(
                                          top: 15,
                                          bottom: 10,

                                        ),
                                        width: 150,
                                        height: 130,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("images/crime.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                          color: const Color(0xff3c73ff),
                                        ),


                                            child: FadeInRight(
                                              duration: Duration(milliseconds: 1500),
                                              delay: Duration(milliseconds: 500),
                                              child: Container(

                                                child: Center(
                                                  child: Text("Crime",style: TextStyle(
                                                      fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
                                                  ),),
                                                ),
                                              ),
                                            ),
                                       ),
                                     ),
                                     GestureDetector(
                                       onTap: () async {
                                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BioPic()));
                                       },
                                       child: Container(
                                        margin: const EdgeInsets.only(
                                          top: 15,
                                          bottom: 10,

                                        ),
                                        width: 150,
                                        height: 130,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("images/biopic2.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                          color: const Color(0xff3c73ff),
                                        ),

                                            child: FadeInRight(
                                              duration: Duration(milliseconds: 1500),
                                              delay: Duration(milliseconds: 500),
                                              child: Container(

                                                child: Center(
                                                  child: Text("Biopic",style: TextStyle(
                                                      fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
                                                  ),),
                                                ),
                                              ),
                                            ),
                                       ),
                                     ),
                                     GestureDetector(
                                       onTap: () async {
                                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Historical()));
                                       },
                                       child: Container(
                                        margin: const EdgeInsets.only(
                                          top: 15,
                                          bottom: 10,

                                        ),
                                        width: 150,
                                        height: 130,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("images/historical.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                          color: const Color(0xff3c73ff),
                                        ),

                                            child: FadeInRight(
                                              duration: Duration(milliseconds: 1500),
                                              delay: Duration(milliseconds: 500),
                                              child: Container(

                                                child: Center(
                                                  child: Text("Historical",style: TextStyle(
                                                      fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
                                                  ),),
                                                ),
                                              ),
                                            ),
                                       ),
                                     ),
                                     GestureDetector(
                                       onTap: () async {
                                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Comedy()));
                                       },
                                       child: Container(
                                        margin: const EdgeInsets.only(
                                          top: 15,
                                          bottom: 10,

                                        ),
                                        width: 150,
                                        height: 130,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("images/comedy.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                          color: const Color(0xff3c73ff),
                                        ),


                                            child: FadeInRight(
                                              duration: Duration(milliseconds: 1500),
                                              delay: Duration(milliseconds: 500),
                                              child: Container(

                                                child: Center(
                                                  child: Text("Comedy",style: TextStyle(
                                                      fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white
                                                  ),),
                                                ),
                                              ),
                                            )),
                                     ),
                                ],
                              ),
                            ],
                          ),
                        ),
                    ),
                  ),
              ),

  ],
        ),
      ),
    );
    
  }
}






