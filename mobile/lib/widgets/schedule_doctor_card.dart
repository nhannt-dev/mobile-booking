import 'package:flutter/material.dart';
import 'package:mobile/utils/config.dart';


class ScheduleDoctorCard extends StatelessWidget {
  const ScheduleDoctorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(10)
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.calendar_today,
            color: Config.primaryColor,
            size: 15
          ),
          SizedBox(width: 5),
          Text(
            'Thursday, 14/09/2023',
            style: TextStyle(color: Config.primaryColor),
          ),
          SizedBox(width: 20),
          Icon(
            Icons.access_alarm,
            color: Config.primaryColor,
            size: 17
          ),
          SizedBox(width: 5),
          Flexible(
            child: Text(
              '2:00 PM',
              style: TextStyle(color: Config.primaryColor)
            )
          )
        ],
      ),
    );
  }
}