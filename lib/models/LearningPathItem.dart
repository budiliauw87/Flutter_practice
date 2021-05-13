import 'package:flutter/material.dart';
import 'package:flutter_dicoding_pemula/ui/DetailLearningPage.dart';

class LearningPathItem extends StatelessWidget {
  const LearningPathItem(
      {this.urlImage,
      this.title,
      this.descreption,
      this.totalKelas,
      this.content});

  final String urlImage;
  final String title;
  final String descreption;
  final String totalKelas;
  final String content;

  @override
  Widget build(BuildContext context) {
    return new Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: SizedBox(
          height: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 0.8,
                child: Container(
                  child: Image.network(urlImage),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 2, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.pinkAccent,
                              ),
                            ),
                            Text(
                              '''$descreption''',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: TextStyle(
                                fontSize: 13.0,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.only(bottom: 8),
                              child: Text(
                                '$totalKelas kelas akademi',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              height: 30,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.pinkAccent,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 0),
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return DetailLearningPage(
                                      urlImage: urlImage,
                                      title: title,
                                      descreption: content,
                                      totalKelas: totalKelas,
                                    );
                                  }));
                                },
                                child: Text(
                                  'Lihat',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
