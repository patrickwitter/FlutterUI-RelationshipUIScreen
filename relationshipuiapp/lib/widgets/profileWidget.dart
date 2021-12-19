import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final Color color;
  final String text;

  const ProfileWidget({Key key, this.color, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      shadowColor: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    "https://media-cldnry.s-nbcnews.com/image/upload/newscms/2021_14/1700145/henry-cavill-ms-today-square-210411-01.jpg",
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: this.color,
                    borderRadius: BorderRadius.all(
                      Radius.circular(60),
                    ),
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Flexible(
              flex: 2,
              child: Text(
                (text == null) ? "Hello There!" : text,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Flexible(
              flex: 2,
              child: Text(
                "Available for the next x hours",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 15),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color:
                    (this.color == Colors.green) ? Colors.green : Colors.grey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Request",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
