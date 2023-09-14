import 'package:flutter/material.dart';
import 'package:mobile/utils/config.dart';
import 'package:mobile/widgets/schedule_card.dart';

class AppointmentCard extends StatefulWidget {
  const AppointmentCard({Key? key}) : super(key: key);

  @override
  State<AppointmentCard> createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Config.primaryColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              const Row(
                children: [
                  CircleAvatar(
                backgroundImage: AssetImage('assets/doctor_1.jpg'),
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Dr Richard Tan',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Dental',
                    style: TextStyle(color: Colors.black),
                  )])
                ],
              ),
              Config.spaceSmall,
              const ScheduleCard(),
              Config.spaceSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red
                      ),
                      child: const Text('Cancel', style: TextStyle(color: Colors.white)),
                      onPressed: () {},
                    )
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue
                      ),
                      child: const Text('Completed', style: TextStyle(color: Colors.white)),
                      onPressed: () {},
                    )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
