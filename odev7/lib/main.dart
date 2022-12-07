import 'package:flutter/material.dart';

import 'second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      routes: {
        SecondPage.PageRoute: (_) => SecondPage(
              value: '',
              value2: '',
            )
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String value;
  late String value2;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Container(
              padding: const EdgeInsets.all(50),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: Text("Welcome Back",
                            style: TextStyle(fontSize: 50)),
                        flex: 4,
                      ),
                      Expanded(
                        flex: 5,
                        child: Form(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "enter text";
                                }
                                return null;
                              },
                              autofocus: false,
                              decoration: const InputDecoration(
                                  labelText: "Kullanıcı Adı"),
                              onChanged: (text) {
                                value = text;
                              },
                            ),
                            TextFormField(
                              validator: (value2) {
                                if (value2 == null || value2.isEmpty) {
                                  return "enter text";
                                }
                                return null;
                              },
                              autofocus: false,
                              obscureText: true,
                              decoration:
                                  const InputDecoration(labelText: "Şifre"),
                              onChanged: (text) {
                                value2 = text;
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.all(14),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Sign In",
                                      style: TextStyle(fontSize: 20)),
                                  FloatingActionButton(
                                      onPressed: () => Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => SecondPage(
                                                  value: value,
                                                  value2: value2))),
                                      child: const Icon(Icons.arrow_forward,
                                          size: 22))
                                ],
                              ),
                            ),
                          ],
                        )),
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Sign Up",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 12)),
                              Text(
                                "Forgot Password",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 12),
                              )
                            ],
                          ))
                    ],
                  ),
                ],
              ))), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
