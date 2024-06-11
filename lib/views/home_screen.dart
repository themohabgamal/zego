import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zego/views/video.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final callId = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 29, 29),
      appBar: AppBar(
        title: const Text(
          'ZEGO Video Call',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/video.png',
            width: 150,
          ),
          const Text(
            "Enter Call id to start the call",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              controller: callId,
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: Colors.white54),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: const Icon(Icons.numbers, color: Colors.white54),
                labelText: 'Call ID',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Video(callID: callId.text);
                          },
                        ),
                      );
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                      child: Text(
                        'Start Call',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
