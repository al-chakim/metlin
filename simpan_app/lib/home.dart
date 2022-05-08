import 'package:flutter/material.dart';
import 'package:simpan_app/addCategory.dart';
import 'package:simpan_app/food.dart';
import 'package:simpan_app/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
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
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  //SizedBox(width: 3,),
                  Image.asset(
                    'assets/images/scan.png',
                    height: 215,
                    width: 215,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Save Your Data \nHere!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //panggil class di sini

              Option(
                title: "Food",
                press: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return foof();
                    },
                  ));
                },
              ),
              Option(
                title: "Drink",
                press: () {
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context) {
                  //     return foof();
                  //   },
                  // ));
                },
              ),
              Option(title: 'Soap', press: () {}),
              Option(title: 'Groceries', press: () {}),
              Option(title: 'More data', press: () {}),
            ],
          ),
        ],
      ),
    ));
  }
}

class Option extends StatelessWidget {
  final String title;
  final VoidCallback press;

  const Option({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        // padding: EdgeInsets.only(
        //   left: 23, 
        //   // top: 15, 
        //   // bottom: 15, 
        //   right: 23
        // ),
        margin: EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 5),
        height: 58,
        width: 400,
        decoration: BoxDecoration(
          color: Color(0xff6504AD), 
          borderRadius: BorderRadius.circular(15)
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.only(left: 23, right: 23),
              child: Row(
                children: [
                  Icon(
                    Icons.file_present_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(width: 13),
                  Text(title, style: huruf2),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
