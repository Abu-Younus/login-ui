import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade800,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: 380,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade800,
                          borderRadius: BorderRadius.only(
                              bottomLeft:Radius.circular(60),
                              bottomRight: Radius.circular(60)
                          )
                      ),
                      child: Text('Pondit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 64, horizontal: 32),
                      padding: EdgeInsets.symmetric(vertical: 32),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 3,
                            ),
                          ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Log In',style: TextStyle(
                              fontSize: 24,
                              color: Colors.blue.shade800,
                              fontWeight: FontWeight.bold
                          ),),
                          SizedBox(
                            height: 24,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email,color: Colors.blue.shade800,),
                                border: UnderlineInputBorder(),
                                hintText: 'E-mail',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: TextField(

                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock,color: Colors.blue.shade800,),
                                border: UnderlineInputBorder(),
                                hintText: 'Password',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                                children: [
                                  Text('Forgot Password?',style: TextStyle(
                                      fontSize: 14
                                  ),),
                                ]
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          SizedBox(
                              width: 170,
                              height: 40,
                              child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.blue.shade800),
                                ),
                                onPressed: () { },
                                child: Text('Login',style: TextStyle(
                                    color: Colors.white
                                ),),
                              )
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text('- OR -',style: TextStyle(
                              fontSize: 12
                          ),),
                          SizedBox(
                            height: 24,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blue.shade800,
                            child: Text('G',style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Don't have an Account?",style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                    ),),
                    SizedBox(
                      width: 4,
                    ),
                    Text('Sign Up',style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue.shade800
                    ),)
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
