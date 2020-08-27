import 'package:flutter/material.dart';
import 'dart:math';
import 'package:tingo_tango_og013100520202/models/student.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _randomNumber = 0;

  void _generateRandomNumber() {
    setState(() {
      _randomNumber = Random().nextInt(32);
    });
  }

  List<Student> students = [
    Student('THEILON EFRAIN ALVAREZ GOMEZ', 0),
    Student('ALEJANDRO ARRIETA SERRANO', 1),
    Student('SAMUEL CALLE GUTIERREZ', 2),
    Student('JOHN STEVEN CARDONA ROJAS', 3),
    Student('CARLOS ENRIQUE CASTRO ARGOTE', 4),
    Student('JUAN DAVID CHAMORRO YELA', 5),
    Student('LUIS FELIPE CÓRDOBA BERRIO', 6),
    Student('STIVEN DELGADO VELÁSQUEZ', 7),
    Student('JOSE MANUEL ESCOBAR BETANCUR', 8),
    Student('SARA GARCÍA SÁNCHEZ', 9),
    Student('JUAN PABLO GARCIA SEPULVEDA', 10),
    Student('JUAN CAMILO GARCIA THOMAS', 11),
    Student('ZARID GOMEZ ANDRADE', 12),
    Student('NICOLÁS GÓMEZ CARMONA', 13),
    Student('JULIAN ISAZA ACOSTA', 14),
    Student('JUAN JOSE LOPEZ RESTREPO', 15),
    Student('ESTEBAN MARTINEZ ALZATE', 16),
    Student('LAURA MONCADA VALBUENA', 17),
    Student('ANA MARIA MONTOYA VARGAS', 18),
    Student('VALENTINA OSSA RAMÍREZ', 19),
    Student('JUAN PABLO RAMIREZ RAMIREZ', 20),
    Student('ESTEBAN RESTREPO MONTOYA', 21),
    Student('JUAN PABLO RIOS CARDONA', 22),
    Student('STHEISY SANABRIA HERRERA', 23),
    Student('SIMON SEPULVEDA SALAZAR', 24),
    Student('NICOLAS ENRIQUE SILVA LONDOÑO', 25),
    Student('SANTIAGO TRUJILLO AVENDAÑO', 26),
    Student('MATEO VELASQUEZ PENAGOS', 27),
    Student('SIMON VELASQUEZ GOMEZ', 28),
    Student('MATEO VELASQUEZ RESTREPO', 29),
    Student('MARIA ALEJANDRA ZAPATA LÓPEZ', 30),
    Student('STEFANIA ZAPATA OSORIO', 31),
  ];

  Widget studentTemplate(student) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                student.name,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                "id: ${student.id}",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text(
                    "Pregunta para el número",
                    style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "$_randomNumber",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children:
                  students.map((student) => studentTemplate(student)).toList(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _generateRandomNumber,
        tooltip: 'Get random number',
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
