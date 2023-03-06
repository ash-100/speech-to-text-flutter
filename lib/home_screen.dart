import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var text = "Hold the button and start speaking";
  bool isListening = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Speech To Text'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: AvatarGlow(
            endRadius: 75,
            animate: isListening,
            repeat: true,
            duration: Duration(seconds: 2),
            repeatPauseDuration: Duration(milliseconds: 100),
            showTwoGlows: true,
            glowColor: Colors.red,
            child: Icon(
              Icons.mic,
              color: Colors.white,
            )),
      ),
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Text(text),
      ),
    );
  }
}
