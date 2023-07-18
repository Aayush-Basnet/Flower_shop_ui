import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final gradients = [
    [
      Color(0xFFFF8A00),
      Color(0xFFFFA000),
      Color(0xFFFFA500),
      Color(0xFFFFB000),
    ],
    [
      Color(0xFF1565C0),
      Color(0xFF1976D2),
      Color(0xFF1E88E5),
      Color(0xFF2196F3),
    ],
    [
      Color(0xFFD32F2F),
      Color(0xFFE53935),
      Color(0xFFEF5350),
      Color(0xFFF44336),
    ],
    [
      Color(0xFF388E3C),
      Color(0xFF43A047),
      Color(0xFF4CAF50),
      Color(0xFF66BB6A),
    ],
  ];
  List<String> categories = ['Home', 'Office', 'Resturants', 'Club House'];
  List<IconData> categoryIcons = [
    Icons.home,
    Icons.work,
    Icons.restaurant,
    Icons.meeting_room
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Categories',
            style: TextStyle(
                color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 80,
          child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                      width: 160,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 6.0),
                            blurRadius: 6,
                          )
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: [0.1, 0.5, 0.7, 0.9],
                          colors: gradients[index],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            categoryIcons[index],
                            color: Colors.white,
                            size: 26,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            categories[index],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.8),
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                );
              }),
        )
      ],
    );
  }
}
