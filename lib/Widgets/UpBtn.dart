import 'package:flutter/material.dart';

class UpBtn extends StatefulWidget {
  const UpBtn({super.key});
  @override
  State<UpBtn> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<UpBtn> {
  int count = 0;

  void onClick() {
    setState(() {
      count = count + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Hello World",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
            ),
          ),
          Text(
            "$count",
            style: const TextStyle(color: Colors.white, fontSize: 50),
          ),
          IconButton(
            onPressed: onClick,
            icon: const Icon(
              Icons.public_sharp,
              color: Colors.white,
              size: 50,
            ),
          )
        ],
      ),
    );
  }
}
