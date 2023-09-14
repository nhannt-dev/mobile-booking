import 'package:flutter/material.dart';
import 'package:mobile/utils/config.dart';
import 'package:mobile/widgets/info_card.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return const Row(
      children: <Widget>[
        InfoCard(
          label: 'Patients',
          value: '109'
        ),
        SizedBox(width: 15),
        InfoCard(
          label: 'Experience',
          value: '5 years'
        ),
        SizedBox(width: 15),
        InfoCard(
          label: 'Ratings',
          value: '4.5'
        ),
      ],
    );
  }
}
