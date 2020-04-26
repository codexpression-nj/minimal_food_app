import 'package:flutter/material.dart';

class FoodDetails extends StatelessWidget {
  final image;
  FoodDetails({this.image});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.bookmark_border, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 280,
              ),
              Positioned(
                top: 15,
                left: (MediaQuery.of(context).size.width / 2) - 125,
                child: Hero(
                  tag: image,
                  child: Container(
                    height: 250,
                    width: 260,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.contain)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "R45",
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      child: Container(
                        height: 40.0,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Color(0xffd6dbdc)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.remove_circle_outline,
                                  color: Colors.blueGrey),
                              onPressed: () {},
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.blueGrey),
                            ),
                            IconButton(
                              icon: Icon(Icons.add_circle_outline,
                                  color: Colors.blueGrey),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Meal Name",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0XFFffbf00),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Neucha'),
                ),
                SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          '4.9',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.blueGrey,
                              fontSize: 17.0),
                        ),
                        SizedBox(width: 10.0),
                        Icon(Icons.star, color: Color(0XFFffbf00), size: 20.0),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer, color: Color(0XFFffbf00), size: 20.0),
                        SizedBox(width: 10.0),
                        Text(
                          "20 - 30 min",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              // fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 14.0),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50.0),
                Text(
                  'About the food',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16.0,
                      color: Colors.black),
                ),
                SizedBox(height: 15.0),
                Container(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0XFFffbf00),
        child: Icon(Icons.add),
        
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      
    );
  }
}
