import 'package:flutter/material.dart';

class DicodingCard extends StatelessWidget {
  DicodingCard({this.urlImage});
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return new Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(urlImage),
      ),
    );
  }
}
