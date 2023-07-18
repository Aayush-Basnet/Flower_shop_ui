import 'package:flower_shop/model/flower_option_model.dart';
import 'package:flutter/material.dart';

class FlowerOptionScreen extends StatefulWidget {
  @override
  State<FlowerOptionScreen> createState() => _FlowerOptionScreenState();
}

class _FlowerOptionScreenState extends State<FlowerOptionScreen> {
  int _selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flowers Options'),
        backgroundColor: Color.fromARGB(255, 104, 180, 143),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                print('Help');
              },
              child: Text(
                'HELP',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ))
        ],
      ),
      body: ListView.builder(
          itemCount: options.length + 2,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return SizedBox(
                height: 12,
              );
            } else if (index == options.length + 1) {
              return SizedBox(
                height: 85,
              );
            }
            return Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(8),
              width: double.infinity,
              height: 85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: _selectedOption == index - 1
                    ? Border.all(color: Colors.black)
                    : null,
              ),
              child: ListTile(
                leading: ClipOval(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(options[index - 1].flowerimage),
                  ),
                ),
                title: Text(
                  options[index - 1].title,
                  style: TextStyle(
                      color: _selectedOption == index - 1
                          ? Colors.black
                          : Colors.grey[600],
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      '\$${options[index - 1].price}',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: _selectedOption == index - 1
                              ? Colors.green
                              : Colors.grey),
                    ),
                    MaterialButton(
                      padding: EdgeInsets.all(4),
                      onPressed: () {
                        print('Shop Now !');
                      },
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      color: _selectedOption == index - 1
                          ? Color.fromARGB(255, 104, 180, 143)
                          : Colors.white,
                      child: Text(
                        'Shop Now!',
                        style: TextStyle(
                            color: _selectedOption == index - 1
                                ? Colors.white
                                : Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
                selected: _selectedOption == index - 1,
                onTap: () {
                  setState(() {
                    _selectedOption = index - 1;
                  });
                },
              ),
            );
          }),
      bottomSheet: Container(
        width: double.infinity,
        height: 65,
        color: Color(0XFFF3F3F3),
        child: Padding(
          padding: EdgeInsets.only(right: 200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Save & Continue',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 19,
              )
            ],
          ),
        ),
      ),
    );
  }
}
