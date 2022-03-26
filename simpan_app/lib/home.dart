import 'package:flutter/material.dart';
import 'package:simpan_app/add.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {

    Widget option(String title){
      return GestureDetector(
        child: Container(
          padding: EdgeInsets.only(
            left: 23, 
            top: 15, 
            bottom: 15, 
            right: 23 
          ),
          margin: EdgeInsets.only(
            left: 25, 
            right: 25,
            top: 15,
            bottom: 5
          ),
          decoration: BoxDecoration(
            color: Color(0xff4B0082),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Row(
            children: [
              Icon(
                Icons.file_present_sharp,
                color: Colors.white,
                size: 28,
              ),
              SizedBox(width: 13),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w500
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context, MaterialPageRoute(
              builder: (context) => AddCategory()
            )
          );
        },
        backgroundColor: Color(0xff4B0082),
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 25,),
                Row(
                  children: [
                    //SizedBox(width: 3,),
                    Image.asset(
                      'assets/images/scan.png',
                      height: 215,
                      width: 215,
                    ),
                    SizedBox(width: 10,),
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
                //SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Row(
                    children: [
                      Text(
                        'Data Category',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                //panggil class di sini
                option('Food'),
                option('Drink'),
                option('Soap'),
                option('Groceries'),
              ],
            ),
          ],
        ),
      )
    );
  }
}

