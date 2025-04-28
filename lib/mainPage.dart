import 'package:first_project/constant.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int height = 150;
  int weight = 65;
  late double value=bmi(height:height,weight:weight);
  
  double bmi({required  height,required int weight}){
    return (weight / (height*height))*10000;
  }

   String result(value){
    if(value>=25){
      return "over weight";
    }else if(value>=18.5) {
      return ("normal");
    }else{
      return "underweight";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    
                    height:100,
                    width:75,
                    decoration: BoxDecoration(
                      color:Color(0xff10adad),
                      borderRadius: BorderRadius.circular(25),

                    ),
                    
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [

                        Icon(Icons.male, size: 50),
                        Text("Male"), // ✅ Corrected
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Icon(Icons.female, size: 50),
                        Text("Female"), // ✅ Corrected
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("Height"),
                        Text(
                          "$height",
                          style: const TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (height < 200) height++;
                                  value=bmi(height: height, weight: weight);
                                });
                              },
                              child: const Icon(Icons.add, size: 40),
                            ),
                            const SizedBox(width: 10),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (height > 50) height--;
                                  value=bmi(height: height, weight: weight);
                                });
                              },
                              child: const Icon(Icons.remove, size: 40),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("Weight"),
                        Text(
                          "$weight",
                          style: klablecolor,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (weight < 200) weight++; 
                                  value=bmi(height: height, weight: weight);// ✅ fixed condition
                                });
                              },
                              child: const Icon(Icons.add, size: 40),
                            ),
                            const SizedBox(width: 10),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 30) weight--;
                                  value=bmi(height: height, weight: weight); // ✅ fixed condition
                                });
                              },
                              child: const Icon(Icons.remove, size: 40),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              Column(
                children: [
                  const Text("BMI"),
                  Text(value.toStringAsFixed(2), style: klablecolor),
                  Text(result(value))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}
