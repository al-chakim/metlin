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
                ),
                SizedBox(height: 34,),
                Image.asset(
                  'assets/images/loker.png',
                  height: 270,
                  width: 300,
                ),
                SizedBox(height: 50),
                Text(
                  'keep your data safe and',
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                Text(
                  'neat so it`s easy to manage',
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                SizedBox(height: 100),
                FloatingActionButton.extended(
                  backgroundColor: const Color(0xff4B0082),
                  foregroundColor: Colors.white,
                  onPressed: () {
                    // Navigator.push(
                    //   context, MaterialPageRoute(
                    //     builder: (context){
                    //       return ////;
                    //     }
                    //   )
                    // );
                  },
                  label: Text(
                    '                  Get Started                  ',
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}