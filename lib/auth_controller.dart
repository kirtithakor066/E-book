import 'package:ebook/home_page.dart';
import 'package:ebook/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
      static AuthController instance = Get.find();
      late Rx<User?> _user;

      FirebaseAuth auth = FirebaseAuth.instance;

      @override
      void onReady(){
            super.onReady();
            _user = Rx<User?>(auth.currentUser);
            _user.bindStream(auth.userChanges());

            ever(_user,_initialScreen);
      }

      _initialScreen(User? user){
            if(user==null){
                  print('Login page');
                  Get.offAll(()=>LoginPage());
            }else{
                  Get.offAll(()=>BooksHome());
            }
      }


      void register(String email,password)async{
            try{
               await auth.createUserWithEmailAndPassword(email: email, password: password);
            }catch(e){
                  Get.snackbar("About User", "User Message",
                  snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.redAccent,
                        titleText: Text(
                              "Account Creation Failed",
                              style: TextStyle(
                                    color: Colors.white,
                              ),
                        ),
                        messageText: Text(
                              e.toString(),
                              style: TextStyle(
                                    color: Colors.white
                              ),
                        )
                  );
            }
      }
      void login(String email,password)async {
            try{
                  await auth.signInWithEmailAndPassword(email: email, password: password);
            }catch(e){
                  Get.snackbar("About Login", "Login Message",
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.redAccent,
                      titleText: Text(
                            "Login Failed",
                            style: TextStyle(
                                  color: Colors.white,
                            ),
                      ),
                      messageText: Text(
                            e.toString(),
                            style: TextStyle(
                                color: Colors.white
                            ),
                      )
                  );
            }
      }
      void logout()async{
         await auth.signOut();
      }


}