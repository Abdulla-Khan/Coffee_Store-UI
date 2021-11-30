import 'package:coffe_store/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: EdgeInsets.only(left: 15), children: [
        SizedBox(
          width: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Welcome Nadia',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF473D3A)),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/model.jpg'), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(right: 45),
          child: Container(
            child: Text(
              'Let\'s select the best taste for your next coffee break!',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFFB0AAA7)),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Taste of the week',
            style: TextStyle(fontSize: 17, color: Color(0xFF473D3A)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Text(
              'See All',
              style: TextStyle(fontSize: 15, color: Color(0xFFCEC7C4)),
            ),
          ),
        ]),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 410,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _coffe(
                  'assets/starbucks.png',
                  'Caffe Mistro',
                  'Coffe Shop',
                  'Our dark, rich espresso balanced with steamed milk and a layer of foam',
                  '4.99',
                  false),
              _coffe(
                  'assets/starbucks.png',
                  'Caffe Latte',
                  'BrownHouse',
                  'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                  '3.99',
                  false),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Explore Nearby',
              style: TextStyle(fontSize: 17, color: Color(0xFF473D3A)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text('See All',
                  style: TextStyle(fontSize: 15, color: Color(0xFFCEC7C4))),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 125,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildImage('assets/coffee.jpg'),
              _buildImage('assets/coffee2.jpg'),
              _buildImage('assets/coffee3.jpg'),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        )
      ]),
    );
  }

  _buildImage(String imgpath) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: Container(
          height: 100,
          width: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image:
                DecorationImage(image: AssetImage(imgpath), fit: BoxFit.cover),
          )),
    );
  }

  _coffe(String imgpath, String name, String shop, String desc, String price,
      bool isFav) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: 300,
        width: 225,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 335,
                ),
                Positioned(
                    top: 75,
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 20),
                      height: 260,
                      width: 225,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFFDAB68C),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 60,
                          ),
                          Text(
                            shop,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            desc,
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                price,
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF3A4742)),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.favorite,
                                    color: isFav ? Colors.red : Colors.grey,
                                    size: 15,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                Positioned(
                    left: 60,
                    top: 25,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imgpath), fit: BoxFit.contain)),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => DetailPage()));
              },
              child: Container(
                height: 25,
                width: 225,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xFF473D3A)),
                child: Center(
                    child: Text(
                  'Order Now',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
