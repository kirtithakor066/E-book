import 'package:animate_do/animate_do.dart';
import 'package:ebook/home_page.dart';
import 'package:ebook/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'glassmorphism.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "images/ebook7.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                const Center(
                  child: Text(
                    'Welcome to\n    E-Book',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                // Build Widget Glassmorphism
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: FadeInLeft(
                    duration: Duration(milliseconds: 1500),
                    child: Glassmorphism(
                      blur: 15,
                      opacity: 0.3,
                      radius: 20,
                      child: Container(
                        height: 320,
                        width: 300,
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            const Text(
                              '"BOOKS ARE THE',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 27.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'MOST LOYAL AND',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'TRUSTED FRIENDS',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'YOU CAN EVER HAVE."',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20,),
                            const Text(
                              'Explore and Learn.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Read the best book here',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.8),
                                fontSize: 16.0,
                              ),
                            ),
                            const Spacer(),
                            Glassmorphism(
                              blur: 20,
                              opacity: 0.2,
                              radius: 50.0,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));

                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 15,
                                    horizontal: 15,
                                  ),
                                  child: const Text(
                                    'Get started now',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}