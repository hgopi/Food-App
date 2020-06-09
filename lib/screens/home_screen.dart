import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:foodapp/models/fruit_model.dart';
import 'package:foodapp/screens/details_screen.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),           
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 40,
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFFAFAFA),
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: Icon(Icons.arrow_back_ios, size: 16.0)
                    ),
                    Icon(
                      Icons.menu,
                      size: 30.0,
                      color: Colors.black,
                    ),
                  ],                    
                ),
                SizedBox(height: 40),
                Text('Fruits and berries', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFFFAFAFA),
                    borderRadius: BorderRadius.circular(12.5),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      icon: Icon(Icons.search),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  primary: false,
                  crossAxisCount: 4,
                  itemCount: fruits.length,
                  itemBuilder: (BuildContext context, int index) => _buildGrid(context, index),
                  staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                  ),
              ],
            ),
          ),
        ),
      )
    );
  }

  Widget _buildGrid(BuildContext context, int index) {
    Fruit fruit = fruits[index];
    return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen()));
        },
        child: Container(
        decoration: BoxDecoration(
          color: Color(int.parse(fruit.color)).withAlpha(50),
          borderRadius: BorderRadius.circular(30.0)
        ),
        padding: EdgeInsets.only(top: 16.0, left: 16.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(fruit.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),              
              ],
            ),
            SizedBox(height: 6),
            Text(fruit.weight),
            SizedBox(height: 6),
            Text("\$${fruit.price}", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Image.asset(fruit.imageUrl, alignment: Alignment.center, fit: BoxFit.cover)],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 50,
                  padding: EdgeInsets.all(8.0),
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    color: Color(int.parse(fruit.color)),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25))
                  ),
                  child: fruit.isInCart ? Icon(Icons.done, color: Colors.white) : Icon(Icons.add),
                ),
              ],
            )
          ],
        )
      ),
    );
  }

}