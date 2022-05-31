import 'package:flutter/material.dart';
import 'package:foody/utils/utils_color.dart';
import 'widgets/login_form.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              hexStringToColor("#FFFAFAFA"),
              hexStringToColor("#FFE0F7FA"),
            ],
            begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100.0,),
                Text("SIGN IN",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 5.0,),
                Row(
                  children: [
                    Text("Complete this step for best adjustment",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                    ),),
                  ],
                ),
                SizedBox(height: 10,),
                LogInForm(),
              ],
            ),
          ),
        ),
      );
  }

}

