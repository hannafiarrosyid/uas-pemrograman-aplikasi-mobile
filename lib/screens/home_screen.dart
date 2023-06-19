import 'package:flutter/material.dart';
import 'package:uas_aplikasi_mobile_c2/utils/bmi_service.dart';
import 'package:uas_aplikasi_mobile_c2/utils/constant.dart';
import 'package:uas_aplikasi_mobile_c2/widgets/drawer_widget.dart';
import 'package:uas_aplikasi_mobile_c2/widgets/result_widget.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
 int weight = 55;
 int height = 111;
 double minHeight = 100;
 double maxHeight = 220;

String bmiPoint = '';
String result = '';
String recommend = '';
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: const DrawerWidget(),
      appBar: AppBar(
      title: const Text('Kalkulator BMI'),
      ), body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
             shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                height:MediaQuery.of(context).size.height /5,
                width: MediaQuery.of(context).size.width /1.1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Column(
                    children: [
                      const Text(
                        'Tinggi Badan',
                        style: TextStyle(
                          fontSize: 15, 
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                                style: const TextStyle(
                                  fontSize: 50, 
                                  fontWeight:FontWeight.bold, 
                                  ),
                                ),
                                const Text('cm')
                            ],
                          ),
                          Slider(value: height.toDouble(), 
                          min: minHeight,
                          max: maxHeight,
                          onChanged: (value) {
                            setState(() {
                              height =value.round();
                            });
                          },
                        )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height:MediaQuery.of(context).size.height /55 ,
              ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Column(
                    children: [
                      const Text(
                        'Berat Badan',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            weight.toString(),
                            style: const TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text('kg')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: (){setState(() {
                              weight--;
                            });
                            }, 
                            icon: Image.asset(
                             '${assetsIcons}icon_minus.png',
                              height:50,
                              fit: BoxFit.contain
                              ),
                         ),
                           IconButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            icon: Image.asset(
                              '${assetsIcons}icon_plus.png',
                                height: 50, 
                                fit: BoxFit.contain
                                ),
                          ),
                      ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height:MediaQuery.of(context).size.height /55 ,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width/ 1.3, 
                  MediaQuery.of(context).size.height / 15,
            ),
            foregroundColor: Colors.black,
            backgroundColor: Color.fromARGB(255, 217, 0, 255),
            elevation: 5,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10,
            ),
            )),
              onPressed: () {setState(() {
                BMICalculatorServices bmi = BMICalculatorServices(
                  height: height,
                  weight: weight,
                   );bmiPoint = bmi.calculateBMI();
                   result = bmi.getResult();
                   recommend = bmi.getRecomendation();
              });
              },
               child: const Text('Hitung'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 55,
            ),
            ResultWidget(
              bmiResult: bmiPoint, 
              resultText: result, 
              recomendation: recommend)
          ],
        ),
      ),
    );
  }
}