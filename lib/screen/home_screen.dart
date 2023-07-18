import 'package:flower_shop/model/flower_model.dart';
import 'package:flower_shop/screen/flower_option_screen.dart';
import 'package:flower_shop/widget/categories.dart';
import 'package:flower_shop/widget/popular_flower.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Column _plantcard() {
    List<Widget> popularflowers = [];
    flowers.forEach((flower) {
      popularflowers.add(GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => FlowerOptionScreen()));
        },
        child: Container(
          height: 200,
          child: Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 6.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          flower.name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$${flower.price}',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(flower.imageUrl),
                            fit: BoxFit.fitWidth,
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ));
    });
    return Column(children: popularflowers);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'The Wild Rose',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontFamily: 'Montserrat'),
        ),
        elevation: 0.1,
        centerTitle: false,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                print('Buy flowers');
              },
              icon: Icon(
                Icons.add_shopping_cart,
                size: 24,
                color: Color.fromARGB(255, 199, 161, 161),
              )),
          IconButton(
              onPressed: () {
                print('Search');
              },
              icon: Icon(
                Icons.search,
                size: 24,
                color: Color.fromARGB(255, 199, 161, 161),
              )),
        ],
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              PopularFlowers(),
              Categories(),
              _plantcard(),
            ],
          ),
        ),
      ),
    );
  }
}
