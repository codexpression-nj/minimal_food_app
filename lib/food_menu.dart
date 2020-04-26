import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_demo/bottomNavBar.dart';
import 'package:food_demo/food_details.dart';

class FoodMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0XFFffbf00),
        child: Icon(Icons.shopping_basket),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Indulge",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 25, fontWeight: FontWeight.w400, fontFamily: 'Neucha'),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "In Quality food",
                      style: TextStyle(
                          color: Color(0XFFffbf00),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Neucha'),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(244, 243, 243, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon:
                                Icon(Icons.search, color: Color(0XFFffbf00)),
                            hintText: "Search you're looking for",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Promo Today',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      // height: 300,
                      height: MediaQuery.of(context).size.height / 2.8,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          foodCard('assets/images/cake.png', context),
                          foodCard('assets/images/foodThree.png', context),
                          foodCard('assets/images/foodTwo.png', context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget foodCard(image, context) {
    return Padding(
      padding: EdgeInsets.only( bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => FoodDetails(image: image) 

            )

          );
        },
        child: Container(
          // height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
              ],
              color:  Color(0xffd6dbdc)),
          child: Column(
            children: <Widget>[
              Hero(
                tag: image,
                child: Container(
                    height: 195,
                    width: 185.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.contain))),
              ),
              Text(
                "Meal Name",
                style: TextStyle(color: Colors.blueGrey, fontSize: 18, fontWeight: FontWeight.w300),
              ),
                Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(color: Colors.blueGrey, height: 1.0, width: 50.0,),),
                 SizedBox(height: 7.0),
                  Text("45",
                      style: TextStyle(
                          color: Color(0xFFff7f00),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
            ],
          ),
        ),
      ),
    );
  }
}
