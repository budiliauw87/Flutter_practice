import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => AboutPage(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About Us"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin:
                    EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 15),
                child: Text(
                  'From Our CEO',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
                child: Text(
                  '''Visi dicoding adalah menjadi platform edukasi teknologi terdepan yang mendorong akses literasi digital yang lebih luas untuk semua. Dicoding memiliki misi untuk mengakselerasi transisi Indonesia menuju dunia digital melalui pendidikan teknologi yang mentransformasi kehidupan.\n
Kini semua bangsa bergerak menuju dunia digital yang bertumpu pada inovasi teknologi di semua sendi kehidupan. Kami yakin pendidikan teknologi adalah fondasi bagi setiap bangsa agar menjadi yang terdepan dalam menghadapi dunia digital.\n
Dicoding hadir sebagai platform pendidikan teknologi yang membantu menghasilkan talenta digital berstandar global. Semua demi mengakselerasi Indonesia agar menjadi yang terdepan.''',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                child: Image.network(
                    'https://d17ivq9b7rppb3.cloudfront.net/original/commons/ceo-signature-wide.png'),
              )
            ],
          ),
        ));
  }
}
