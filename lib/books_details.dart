

import 'package:ebook/read_book.dart';
import 'package:ebook/uploadpdf.dart';
import 'package:ebook/view_pdf.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'book_data.dart';
import 'book_model.dart';
import 'dart:io';



class BooksDetails extends StatelessWidget {
  final int index;
  final String section;

  static Future<File?> loadFirebase(String url) async {
    try {
      final refPDF = FirebaseStorage.instance.ref().child(url);
      final bytes = await refPDF.getData();

      return _storeFile(url, bytes as List<int>);
    } catch (e) {
      return null;
    }
  }

  static Future<File> _storeFile(String url, List<int> bytes) async {
    final filename = basename(url);
    final dir = await getApplicationDocumentsDirectory();

    final file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }


  BooksDetails({required this.index, required this.section});
  @override
  Widget build(BuildContext context) {
    List<Book> bookList = [];
    if (section == "Trending") {
      bookList = findBook;
    } else if (section == "Continue Reading") {
      bookList = recentBooks;
    }else if (section == "Discover More") {
      bookList = allBooks;
    }


    return Scaffold(
      backgroundColor: Color(0xfffff8ee),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SafeArea(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 35,
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                              size: 35,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 30,
                      ),
                      height: MediaQuery.of(context).size.height * 0.32,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 25,
                                  offset: Offset(8, 8),
                                  spreadRadius: 3,
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 25,
                                  offset: Offset(-8, -8),
                                  spreadRadius: 3,
                                )
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                // "assets/images/0.jfif",
                                bookList[index].coverImage,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: new LinearGradient(
                                colors: [
                                  Colors.black.withOpacity(0.3),
                                  Colors.transparent,
                                  Colors.black.withOpacity(0.3),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      // "Conjure Women",
                      bookList[index].name,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      //"By Afia Atakora",
                      "By ${bookList[index].name}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SmoothStarRating(
                          rating: 3,
                          // bookList[index].rating

                          size: 25,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          defaultIconData: Icons.star_border,
                          starCount: 5,
                          allowHalfRating: true,
                          spacing: 2.0,

                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "4.0",
                          // bookList[index].rating.toString(),
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(24),
                      height: 8,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 40,
                            right: 20,
                          ),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: new LinearGradient(
                    colors: [
                      Color(0xfffff8ee).withOpacity(0.1),
                      Colors.white.withOpacity(0.3),
                      Color(0xfffff8ee).withOpacity(0.7),
                      Color(0xfffff8ee).withOpacity(0.8),
                      Color(0xfffff8ee),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Container(
                        width: 150,
                        height: 60,
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffc44536),
                        ),
                        child: TextButton(
                          onPressed: () async {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ViewBook()));
                            // final url = 'sample.pdf';
                            // final file = await ViewBook.loadFirebase(url);
                            //
                            // if(file == null)return;
                            // openPDF(context, file);

                          },

                          child: Text(
                            "READ",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),

    );

  }
  // void openPDF(BuildContext context, file) => Navigator.of(context).push(
  //   MaterialPageRoute(builder: (context) => ViewBook()),
  // );

}
