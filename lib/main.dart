import 'package:flutter/material.dart';
import 'package:minesweeper/component/pastel_appbar.dart';

import 'component/pastel_button.dart';
import 'util/constants.dart';

void main() {
  runApp(MaterialApp(home: MainPage()));
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Costum AppBar Yang Ada Di component/pastel_appbar.dart
      appBar: PastelAppBar(
        child: Text(
          "Posttest 1 Gilang Raditya",
          style: kAppBarTextStyle,
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          // Memberi warna gradient pada container
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFFFFF),
              Color(0xFFD6D6D6),
            ],
          ),
        ),
        // Mengecek jika lebar layar termasuk vertikal atau horizontal
        child: MediaQuery.of(context).size.width > 600
            ? buildHorizontal(context)
            : buildVertical(context),
      ),
    );
  }

  // Widget Tree Jika Orientasi Layar Vertical
  Widget buildVertical(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Minesweeper', style: kAppTitleTextStyle),
        Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.width / 7,
              child: PastelButton(
                color: Color(0xffffffd6),
                child: Text('Start', style: kTitleButtonTextStyle),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Start Button Pressed'),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 32,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.width / 7,
              child: PastelButton(
                color: Color(0xffe8e7fc),
                child: Text('Credits', style: kTitleButtonTextStyle),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Credits Button Pressed'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Widget Tree Jika Orientasi Layar Horizontal
  Widget buildHorizontal(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Column berisi logo dan title
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/title_logo.png",
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 20,
            ),
            const Text('Minesweeper', style: kAppTitleTextStyle),
          ],
        ),
        // Column berisi button start dan credits
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              height: MediaQuery.of(context).size.height / 6,
              child: PastelButton(
                color: Color(0xffffffd6),
                child: Text('Start', style: kTitleButtonTextStyle),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Start Button Pressed'),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 32,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              height: MediaQuery.of(context).size.height / 6,
              child: PastelButton(
                color: Color(0xffe8e7fc),
                child: Text('Credits', style: kTitleButtonTextStyle),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Credits Button Pressed'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}