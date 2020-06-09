import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {    
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFD180),
        body: ListView(
            children: <Widget>[
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                            height: 40,
                            width: 40,
                            padding: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0)
                            ),
                            child: Icon(Icons.arrow_back_ios, size: 16.0)
                          ),
                        ),
                        Icon(
                          Icons.menu,
                          size: 30.0,
                          color: Colors.black,
                        ),
                      ],                    
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 200,   
                      height: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/mango-details.png'), fit: BoxFit.cover)
                      ),
                    )
                  ]
                ),
                SizedBox(height: 20),
                Transform.translate(
                  offset: Offset(0, -16.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                      color: Colors.white
                    ),
                    padding: EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Mango', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text('1 each', style: TextStyle(fontSize: 18, color: Colors.grey)),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(16.0)
                              ),
                              child: Row(children: <Widget>[
                                Icon(Icons.remove),
                                SizedBox(width: 16),
                                Text('1', style: TextStyle(fontSize: 16)),
                                SizedBox(width: 16),
                                Icon(Icons.add)
                              ],),
                            ),
                            Text('\$101', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold))
                          ]
                        ),
                        SizedBox(height: 16),
                        Text('Product Description', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                        SizedBox(height: 16),
                        Text('Mango tropical taste has a universal appeal. The meat has the sweetness of a peach. This apricot colored fruit has just enough fiber.', style: TextStyle(fontSize: 16.0)),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xFFFFD180)
                                )
                              ),
                              child: Icon(Icons.favorite, color: Color(0xFFFFD180)),
                            ),
                            SizedBox(width: 32),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 32.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Color(0xFFFFD180)
                                ),
                                child: Text('Add to cart', style: TextStyle(fontWeight: FontWeight.bold)),
                            ),)
                        ],)
                      ]
                    ),
                  ),
                )
              ]
            )
          ],
        )
      )
    );
  }

}