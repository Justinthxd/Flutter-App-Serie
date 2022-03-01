import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Actor extends StatefulWidget {
  Actor({Key? key, required this.name, required this.description})
      : super(key: key);

  String name;
  String description;

  @override
  State<Actor> createState() => _ActorState();
}

class _ActorState extends State<Actor> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.top,
      ],
    );
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(10, 10, 10, 1),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            SizedBox(height: 80),
            Text(
              widget.name,
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Garamond',
                color: Color.fromARGB(255, 243, 237, 219),
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.all(30),
              child: Text(
                widget.description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Garamond',
                  color: Color.fromARGB(255, 243, 237, 219),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
