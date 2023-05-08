
import 'dart:io';
import 'package:ebook/auth_controller.dart';
import 'package:ebook/language.dart';
import 'package:ebook/uploadpdf.dart';
import 'package:ebook/user_profile.dart';
import 'package:ebook/user_setting.dart';
import 'package:flutter/material.dart';

import 'geners.dart';
import 'home_page.dart';

class BooksProfile extends StatelessWidget {

  BooksProfile({Key? key, }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(

          child: ListView(
            padding: EdgeInsets.zero,
            children: [

                Container(
                        height: 100,
                        width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/login5.jpg"),
                        fit: BoxFit.cover
                      ),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40,left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                              builder: (context) => BooksHome(),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),

                        const Text("Go Back",
                          style: TextStyle(
                              fontWeight:FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white
                          ),),

                      ],
                    ),
                  ),

                ),

              SizedBox(height: 20,),
              ListTile(
                leading: Icon(Icons.download_for_offline_outlined,size: 25,),
                title: Text('Downloads',style: TextStyle(fontSize: 20),),
                onTap: (){

                },
              ),
              SizedBox(height: 10,),
              ListTile(
                leading: Icon(Icons.book_outlined,size: 25,),
                title: Text('Publish Your Book',style: TextStyle(fontSize: 20),),
                onTap: () async {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UploadPdf()));
                },
              ),
              SizedBox(height: 10,),


              ListTile(
                leading: Icon(Icons.favorite,size: 25,),
                title: Text('Favorite',style: TextStyle(fontSize: 20),),
                onTap: (){

                },
              ),
              SizedBox(height: 10,),

              ListTile(
                leading: Icon(Icons.language,size: 25,),
                title: Text('Languages',style: TextStyle(fontSize: 20),),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Language()));

                },
              ),
              SizedBox(height: 10,),

              ListTile(
                leading: Icon(Icons.grain_sharp,size: 25,),
                title: Text('Geners',style: TextStyle(fontSize: 20),),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Geners()));
                },
              ),
              SizedBox(height: 10,),

              ListTile(
                leading: Icon(Icons.settings,size: 25,),
                title: Text('Preferences',style: TextStyle(fontSize: 20),),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UserSettingsScreen()));
                },
              ),
              SizedBox(height: 10,),

              ListTile(
                leading: Icon(Icons.help,size: 25,),
                title: Text('Help',style: TextStyle(fontSize: 20),),
                onTap: (){

                },
              ),
              SizedBox(height: 10,),

              ListTile(
                leading: Icon(Icons.logout,size: 25,),
                title: Text('Logout',style: TextStyle(fontSize: 20),),
                onTap: (){
                      AuthController.instance.logout();
                },
              ),
              SizedBox(height: 10,),

            ],
          ),
    );
  }
}

final kTitleStyle = TextStyle(
  fontSize: 20,
  color: Colors.grey,
  fontWeight: FontWeight.w700,
);

final kSubtitleStyle = TextStyle(
  fontSize: 26,
  color: Colors.black,
  fontWeight: FontWeight.w700,
);