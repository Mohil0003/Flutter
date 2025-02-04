import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dynamic Birthday Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BirthdayCardForm(),
    );
  }
}

class BirthdayCardForm extends StatefulWidget {
  @override
  _BirthdayCardFormState createState() => _BirthdayCardFormState();
}

class _BirthdayCardFormState extends State<BirthdayCardForm> {

  DateTime birthdate = DateTime.now();
  TextEditingController nameController = TextEditingController();
  String age = '';

  void createCard() {
    getAge(birthdate);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BirthdayCard(
          age: age,
          name: nameController.text,
        ),
      ),
    );
  }

  void getAge(DateTime birthdate) {
    DateTime today = DateTime.now();
    int ageNum = today.year - birthdate.year;
    if (today.month < birthdate.month || (today.month == birthdate.month && today.day < birthdate.day)) {
      ageNum--;
    }

    String suffix;
    if (ageNum % 10 == 1 && ageNum != 11) {
      suffix = 'st';
    } else if (ageNum % 10 == 2 && ageNum != 12) {
      suffix = 'nd';
    } else if (ageNum % 10 == 3 && ageNum != 13) {
      suffix = 'rd';
    } else {
      suffix = 'th';
    }
    setState(() {
      age = '$ageNum$suffix';
    });
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd/MM/yyyy').format(birthdate);
    return Scaffold(
      appBar: AppBar(
        title: Text('Birthday Card'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Birthdate: $formattedDate',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: birthdate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                );

                if (picked != null && picked != birthdate) {
                  setState(() {
                    birthdate = picked;
                  });
                }
              },
              child: Text('Select Birthdate'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Enter Your Name',
                hintText: 'Enter Your Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: createCard,
              child: Text('Create Birthday Card'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                textStyle: TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BirthdayCard extends StatelessWidget {
  final String age;
  final String name;

  BirthdayCard({required this.age, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Birthday Card'),
      ),

      body: Container(
        child: Center(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/2021-BMW-M5-CS-revealed.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Happy $age Birthday!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.yellow,

                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
