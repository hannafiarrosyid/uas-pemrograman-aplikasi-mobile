import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget(
    {super.key, 
    required this.bmiResult, 
    required this.resultText, 
    required this.recomendation});

  final String bmiResult;
  final String resultText;
  final String recomendation;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Hasil BMI anda:', 
        style:TextStyle(
          color: Colors.black, 
          fontWeight: FontWeight.bold
          ),
        ),
        Text(bmiResult,
        style: const TextStyle(
           color: Colors.blueAccent, fontSize: 50,
           fontWeight: FontWeight.bold
          ),
        ),
        Text(resultText,
        style:const TextStyle(
           color: Colors.blueAccent, 
           fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(height: 12,
        ),
        Text(recomendation,
        style: const TextStyle(
          color: Colors.black, 
          fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}