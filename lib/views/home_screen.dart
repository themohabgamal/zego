import 'package:flutter/material.dart';
import 'package:zego/views/video.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final callId = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ZEGO Video Call',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          TextFormField(
            controller: callId,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.numbers),
              labelText: 'User ID',
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
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
            child: const Text('Start Call'),
          )
        ],
      ),
    );
  }
}
