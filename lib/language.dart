import 'package:animate_do/animate_do.dart';
import 'package:ebook/book_profile.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
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
                top: 40,
                bottom: 10,
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
                  const Text("Languages",
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
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceAround ,
                      children: [
                        Column(
                          children: [

                            Container(
                              margin: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/lang4.jpg"),
                                  fit: BoxFit.cover,

                                ),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xff000000),
                              ),
                                child: FadeInRight(
                                  duration: Duration(milliseconds: 1500),
                                  delay: Duration(milliseconds: 500),
                                  child: Container(

                                    child: Center(
                                      child: Text("English",style: TextStyle(
                                        fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white,

                                      ),),
                                    ),
                                  ),
                                )

                            ),

                            Container(
                              margin: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,

                              ),
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/lang4.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xff000000),
                              ),
                                child: FadeInRight(
                                  duration: Duration(milliseconds: 1500),
                                  delay: Duration(milliseconds: 500),
                                  child: Container(

                                    child: Center(
                                      child: Text("Hindi",style: TextStyle(
                                        fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white,

                                      ),),
                                    ),
                                  ),
                                )


                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,

                              ),
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/lang4.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xff000000),
                              ),
                                child: FadeInRight(
                                  duration: Duration(milliseconds: 1500),
                                  delay: Duration(milliseconds: 500),
                                  child: Container(

                                    child: Center(
                                      child: Text("Gujarati",style: TextStyle(
                                        fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white,

                                      ),),
                                    ),
                                  ),
                                )


                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,

                              ),
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/lang4.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xff000000),
                              ),
                                child: FadeInRight(
                                  duration: Duration(milliseconds: 1500),
                                  delay: Duration(milliseconds: 500),
                                  child: Container(

                                    child: Center(
                                      child: Text("Marathi",style: TextStyle(
                                        fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white,

                                      ),),
                                    ),
                                  ),
                                )

                            ),
                            Container(
                                margin: const EdgeInsets.only(
                                  top: 5,
                                  bottom: 5,

                                ),
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/lang4.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xff000000),
                                ),

                                child: FadeInRight(
                                  duration: Duration(milliseconds: 1500),
                                  delay: Duration(milliseconds: 500),
                                  child: Container(

                                    child: Center(
                                      child: Text("Urdu",style: TextStyle(
                                        fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white,

                                      ),),
                                    ),
                                  ),
                                )
                            ),
                          ],
                        ),
                        Column(
                          children: [

                            Container(
                              margin: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,

                              ),
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/lang4.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xff000000),
                              ),
                                child: FadeInRight(
                                  duration: Duration(milliseconds: 1500),
                                  delay: Duration(milliseconds: 500),
                                  child: Container(

                                    child: Center(
                                      child: Text("Tamil",style: TextStyle(
                                        fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white,

                                      ),),
                                    ),
                                  ),
                                )

                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,

                              ),
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/lang4.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xff000000),
                              ),
                                child: FadeInRight(
                                  duration: Duration(milliseconds: 1500),
                                  delay: Duration(milliseconds: 500),
                                  child: Container(

                                    child: Center(
                                      child: Text("Telugu",style: TextStyle(
                                        fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white,

                                      ),),
                                    ),
                                  ),
                                )

                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 5,
                                bottom:5,

                              ),
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/lang4.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xff000000),
                              ),
                                child: FadeInRight(
                                  duration: Duration(milliseconds: 1500),
                                  delay: Duration(milliseconds: 500),
                                  child: Container(

                                    child: Center(
                                      child: Text("Bangali",style: TextStyle(
                                        fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white,

                                      ),),
                                    ),
                                  ),
                                )

                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,

                              ),
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/lang4.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xff000000),
                              ),

                                child: FadeInRight(
                                  duration: Duration(milliseconds: 1500),
                                  delay: Duration(milliseconds: 500),
                                  child: Container(

                                    child: Center(
                                      child: Text("Malyalam",style: TextStyle(
                                        fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white,

                                      ),),
                                    ),
                                  ),
                                )
                            ),
                            Container(
                                margin: const EdgeInsets.only(
                                  top: 5,
                                  bottom: 5,

                                ),
                                width: 150,
                                height: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/lang4.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xff000000),
                                ),

                                child: FadeInRight(
                                  duration: Duration(milliseconds: 1500),
                                  delay: Duration(milliseconds: 500),
                                  child: Container(

                                    child: Center(
                                      child: Text("Kannada",style: TextStyle(
                                        fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white,

                                      ),),
                                    ),
                                  ),
                                )
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
