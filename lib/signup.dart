import 'package:flutter/material.dart';
import 'package:foody/Sign_in.dart';
import 'package:foody/utils/utils_color.dart';
import 'foody2.dart';
import 'checkbox.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int selectedValue=0;
    final String text;
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
                Text("SIGN UP", style: TextStyle(
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
                  height: 460,
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
                      SizedBox(height: 20,),
                      Container(
                        width: 300,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Padding(padding: EdgeInsets.fromLTRB(20, 30, 40, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          //
                          //  Text("I accepect all terms and condition",
                          //    style: TextStyle(fontWeight: FontWeight.w400),),
                            CheckBox("I accepect all terms and conditions"),
                          ],
                        ),),
                      SizedBox(height: 40,),
                      MaterialButton(
                        minWidth: 320,
                        height: 54,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> FoodyMain()));
                        },
                        color: Color(0xFFE65100),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text(
                          "SIGN UP",
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
                SizedBox(height: 40,),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account ? ",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInPage()));
                        },
                        child: Text("Sign In",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.deepOrange,
                          ),),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

    ),
      ),
    );
  }
}

