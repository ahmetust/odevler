import "dart:async";
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Splash Screen",
      theme: ThemeData(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromRGBO(14, 124, 255, 1),
        child: (Image.asset(
          "assets/logo.jpg",
          width: 10,
          height: 10,
        )));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          first(context),
          second(context),
        ],
      ),
    );
  }
}

Widget first(BuildContext context) {
  double phHeight = MediaQuery.of(context).size.height;
  return Container(
    color: const Color.fromRGBO(14, 124, 255, 1),
    height: phHeight / 2,
    child: Center(child: (Image.asset("assets/logo.jpg"))),
  );
}

Widget second(BuildContext context) {
  Color primaryColor = const Color.fromRGBO(14, 124, 255, 1);
  const textStyle = TextStyle(
    color: Color.fromARGB(255, 255, 252, 252),
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  Widget informations = Container(
    padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 25),
    child: Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Email",
            labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 0, 0, 0.25)),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(0, 0, 0, 0.10),
              ),
            ),
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Password",
            labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 0, 0, 0.25)),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(0, 0, 0, 0.10),
              ),
            ),
          ),
        ),
      ],
    ),
  );

  Widget forgetPassword = const Padding(
    padding: EdgeInsets.all(1.0),
    child: Text(
      "Forget your password?",
      style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 0.25),
      ),
    ),
  );

  Widget loginButton = Padding(
    padding: const EdgeInsets.all(5),
    child: Material(
      color: Colors.transparent,
      shadowColor: Theme.of(context).primaryColor,
      child: ElevatedButton(
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
          child: const Text(
            "LOGIN",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ),
  );

  return Column(
    children: [
      DefaultTextStyle.merge(
        style: textStyle,
        child: Container(
          color: primaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                "LOG IN",
              ),
              Text(
                "SIGN UP",
                style: TextStyle(
                  color: Color.fromARGB(114, 255, 252, 252),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
      informations,
      forgetPassword,
      loginButton,
    ],
  );
}
