import 'package:animate_do/animate_do.dart';
import 'package:ebook/auth_controller.dart';
import 'package:ebook/registration_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
                        left: 120,

                        child: FadeInRight(
                          duration: Duration(milliseconds: 1500),
                          delay: Duration(milliseconds: 500),
                          child: Container(

                            child: Center(
                              child: Text("Login",style: TextStyle(
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
                      child: Column(
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
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 170),
                      child: Text("Forgot Password?",style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12
                      ),),
                    ),
                    SizedBox(height: 20,),

                    GestureDetector(
                      onTap: (){
                          AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
                      },
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("images/login5.jpg"),
                                fit: BoxFit.cover
                            )

                        ),
                        child: Center(
                          child: Text("Login",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      child: const Center(
                        child: Text("SignIn using..",style: TextStyle(fontSize: 15,color: Colors.grey),)
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0,2),
                                    blurRadius: 6.0,
                                  )
                                ],
                                image: DecorationImage(
                                  image: AssetImage("images/google.png")
                                )
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(0,2),
                                      blurRadius: 6.0,
                                    )
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage("images/facebook.png")
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Not a member?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const RegistrationPage()));
                          },
                            child: const Text(" Register Now",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),))

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
