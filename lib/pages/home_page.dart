import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: Text("str_packages").tr()
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: Text("str_localization").tr(),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: Text("str_local_database").tr(),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: Text("str_networking").tr(),
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      context.setLocale(Locale('en', 'US'));
                    },
                    child: Text("English"),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: MaterialButton(
                    color: Colors.orange,
                    onPressed: () {
                      context.setLocale(Locale('ru', 'RU'));
                    },
                    child: Text("Russian"),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: MaterialButton(
                    color: Colors.green,
                    onPressed: () {
                      context.setLocale(Locale('uz', 'UZ'));
                    },
                    child: Text("Uzbek"),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    color: Colors.blue.shade700,
                    onPressed: () {
                      context.setLocale(Locale('ko', 'KR'));
                    },
                    child: Text("Korean"),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: MaterialButton(
                    color: Colors.brown,
                    onPressed: () {
                      context.setLocale(Locale('de', 'DE'));
                    },
                    child: Text("Dutch"),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: MaterialButton(
                    color: Colors.indigoAccent,
                    onPressed: () {
                      context.setLocale(Locale('fr', 'FR'));
                    },
                    child: Text("French"),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
