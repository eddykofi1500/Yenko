import 'package:flutter/material.dart';

class greetingPage extends StatefulWidget {
  const greetingPage({super.key});

  @override
  State<greetingPage> createState() => _greetingPageState();
}

class _greetingPageState extends State<greetingPage> {
  //controller to get user input
  final  _controller = new TextEditingController();

  //assigning the controller to username variable
  String username = '';
  //getting greetings
  void _userGreetings(){
      setState(() {
        if(_controller.text.isNotEmpty) {
          String getIntialValueOfUsername = _controller.text[0].toUpperCase();
          String restOfUsername = _controller.text.toString().substring(1);
          String finalUsername = getIntialValueOfUsername + restOfUsername;

          username = 'hello,' + finalUsername;
        }else{
          username = "Please enter username!!!";
        }
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text('Greetings'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
               username,
               style: TextStyle(
                 fontSize: 24,
                 fontWeight: FontWeight.bold,
                 letterSpacing: 4.0,
               ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                   border: OutlineInputBorder()
                  ),
                ),
            ),
            ElevatedButton(
                onPressed: _userGreetings,
                child: Text(''
                    'Tap',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
