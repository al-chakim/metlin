import 'package:flutter/material.dart';

class Started extends StatefulWidget {
  const Started({ Key? key }) : super(key: key);

  @override
  State<Started> createState() => _StartedState();
}

class _StartedState extends State<Started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 100,),
            Column(
              children: [
                Text(
                  'Wellcome To',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800
                  ),
                ),
                Text(
                  'Simpan',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}