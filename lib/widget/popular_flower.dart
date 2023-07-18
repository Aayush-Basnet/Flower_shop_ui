import 'package:flower_shop/model/flower_model.dart';
import 'package:flower_shop/screen/flower_screen.dart';
import 'package:flutter/material.dart';

class PopularFlowers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Popular flowers',
            style: TextStyle(
                color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 120,
          child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: flowers.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => FlowerScreen(
                                  flower: flowers[index],
                                )));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/flowers$index.jpg'),
                              fit: BoxFit.fitWidth)),
                      child: Center(
                        child: Text(
                          flowers[index].moments,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.7),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
