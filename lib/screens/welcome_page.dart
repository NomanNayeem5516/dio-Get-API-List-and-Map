import 'package:dio_get_api_list_and_map/helper/string_helper.dart';
import 'package:dio_get_api_list_and_map/screens/home_page.dart';
import 'package:flutter/material.dart';

import 'home_page_2.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringHelper.getMapList),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const Text(StringHelper.map),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage2()));
              },
              child: const Text(StringHelper.list),
            ),
          ],
        ),
      ),
    );
  }
}
