import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB3CEC9),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/images/vector_1.png",
                height: 200,
              ),
            ),
            const Text(
              'Take A Breath',
              style: TextStyle(
                fontFamily: 'MetalsmithRegular',
                fontSize: 20,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                '''It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.''',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                myCard("Vector.png", const Color(0xff1A7F72), "Meditation"),
                myCard("yoga.png", Colors.white, "Yoga"),
                myCard("card3.png", Colors.white, "Sound"),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                myBigCard("peace.png", "10 min", "The Peace"),
                myBigCard("stress.png", "15 min", "Stress Relief"),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget myCard(String imgName, Color color, String text) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset("assets/images/$imgName"),
        ),
        const SizedBox(height: 10),
        Text(text),
      ],
    );
  }

  Widget myBigCard(String imgName, String time, String title) {
    return Container(
      height: 180,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: const Color(0xff1A7F72),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/images/$imgName"),
          ),
          Text(title),
          const Text(
            "”Lorem ipsum dolor sit amet, consectetur adipiscing elit”",
            style: TextStyle(fontSize: 11),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(time),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
