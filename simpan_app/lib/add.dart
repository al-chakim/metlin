import 'package:flutter/material.dart';

class AddCategory extends StatefulWidget {
  const AddCategory({ Key? key }) : super(key: key);

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    icon: Icon(Icons.arrow_back)
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 23),
                child: Text(
                  'Add Category',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 19
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, top: 25),
                child: Text(
                  'Save',
                  style: TextStyle(
                    fontWeight: FontWeight.w500
                  ),
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