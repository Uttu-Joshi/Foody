import 'package:flutter/material.dart';
import 'package:foody/foody2.dart';
import 'package:foody/signup.dart';
import 'utils/utils_color.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                hexStringToColor("#FFFAFAFA"),
                hexStringToColor("#FFE0F7FA"),
              ],begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100,),
                Text("SIGN IN", style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 8,),
                Text("Complete this step for best adjustment",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),),
               SizedBox(height: 20,),
                Container(
                  height: 360,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 30,),
                      Container(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Your Email',

                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        width: 300,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(20, 30, 40, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Forgot Password?",
                          style: TextStyle(fontWeight: FontWeight.w400),),

                        ],
                      ),),
                      SizedBox(height: 30,),
                      MaterialButton(
                        minWidth: 330,
                        height: 54,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> FoodyMain()));
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

                ),
                SizedBox(height: 50,),
                GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFE01579B),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "SIGN IN WITH GOOGLE", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Align(
                 alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("I don't have an account ? ",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));
                        },
                        child: Text("Sign Up",
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w600,
                        ),),
                      ),
                    ],
                  ),
                )
              ]


            ),
          ),
        ),
      ),
    );
  }
}
