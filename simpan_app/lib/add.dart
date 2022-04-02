import 'package:flutter/material.dart';
import 'package:simpan_app/theme.dart';

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
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  }, 
                  icon: Icon(
                    Icons.arrow_back
                  )
                ),
                //SizedBox(width: 1,),
                Text(
                  'Add Category',
                  style: huruf4,
                ),
                TextButton(
                  onPressed: (){}, 
                  child: Text(
                    'Save',
                    style: huruf3,
                  )
                )
              ],
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Text(
                    'Name  : ',
                    style: huruf3,
                  ),
                  Text(
                    'Cigarette',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3,),
            Divider(
              color: satu,
              indent: 80,
              endIndent: 28,
              height: 1.5,
              thickness: 1.5,
            )
          ],
        ),
      ),
    );
  }
}