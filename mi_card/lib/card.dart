import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 90.0,
                  foregroundImage: AssetImage('images/photo.jpeg'),
                ),
              ),
              const Text(
                'Tanjiro',
                style: TextStyle(
                    fontSize: 50, color: Colors.white, fontFamily: 'Cookie'),
              ),
              const Text(
                'Software Developer',
                style: TextStyle(fontSize: 25, color: Colors.tealAccent),
              ),
              SizedBox(
                height: 5,
                width: 150,
                child: Divider(color: Colors.teal[100]),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.tealAccent[700],
                      size: 25.0,
                    ),
                    title: Text(
                      '+91 87796 60280',
                      style: TextStyle(
                          color: Colors.tealAccent[700], fontSize: 20),
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.tealAccent[700],
                        size: 25.0,
                      ),
                      title: Text(
                        'ghidoraee@gmail.com',
                        style: TextStyle(
                            color: Colors.tealAccent[700], fontSize: 20),
                      )),
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