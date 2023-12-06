import 'package:flutter/material.dart';

class Person {
  final String name;
  final int age;
  final String occupation;

  Person({required this.name, required this.age, required this.occupation});
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String _message = 'Welcome to My Page!';
  int _counter = 0;
  List<Person> _persons = [
    Person(name: 'John Doe', age: 25, occupation: 'Software Engineer'),
    Person(name: 'Jane Smith', age: 30, occupation: 'Data Analyst'),
    Person(name: 'Mike Johnson', age: 35, occupation: 'Product Manager'),
  ];
  Person? _selectedPerson;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _selectPerson(Person person) {
    setState(() {
      _selectedPerson = person;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _message,
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 20.0),
          Text(
            'Counter: $_counter',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('Increment Counter'),
          ),
          SizedBox(height: 20.0),
          Text(
            'Person Details:',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          _selectedPerson != null
              ? Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name: ${_selectedPerson!.name}'),
                      Text('Age: ${_selectedPerson!.age}'),
                      Text('Occupation: ${_selectedPerson!.occupation}'),
                    ],
                  ),
                )
              : Container(),
          SizedBox(height: 20.0),
          Text(
            'Person List:',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Column(
            children: _persons
                .map(
                  (person) => ElevatedButton(
                    onPressed: () => _selectPerson(person),
                    child: Text(person.name),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
