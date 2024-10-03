import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic UI Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DynamicUI(),
    );
  }
}

class DynamicUI extends StatefulWidget {
  const DynamicUI({super.key});

  @override
  _DynamicUIState createState() => _DynamicUIState();
}

class _DynamicUIState extends State<DynamicUI> {
  Color boxColor = const Color.fromARGB(255, 105, 83, 96);
  double boxSize = 250.0;
  String boxText = "𝙃𝙞 𝙒𝙤𝙧𝙡𝙙";

  void changeProperties() {
    setState(() {
      boxColor = boxColor == Colors.blue ? Colors.red : Colors.blue;
      boxSize = boxSize == 250.0 ? 300.0 : 450.0; 
      boxText = boxText == "𝙃𝙞 𝙒𝙤𝙧𝙡𝙙" ? "𝙃𝙚𝙡𝙡𝙤, 𝙒𝙤𝙧𝙡𝙙" : "𝙒𝙚𝙡𝙘𝙤𝙢𝙚 𝙩𝙤 𝙤𝙪𝙩𝙨𝙞𝙙𝙚 𝙒𝙤𝙧𝙡𝙙";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("𝑫𝒚𝒏𝒂𝒎𝒊𝒄 𝑼𝑰 𝑬𝒙𝒂𝒎𝒑𝒍𝒆"),
      ),
      backgroundColor: const Color.fromARGB(255, 184, 175, 175),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: changeProperties,
              child: Container(
                color: boxColor,
                width: boxSize,
                height: boxSize,
                child: Center(
                  child: Text(
                    boxText,
                    style: const TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: changeProperties,
              child: const Text("Click to change the Color of the Box"),
            ),
          ],
        ),
      ),
    );
  }
}
