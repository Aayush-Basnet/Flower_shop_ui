import 'package:flower_shop/model/flower_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlowerScreen extends StatefulWidget {
  final Flower flower;
  FlowerScreen({required this.flower});

  @override
  State<FlowerScreen> createState() => _FlowerScreenState();
}

class _FlowerScreenState extends State<FlowerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 26, right: 28, top: 55),
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.flower.imageUrl),
                            fit: BoxFit.cover)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Icon(Icons.arrow_back,
                                  size: 26, color: Colors.white),
                            ),
                            Icon(
                              Icons.shopping_cart,
                              size: 26,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          widget.flower.moments.toUpperCase(),
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          widget.flower.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Text(
                          'FROM',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$${widget.flower.price}',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'SIZE',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Medium',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        RawMaterialButton(
                          padding: EdgeInsets.all(18),
                          shape: CircleBorder(),
                          elevation: 2.0,
                          fillColor: Colors.white,
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.black87,
                            size: 29,
                          ),
                          onPressed: () => print('Add to cart'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 375,
                transform: Matrix4.translationValues(0, -20, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'All to know....',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            widget.flower.description,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 17, right: 20),
                      width: double.infinity,
                      height: 75,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 227, 221, 205),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          )),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 12),
                        leading: CircleAvatar(
                          child: ClipOval(
                              child: CircleAvatar(
                            radius: 65,
                            backgroundImage:
                                AssetImage('assets/images/owner.JPG'),
                          )),
                        ),
                        title: Text(
                          'Aayush Basnet',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        subtitle: Text(
                          'Owner',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFFFD6456)),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      child: Text(
                        'Gift the flower of your choice to your love one.',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 13,
                            height: 1.2,
                            fontWeight: FontWeight.w500),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 0, 35, 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            height: 30,
                            width: 60,
                            child: IconButton(
                                onPressed: () => print('Share'),
                                icon: Icon(
                                  Icons.share,
                                  size: 25,
                                )),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          MaterialButton(
                            padding: EdgeInsets.all(16),
                            color: Colors.blueAccent,
                            onPressed: () {
                              print('Buy');
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                              "Buy",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
