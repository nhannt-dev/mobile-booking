import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile/widgets/button.dart';

class SuccessBooked extends StatelessWidget {
const SuccessBooked({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Lottie.asset('assets/success.json')
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text(
                'Successfully Booked',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 15
              ),
              child: Button(
                width: double.infinity,
                title: 'Back To Home Page',
                onPressed: () => Navigator.of(context).pushNamed('main'),
                disable: false
              ),
            )
          ],
        )
      ),
    );
  }
}