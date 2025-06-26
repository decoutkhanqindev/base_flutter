import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(body: Center(child: TextFieldDemo())),
      ),
    ),
  );
}

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ...."
      "Widget Text, Assets, Fonts ....",
      // maxLines: 2,
      // overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start,
      // textDirection: TextDirection.rtl,
      // softWrap: false,
      textScaler: TextScaler.linear(1.3),
      style: (TextStyle(
        color: Colors.green,
        backgroundColor: Colors.yellow,
        letterSpacing: 3,
        wordSpacing: 10,
        // decoration: TextDecoration.underline,
        fontSize: 12,
        fontWeight: FontWeight.w700,
        fontFamily: GoogleFonts.playfairDisplay().fontFamily,
      )),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  const RichTextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "A",
            style: TextStyle(fontSize: 24, backgroundColor: Colors.black),
          ),
          TextSpan(
            text: "B",
            style: TextStyle(fontSize: 32, backgroundColor: Colors.black),
          ),
          TextSpan(
            text: "C",
            children: [
              TextSpan(
                text: "d",
                onEnter: (event) {
                  print("enter");
                },
                onExit: (event) {
                  print("exit");
                },
              ),
              TextSpan(text: "e"),
            ],
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              backgroundColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  late String textValue;
  late String finalValue;

  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    textValue = "";
    finalValue = "";
    controller.addListener(() {
      setState(() {
        textValue = controller.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Column(
        spacing: 8,
        children: [
          TextField(
            // onChanged: (value) {
            //   print("onChanged: $value");
            //   setState(() {
            //     textValue = value;
            //   });
            // },
            controller: controller,
            autofocus: true,
            // textAlign: TextAlign.center,
            // textDirection: TextDirection.ltr,
            textInputAction: TextInputAction.search,
            // go, done, ...
            textCapitalization: TextCapitalization.characters,
            // all, words, sentences, none,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            cursorColor: Colors.blue,
            cursorWidth: 2,
            cursorHeight: 20,
            // maxLines: 3,
            maxLength: 10,
            obscureText: true,
            // password
            // decoration: InputDecoration(
            //   // icon: Icon(Icons.search),
            //   // prefixIcon: Icon(Icons.add),
            //   // prefix: Text("abc"),
            //   // suffix: Text("xyz"),
            //   hintText: "Enter text",
            //   hintStyle: TextStyle(color: Colors.grey),
            //   helperText: "Helper Text",
            //   // ...
            // ),
            decoration: InputDecoration(
              labelText: "Enter text",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                finalValue = textValue;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
            ),
            child: Text("Send"),
          ),
          Text(textValue),
          Text(finalValue),
        ],
      ),
    );
  }
}
