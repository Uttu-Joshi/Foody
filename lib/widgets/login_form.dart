import 'package:flutter/material.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({Key? key}) : super(key: key);

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      buildInputForm(),
        SizedBox(height: 10,),
        buildInputForm()
      ],
    );
  }

  Padding buildInputForm() {
    var label;
    return Padding(padding: EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      decoration: InputDecoration(
        labelText: label,
       labelStyle: TextStyle(
         color: Colors.grey,
       ),
       border: OutlineInputBorder(),

      ),
    ),
    );
  }
}

