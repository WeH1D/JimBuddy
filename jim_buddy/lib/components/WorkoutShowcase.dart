import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WorkoutShowcase extends StatefulWidget {
  const WorkoutShowcase({super.key});

  @override
  State<WorkoutShowcase> createState() => _WorkoutShowcaseState();
}

class _WorkoutShowcaseState extends State<WorkoutShowcase> {
  static const workoutDate = "12.3.2023";
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
        child: DottedBorder(
          borderType: BorderType.RRect,
          color: Colors.black38,
          strokeWidth: 3,
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 4)),
              width: double.infinity,
              padding: const EdgeInsets.all(2),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2)),
                padding: const EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(workoutDate,
                              style: TextStyle(
                                  fontFamily: "JMH",
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Dumbel press x 4 sets",
                        style: TextStyle(
                            fontFamily: "JMH", fontWeight: FontWeight.bold),
                      ),
                      const Text("Dumbel flys x 5 sets",
                          style: TextStyle(
                            fontFamily: "JMH",
                            fontWeight: FontWeight.bold,
                          )),
                      const Text("Machine press x 4 sets",
                          style: TextStyle(
                              fontFamily: "JMH", fontWeight: FontWeight.bold)),
                      const Text("Tricep pushdown x 4 sets",
                          style: TextStyle(
                              fontFamily: "JMH", fontWeight: FontWeight.bold)),
                    ]),
              )),
        ));
  }
}
