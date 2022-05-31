import 'package:flutter/material.dart';
import 'package:foody/login.dart';
import 'package:foody/signup.dart';
import 'package:foody/utils/utils_color.dart';
import 'package:foody/Sign_in.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(
      primaryColor: Colors.white,
      accentColor: Colors.lightBlueAccent,
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                hexStringToColor("#FFFAFAFA"),
                hexStringToColor("#FFE0F7FA"),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height/2.4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/dman6.png")
                        )
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    "Quick Food Delivery",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
              SizedBox(height: 10.0,),
                  Text("Loved the class! Such beautiful land and collective impact infrastructure social entreprenure ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,

                    ),)
                ],
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 54,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                      },
                      color: Color(0xFFE01579B),
                      // defining the shape
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(
                        "SIGN IN WITH GOOGLE",
                        style: TextStyle(
                          color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15
                        ),
                      ),
                    ),
                    SizedBox(height:20),
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 54,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInPage()));
                      },
                      color: Color(0xFFE65100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15
                        ),
                      ),
                    )
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