import 'package:flutter/material.dart';
import 'package:cohabito/screens/StartScreen.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class CoHabitoApp extends StatefulWidget {
  const CoHabitoApp({super.key});

  @override
  _CoHabitoAppState createState() => _CoHabitoAppState();
}

class _CoHabitoAppState extends State<CoHabitoApp> {
  late Database _database;

  @override
  void initState() {
    super.initState();
    _initDatabase();
  }

 void _initDatabase() async {
    _database = await _recuperarBD();
    print("Banco de dados inicializado: ${_database.isOpen}");
    setState(() {});
  }

  _recuperarBD() async {
    final caminho = await getDatabasesPath();
    final local = join(caminho, "bancodados.db");

    return await openDatabase(
      local,
      version: 1,
      onCreate: (db, dbVersaoRecente) {
        db.execute("""
          CREATE TABLE User (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name VARCHAR(50),
            username VARCHAR(25) UNIQUE,
            password VARCHAR(64)
          );
        """);

        String sqlCoHabito = """
        CREATE TABLE CoHabito (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name VARCHAR(25),
            identifier VARCHAR(10) UNIQUE,
            descripton VARCHAR(50) NULL
        );
        """;

        String sqlTaskUser = """
        CREATE TABLE Task_User (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            id_user INTEGER,
            name VARCHAR(25),
            FOREIGN KEY (id_user) REFERENCES User (id)
        );
        """;

        String sqlUserCoHabito = """
        CREATE TABLE User_CoHabito (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            id_user INTEGER,
            id_cohabito INTEGER,
            FOREIGN KEY (id_user) REFERENCES User (id),
            FOREIGN KEY (id_cohabito) REFERENCES CoHabito (id)
        );
        """;

        String sqlTaskUnique = """
        CREATE TABLE TaskUnique (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name VARCHAR(25),
            date DATE NULL,
            time TIME NULL,
            status VARCHAR(6) NULL,
            liked INTEGER,
            difficult INTEGER,
        );
        """;

        String sqlTaskWeekly = """
        CREATE TABLE TaskWeekly (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            id_user INTEGER,
            id_cohabito INTEGER,
            name VARCHAR(25),
            week VARCHAR(13),
            time TIME,
            FOREIGN KEY (id_user) REFERENCES User (id),
            FOREIGN KEY (id_cohabito) REFERENCES CoHabito (id)
        );
        """;

        db.execute(sqlCoHabito);
        db.execute(sqlTaskUser);
        db.execute(sqlUserCoHabito);
        db.execute(sqlTaskUnique);
        db.execute(sqlTaskWeekly);
      },
    );
  }

  Database get database => _database;

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      title: 'Exemplo',
      home: StartScreen(),
    );
  }
}