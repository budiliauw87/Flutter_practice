import 'package:flutter/material.dart';

class DicodingProgram extends StatelessWidget {
  DicodingProgram({this.urlImage, this.poweredProgram, this.titleProgram});
  final String urlImage;
  final String poweredProgram;
  final String titleProgram;
  @override
  Widget build(BuildContext context) {
    return new Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 300,
        height: 120,
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(urlImage, fit: BoxFit.cover),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      poweredProgram,
                      style: TextStyle(fontSize: 12.0, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, top: 8),
                    child: Text(
                      titleProgram,
                      style: TextStyle(fontSize: 17.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
