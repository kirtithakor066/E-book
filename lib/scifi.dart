import 'package:flutter/material.dart';

import 'geners.dart';
import 'home_page.dart';

class SciFi extends StatefulWidget {
  const SciFi({Key? key}) : super(key: key);

  @override
  State<SciFi> createState() => _SciFiState();
}

class _SciFiState extends State<SciFi> {
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
                      size: 35,
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Geners(),
                      ),
                    ),
                  ),
                  const Text("Sci-Fiction",
                    style: TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white
                    ),),
                  IconButton(
                    icon: const Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 35,
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

                            Container(
                              margin: const EdgeInsets.only(
                                top: 15,
                                bottom: 10,
                              ),
                              width: 160,
                              height: 210,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/scifi1.png"),
                                  fit: BoxFit.cover,

                                ),
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff3c73ff),
                              ),

                            ),

                            Container(
                              margin: const EdgeInsets.only(
                                top: 15,
                                bottom: 10,

                              ),
                              width: 160,
                              height: 210,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff3c73ff),
                              ),



                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 15,
                                bottom: 10,

                              ),
                              width: 160,
                              height: 210,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff3c73ff),
                              ),



                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 15,
                                bottom: 10,

                              ),
                              width: 160,
                              height: 210,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff3c73ff),
                              ),


                            ),
                          ],
                        ),
                        Column(
                          children: [

                            Container(
                              margin: const EdgeInsets.only(
                                top: 15,
                                bottom: 10,

                              ),
                              width: 160,
                              height: 210,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff3c73ff),
                              ),


                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 15,
                                bottom: 10,

                              ),
                              width: 160,
                              height: 210,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff3c73ff),
                              ),


                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 15,
                                bottom: 10,

                              ),
                              width: 160,
                              height: 210,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff3c73ff),
                              ),


                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 15,
                                bottom: 10,

                              ),
                              width: 160,
                              height: 210,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff3c73ff),
                              ),


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
