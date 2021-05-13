import 'package:flutter/material.dart';

class DetailLearningPage extends StatelessWidget {
  const DetailLearningPage(
      {this.urlImage, this.title, this.descreption, this.totalKelas});

  final String urlImage;
  final String title;
  final String descreption;
  final String totalKelas;
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => DetailLearningPage(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 15),
              child: Image.network(urlImage, height: 200),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin:
                      EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 15),
                  child: Text(
                    'Deskripsi Path :',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  margin:
                      EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 15),
                  child: Text(
                    '$totalKelas kelas akademi',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Text(descreption),
            ),
          ],
        ),
      ),
    );
  }
}
