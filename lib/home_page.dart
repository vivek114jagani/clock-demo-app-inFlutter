import 'package:clock_app/widgets/style.dart';
import 'package:clock_app/widgets/time_model.dart';
import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';

import 'widgets/clock_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              TimerBuilder.periodic(
                const Duration(seconds: 1),
                builder: (context) {
                  var currentTime = DateTime.now();
                  String seconds = currentTime.second < 10
                      ? "0${currentTime.second}"
                      : "${currentTime.second}";
                  String minute = currentTime.minute < 10
                      ? "0${currentTime.minute}"
                      : "${currentTime.minute}";
                  String hours = currentTime.hour < 10
                      ? "0${currentTime.hour}"
                      : "${currentTime.hour}";
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Today', style: AppStyle.mainTextThin),
                          Text(
                            "$hours:$minute:$seconds",
                            style: AppStyle.mainText,
                          ),
                        ],
                      ),
                      Center(
                        child: ClockWidget(
                          TimeModel(
                            currentTime.hour,
                            currentTime.minute,
                            currentTime.second,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 60),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select another time zone',
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(
                    color: Colors.black45,
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 24),
                      width: MediaQuery.of(context).size.width - 52,
                      height: 100,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: AppStyle.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Bei jin',
                                style: AppStyle.mainTextWhite,
                              ),
                              Text(
                                "${DateTime.now().hour}:${DateTime.now().minute}",
                                style: AppStyle.mainTextWhite,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text('Today', style: AppStyle.mainTextThinWhite),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 24),
                      width: MediaQuery.of(context).size.width - 52,
                      height: 100,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: AppStyle.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'New York',
                                style: AppStyle.mainTextWhite,
                              ),
                              Text(
                                "${DateTime.now().hour}:${DateTime.now().minute}",
                                style: AppStyle.mainTextWhite,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Today',
                            style: AppStyle.mainTextThinWhite,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 24),
                      width: MediaQuery.of(context).size.width - 52,
                      height: 100,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: AppStyle.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Moscow',
                                style: AppStyle.mainTextWhite,
                              ),
                              Text(
                                "${DateTime.now().hour}:${DateTime.now().minute}",
                                style: AppStyle.mainTextWhite,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Today',
                            style: AppStyle.mainTextThinWhite,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 24),
                      width: MediaQuery.of(context).size.width - 52,
                      height: 100,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: AppStyle.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tokyo',
                                style: AppStyle.mainTextWhite,
                              ),
                              Text(
                                "${DateTime.now().hour}:${DateTime.now().minute}",
                                style: AppStyle.mainTextWhite,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Today',
                            style: AppStyle.mainTextThinWhite,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppStyle.primaryColorDark,
        unselectedItemColor: AppStyle.primaryColorDark,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.watch_later), label: 'Clock'),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Alarm'),
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: 'Stopwatch'),
          BottomNavigationBarItem(
              icon: Icon(Icons.timelapse_outlined), label: 'Timer'),
        ],
      ),
    );
  }
}
