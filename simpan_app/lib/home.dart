import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 75,),
          Row(
            children: [
              SizedBox(width: 10,),
              Image.asset(
                'assets/images/scan.png',
                height: 200,
                width: 200,
              ),
              SizedBox(width: 15,),
              Text(
                'Save Your Data \nHere!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18
                ),
              )
            ],
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 37),
            child: Row(
              children: [
                Text(
                  'Data Category',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}