import 'package:flutter/material.dart';
import 'package:toonflix/Widgets/upBtn.dart';
import 'Widgets/MyButton.dart';
import 'Widgets/MyCard.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool show_title = true;

  void toggle_btn() {
    setState(() {
      show_title = !show_title;
    });
  }

  //빌드메서드는 말그데로 만들어서 화면에 보여지게 해주는 메서드이다.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Hey, Jaeyun",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Welcome Back",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "\$5 194 482",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      text: "Transfer",
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black,
                    ),
                    MyButton(
                      text: "Transfer",
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Wallets",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const MyCard(
                  name: "Euro",
                  price: "6 428",
                  cur: "EUR",
                  bgColor: Color(0xFF1F2123),
                  textColor: Colors.white,
                  cur_icon: Icons.euro_rounded,
                ),
                Transform.translate(
                  offset: const Offset(0, -30),
                  child: const MyCard(
                    name: "BitCoin",
                    price: "55 321",
                    cur: "BTC",
                    bgColor: Colors.white,
                    textColor: Color(0xff1f2123),
                    cur_icon: Icons.currency_bitcoin_rounded,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -60),
                  child: const MyCard(
                    name: "Dollar",
                    price: "1032 34",
                    cur: "USD",
                    bgColor: Color(0xff1f2123),
                    textColor: Colors.white,
                    cur_icon: Icons.attach_money_rounded,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                show_title
                    ? const UpBtn()
                    : const Text(
                        "nothing",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                IconButton(
                  onPressed: toggle_btn,
                  icon: const Icon(Icons.remove_red_eye),
                  color: Colors.white,
                  iconSize: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
