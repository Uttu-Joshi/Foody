import 'package:flutter/material.dart';

class FoodyMain extends StatelessWidget {
  const FoodyMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
            size: 27, color: Colors.grey,), onPressed: () {  },
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search,
            size: 27,color: Colors.grey,))
          ],
        ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today's Special", style: TextStyle(
                    fontSize: 26, fontWeight: FontWeight.w700,
                  ),),
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.greenAccent[400],
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.shopping_cart, color: Colors.white, size:18,),
                              Text("CART",style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w700, color: Colors.white,
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ],
                ),
                SizedBox(height: 10,),
                Text("Find out what's cooking today.....", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),),
                SizedBox(height: 15,),
                SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.55,
                        height: 350,
                        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30),),
                          color: Colors.cyanAccent[400],
                          //boxShadow: [BoxShadow(spreadRadius: 0,offset: Offset(0,10),blurRadius: 0,color: blue.withOpacity(0.4))],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child:Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/smaosa1.png"),
                                    )
                                  ),
                                ),
                            ),
                            SizedBox(height: 15,),
                            Text("Vegetable Samosa",style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(Icons.star,
                                size: 17,color: Colors.white,),
                                Icon(Icons.star,
                                  size: 17,color: Colors.white,),
                                Icon(Icons.star,
                                  size: 17,color: Colors.white,),
                                Icon(Icons.star,
                                  size: 17,color: Colors.white,),
                                Icon(Icons.star,
                                  size: 17,color: Colors.white,),
                                Text("250 Ratings",style: TextStyle(
                                  color: Colors.white,fontSize: 10,
                                ),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text("fried or baked pastry with savory filling",style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(height: 10, width: 10,),
                      Column(children: [
                        Container(width: MediaQuery.of(context).size.width*0.35,
                        height: 165,
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.orange[800],
                        ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child:Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("images/kachori.png"),
                                      )
                                  ),
                                ),
                              ),
                              SizedBox(height: 15,),
                              Text("Vegetable Kachori",style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Icon(Icons.star,
                                    size: 14,color: Colors.white,),
                                  Icon(Icons.star,
                                    size: 14,color: Colors.white,),
                                  Icon(Icons.star,
                                    size: 14,color: Colors.white,),
                                  Icon(Icons.star,
                                    size: 14,color: Colors.white,),

                                ],
                              ),
                            ],
                          )
                        ),
                        SizedBox(height: 10,width: 5,),
                        Column(children: [
                          Container(width: MediaQuery.of(context).size.width*0.35,
                              height: 165,
                              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                color: Colors.orange[800],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child:Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("images/panipuri.png"),
                                          )
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Text("Pani Puri ",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                        size: 14,color: Colors.white,),
                                      Icon(Icons.star,
                                        size: 14,color: Colors.white,),
                                      Icon(Icons.star,
                                        size: 14,color: Colors.white,),
                                      Icon(Icons.star,
                                        size: 14,color: Colors.white,),
                                      Icon(Icons.star,
                                        size: 14,color: Colors.white,),
                                    ],
                                  ),
                                ],
                              )
                          ),

                        ],),
                      ],),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Places",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                placesWidget("restaurant","Chappan Bhog"),
                SizedBox(height: 10,),
                placesWidget("restaurant2","Amer Bakery Hut"),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Row placesWidget(String img, String name){
    return Row(
      children: [
        Container(
          height: 95,
          width: 95,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/$img.jpg"),
            ),
          ),
          ),
        SizedBox(width: 13,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$name",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),),
              Row(
                children: [
                  Icon(Icons.star,size: 20,color: Colors.orange,),
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                  Icon(Icons.star, size: 20, color: Colors.orange,),
                ],
              ),
              Text("Air conditioned restaurant with seating arrangement",style: TextStyle(
                fontSize: 12,
              ),),
            ],
          ),
        ),
        InkWell(
          onTap: (){},
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Colors.greenAccent[400],
            ),
            child: Text("Order Now",style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),),
          ),
        ),
      ],
    );
  }
}
