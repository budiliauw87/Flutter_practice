import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_dicoding_pemula/models/DicodingCard.dart';
import 'package:flutter_dicoding_pemula/models/DicodingProgram.dart';

class HomePage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => HomePage(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dicoding Flutter"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200,
              child: Image.asset('images/banner.png'),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Text(
                'Bangun Karirmu Sebagai Developer Profesional',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: new Text(
                'Mulai belajar terarah dengan learning path',
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 30,
              ),
              child: ElevatedButton(
                onPressed: () =>
                    {_launchURL('https://www.dicoding.com/registration')},
                style: ElevatedButton.styleFrom(
                  primary: Colors.black87,
                ),
                child: Text(
                  'Daftar',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: new Text(
                'Telah dipercaya oleh',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 30),
              height: 200,
              child: GridView(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    childAspectRatio: 1 / 2,
                    mainAxisSpacing: 0),
                children: [
                  DicodingCard(
                    urlImage:
                        'https://d17ivq9b7rppb3.cloudfront.net/original/commons/homepage-partner-google.png',
                  ),
                  DicodingCard(
                    urlImage:
                        'https://d17ivq9b7rppb3.cloudfront.net/original/commons/homepage-partner-microsoft.png',
                  ),
                  DicodingCard(
                      urlImage:
                          'https://d17ivq9b7rppb3.cloudfront.net/original/commons/homepage-partner-aws.png'),
                  DicodingCard(
                      urlImage:
                          'https://d17ivq9b7rppb3.cloudfront.net/original/commons/homepage-partner-ibm.png'),
                  DicodingCard(
                      urlImage:
                          'https://d17ivq9b7rppb3.cloudfront.net/original/commons/homepage-partner-indosat.png'),
                  DicodingCard(
                      urlImage:
                          'https://d17ivq9b7rppb3.cloudfront.net/original/commons/homepage-partner-telkomtelstra.png'),
                  DicodingCard(
                      urlImage:
                          'https://d17ivq9b7rppb3.cloudfront.net/original/commons/homepage-partner-kemenparekraf.png'),
                  DicodingCard(
                    urlImage:
                        'https://d17ivq9b7rppb3.cloudfront.net/original/commons/homepage-partner-lenovo.png',
                  ),
                  DicodingCard(
                      urlImage:
                          'https://d17ivq9b7rppb3.cloudfront.net/original/commons/homepage-partner-intel.png'),
                  DicodingCard(
                      urlImage:
                          'https://d17ivq9b7rppb3.cloudfront.net/original/commons/homepage-partner-xl.png'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 15),
              child: new Text(
                'Program terbaru kami',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 30),
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DicodingProgram(
                      poweredProgram: 'Oleh Dicoding & AWS',
                      titleProgram:
                          'Cloud and Back-End Developer Scholarship Program',
                      urlImage:
                          'https://d17ivq9b7rppb3.cloudfront.net/original/commons/cloud_and_back_end_developer_scholarship_program_image_220421145840.png'),
                  DicodingProgram(
                    poweredProgram: 'Oleh Google & Kemdikbud',
                    titleProgram: 'Bangkit (Kampus Merdeka)',
                    urlImage:
                        'https://d17ivq9b7rppb3.cloudfront.net/original/commons/bangkit_kampus_merdeka_image_220421145336.png',
                  ),
                  DicodingProgram(
                      poweredProgram: 'Oleh Kemenko Perekonomian',
                      titleProgram: 'Program Kartu Prakerja',
                      urlImage:
                          'https://d17ivq9b7rppb3.cloudfront.net/original/commons/kartu_prakerja_image_220421145634.png'),
                  DicodingProgram(
                    poweredProgram: 'Oleh Lintasarta',
                    titleProgram: 'Lintasarta Digital School 2021',
                    urlImage:
                        'https://d17ivq9b7rppb3.cloudfront.net/original/commons/lintasarta_digital_school_2021_image_230421192615.png',
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

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
