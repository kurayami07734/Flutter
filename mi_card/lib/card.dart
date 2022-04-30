import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 90.0,
                  foregroundImage: AssetImage('images/photo.jpeg'),
                ),
              ),
              const Text(
                'Aditya Ghidora',
                style: TextStyle(
                    fontSize: 50, color: Colors.white, fontFamily: 'Cookie'),
              ),
              const Text(
                'EMGINEER',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.tealAccent[700],
                      size: 25.0,
                    ),
                    const SizedBox(width: 40),
                    Text(
                      '+91 87796 60280',
                      style: TextStyle(
                          color: Colors.tealAccent[700], fontSize: 20),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.tealAccent[700],
                      size: 25.0,
                    ),
                    const SizedBox(width: 40),
                    Text(
                      'ghidoraee@gmail.com',
                      style: TextStyle(
                          color: Colors.tealAccent[700], fontSize: 20),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.tealAccent[700],
      ),
    );
  }
}
// Aditya Ghidora