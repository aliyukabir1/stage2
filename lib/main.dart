import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  String name;
  String age;

  void setProfile() {
    name = _nameController.text;
    age = _ageController.text;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('profile'),
          backgroundColor: Colors.blueAccent,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                textCapitalization: TextCapitalization.words,
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Your Name',
                  labelText: 'Name',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
                keyboardType: TextInputType.name,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _ageController,
                decoration: InputDecoration(
                  hintText: 'your Age',
                  labelText: 'Age',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
                keyboardType: TextInputType.number,
                maxLength: 3,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    setProfile();
                  });
                  _nameController.clear();
                  _ageController.clear();
                },
                child: Text('Print Name'),
              ),
              SizedBox(
                height: 20,
              ),
              name == null || age == null
                  ? Text('')
                  : Text(
                      "your name is $name, you are $age years old.",
                      style: TextStyle(color: Colors.green[600], fontSize: 15),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
