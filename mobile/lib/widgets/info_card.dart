import 'package:flutter/material.dart';
import 'package:mobile/utils/config.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key, required this.label, required this.value}) : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Config.primaryColor
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 15
            ),
            child: Column(
              children: <Widget>[
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  value,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w800
                  ),
                )
              ],
            ),
          )
        );
  }
}
