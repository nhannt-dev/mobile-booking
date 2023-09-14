import 'package:flutter/material.dart';
import 'package:mobile/utils/config.dart';
import 'package:mobile/widgets/doctor_info.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Config.spaceSmall,
          const DoctorInfo(),
          Config.spaceMedium,
          const Text(
            'About Doctor',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18
            ),
          ),
          Config.spaceSmall,
          const Text(
            'Dr.Richard Tan is a experience Dentist ar Sarawak. He is graduated since 2008 and completed his training at Sungai Buloh General Hospital',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              height: 1.5
            ),
            softWrap: true,
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
