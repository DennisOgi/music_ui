import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:music_ui/utils/neu.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NewBox(
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Text(
                    'P L A Y L I S T',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NewBox(
                      child: Icon(Icons.menu),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              //cover art
              NewBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('lib/images/art.jpg'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Artist: Dennis',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'My song',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 32,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('0.00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('4:20'),
                ],
              ),

              const SizedBox(
                height: 10,
              ),

              NewBox(
                child: LinearPercentIndicator(
                  progressColor: Colors.green,
                  lineHeight: 10,
                  percent: 0.5,
                  backgroundColor: Colors.transparent,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 52,
                child: Row(
                  children: const [
                    Expanded(
                      child: NewBox(child: Icon(Icons.skip_previous)),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: NewBox(child: Icon(Icons.play_arrow)),
                      ),
                    ),
                    Expanded(
                      child: NewBox(child: Icon(Icons.skip_next)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
