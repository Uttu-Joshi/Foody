import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodMain extends StatelessWidget {
  const FoodMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        title: Center(child: Text("FOOD DELIVERY",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),)),
        leading: IconButton(onPressed: () {  },
          icon: Icon(Icons.notes),
        ),
        actions: [
          Container(height: 40, width: 50,
          decoration: BoxDecoration(
            color: Color(0xFFF0C143),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
            child: Stack(
              children: [
                Positioned(bottom: 3,
                right: 5, child: GestureDetector(
                    onTap: (){},
                    child: Image.asset('images/dexter.jpg',height: 40,width: 40,),
                  ),)
              ],
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xFFAF9FA),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32, top: 32),
              child: Text("Let\'s eat \nQuality Food ", style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, top: 32, right: 32),
              child: Row(
                children: [
                  Expanded(child: Container(color: Color(0XFFFCFBFC),child: Row(
                    children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Icon(Icons.search, size: 34),
                       ),
                      Expanded(child: TextField(
                        decoration: InputDecoration(hintText: "Search food...",
                        hintStyle: TextStyle(
                          fontSize: 16, color: Colors.grey,
                        ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),),
                    ],
                  ),)),
                  SizedBox(width: 5,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(color: Color(0xFFFFCC2E)),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
