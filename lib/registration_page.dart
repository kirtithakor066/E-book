import 'package:animate_do/animate_do.dart';
import 'package:ebook/auth_controller.dart';
import 'package:ebook/home_page.dart';
import 'package:ebook/login_page.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();


    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 300,

                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/login5.jpg"),
                        fit: BoxFit.cover
                    )
                ),
                child: Stack(
                  children: [
                    Positioned(
                        height: 150,
                        width: 350,
                        right: 10,
                        top: 140,

                        child: FadeInLeft(
                          duration: Duration(milliseconds: 1500),
                          delay: Duration(milliseconds: 1000),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/book.png")
                                ),
                                borderRadius: BorderRadius.circular(30)
                            ),

                          ),
                        )),
                    Positioned(
                        bottom: 170,
                        left: 100,

                        child: FadeInRight(
                          duration: Duration(milliseconds: 1500),
                          delay: Duration(milliseconds: 500),
                          child: Container(

                            child: Center(
                              child: Text("Sign Up",style: TextStyle(
                                  fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white
                              ),),
                            ),
                          ),
                        )),

                  ],
                ),
              ),
              Padding(
                padding:EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, .5),
                              blurRadius: 20.0,
                              offset: Offset(0,10),
                            )
                          ]
                      ),
                      child: SingleChildScrollView(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey))
                              ),
                              child: TextField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Email or Phone",
                                  hintStyle: TextStyle(color: Colors.black38),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),

                              child: TextField(
                                controller: passwordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.black38),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),

                    GestureDetector(
                      onTap: (){
                          AuthController.instance.register(emailController.text.trim(),passwordController.text.trim());
                      },
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("images/login5.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                        child: const Center(
                          child: Text("Submit",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white
                          ),),
                        ),
                      ),
                    ),




                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already a member?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                        GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));

                            },
                            child: const Text(" Login",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),))

                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
