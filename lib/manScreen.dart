import 'package:flutter/material.dart';

void main() {
  runApp(const ManScreen());
}

class ManScreen extends StatelessWidget {
  const ManScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/chevron.left.png",
                    width: 12,
                    height: 20,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Back",
                    style: TextStyle(color: Colors.blue, fontSize: 17),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 120,
            ),
            Text("MAN")
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            "Your name",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 4),
                    borderRadius: BorderRadius.circular(14))),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Age",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(14))),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Image Url",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(14))),
          ),SizedBox(height: 100,),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: Container(
                width: 500,
                alignment: Alignment.center,
                height: 60,
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                decoration: BoxDecoration(
                    color: Color(0XFF0099FF),
                    borderRadius: BorderRadius.circular(14)),
              )),
        ]),
      ),
    );
  }
}
