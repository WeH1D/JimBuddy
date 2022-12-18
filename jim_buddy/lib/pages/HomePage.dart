import 'dart:io';

import 'package:firebase_database/firebase_database.dart';
import 'package:jim_buddy/components/WorkoutShowcase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DatabaseReference workoutSessionsRef =
      FirebaseDatabase.instance.ref("workout_session");
  List? workoutSessions = [];

  @override
  void initState() {
    super.initState();

    getFirebaseData();
  }

  Future<void> getFirebaseData() async {
    try {
      final data = await workoutSessionsRef.get();
      setState(() {
        workoutSessions = data.value as List;
      });

      print("VALUE FROM FIREBASE -> ${data.value}");
    } catch (err) {
      print("ERROR HAS HAPPENED -> $err");
    }
  }

  // void createWorkoutType() {
  //   print("WRITING TO FIREBASE");
  //   ref.set({"name": "Dumbbell Rows"});
  //   ref.set({"name": "Dumbbell Press"});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      body: Column(children: [
        ...workoutSessions!.map((session) {
          return WorkoutShowcase();
        })
      ]),
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        onPressed: (() => {}),
        backgroundColor: Colors.black,
        child: const Icon(Icons.fitness_center_sharp),
      ),
    );
  }
}
