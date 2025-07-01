import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // 1
      // home: Home()

      // 2
      // routes: {
      //   Routes.HOME: (context) => Home(),
      //   Routes.SCREEN1: (context) => Screen1(),
      //   Routes.SCREEN2: (context) => Screen2(),
      //   Routes.SCREEN3: (context) => Screen3(),
      // },
      // initialRoute: Routes.HOME,

      // 3
      onGenerateRoute: (settings) {
        // control flow (role, admin, user, ...)

        print(settings.name);

        switch (settings.name) {
          case Routes.HOME:
            return MaterialPageRoute(
              builder: (context) => Home(),
              settings: settings,
            );
          case Routes.SCREEN1:
            return MaterialPageRoute(
              builder: (context) => Screen1(),
              settings: settings,
            );
          case Routes.SCREEN2:
            return MaterialPageRoute(
              builder: (context) => Screen2(),
              settings: settings,
            );
          case Routes.SCREEN3:
            return MaterialPageRoute(
              builder: (context) => Screen3(),
              settings: settings,
            );
          default:
            return MaterialPageRoute(
              builder: (context) => Home(),
              settings: settings,
            );
        }
      },
      initialRoute: Routes.HOME,
    ),
  );
}

class Routes {
  static const HOME = "/";
  static const SCREEN1 = "/screen1";
  static const SCREEN2 = "/screen2";
  static const SCREEN3 = "/screen3";
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // 1
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => Screen1(),
              //     settings: RouteSettings(name: "/screen1"),
              //   ),
              // );

              // 2
              Navigator.pushNamed(
                context,
                Routes.SCREEN1,
                arguments: {"arg1": "data from home"},
              );
            },
            child: const Text("Home to Screen 1"),
          ),
        ),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    print("Screen 1 arg: ${ModalRoute.of(context)?.settings.arguments}");

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              // 1
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Screen2()),
              // );

              // 2
              Navigator.pushNamed(context, Routes.SCREEN2);
            },
            child: Text("Screen 1 to Screen 2"),
          ),
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              // 1
              // var result = await Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Screen3()),
              // );
              // print(result);

              // 2
              Navigator.pushNamed(context, Routes.SCREEN3);
            },
            child: Text("Screen 2 to Screen 3"),
          ),
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // 1
              // back to previous screen
              // Navigator.pop(
              //   context,
              //   "Result from Screen 3",
              // );

              // back to specific screen
              // Navigator.popUntil(context, ModalRoute.withName('/screen1'));

              // 2
              // Navigator.popUntil(context, ModalRoute.withName(Routes.SCREEN1));
              Navigator.popUntil(context, (route) {
                if (route.settings.name == Routes.SCREEN1) {
                  (route.settings.arguments as Map)["result"] =
                      "data from screen 3";
                  return true;
                } else {
                  return false;
                }
              });
            },
            child: Text("Screen 3 to Screen 1"),
          ),
        ),
      ),
    );
  }
}
