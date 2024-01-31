import 'package:flutter/material.dart';
import 'package:bmi_calculator/bmi.dart';
import 'package:bmi_calculator/calculate_bmi.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Your BMI Score',
                  style: TextStyle(fontSize: 27),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '23',
                  style: TextStyle(
                    fontSize: 43,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  'Underweight',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                //
                SizedBox(
                  height: 130,
                ),

                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 96, 201, 163),
                                  Color.fromARGB(255, 229, 247, 171),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 110,
                          height: 30,
                          child: OutlinedButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('Back'),
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.all(15),
                              foregroundColor: Colors.black,
                              textStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )

                /*Container(
                  
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 96, 201, 163),
                        Color.fromARGB(255, 229, 247, 171),
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Back',
                    ),
                  ),
                )*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
