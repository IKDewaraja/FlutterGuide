import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:student_management_system/data/datasource.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController degreeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Page')),
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return Column(
      children: [
        TextField(
          controller: nameController,
          decoration: InputDecoration(
            suffix: GestureDetector(
              child: Icon(Icons.clear),
              onTap: () {
                nameController.clear();
              },
            ),
            labelText: 'Name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),
          ),
        ),

        TextField(
          controller: idController,
          decoration: InputDecoration(
            suffix: GestureDetector(
              child: Icon(Icons.clear),
              onTap: () {
                idController.clear();
              },
            ),
            labelText: 'ID',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),
          ),
        ),

        TextField(
          controller: degreeController,
          decoration: InputDecoration(
            suffix: GestureDetector(
              child: Icon(Icons.clear),
              onTap: () {
                degreeController.clear();
              },
            ),

            labelText: 'Degree',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),
          ),
        ),

        ElevatedButton(
          child: Text('Add Student'),
          onPressed: () {
            () async {
              Map<String, dynamic> studentDetails = {
                'name': nameController.text,
                'id': idController.text,
                'degree': degreeController.text,
              };

              try {
                await Database()
                    .addStudent(studentDetails, idController.text)
                    .then((value) => {
                          nameController.clear(),
                          idController.clear(),
                          degreeController.clear(),
                          Fluttertoast.showToast(
                            msg: 'Student Added',
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          ),
                        });
              } catch (e) {
                Fluttertoast.showToast(
                  msg: 'Failed to add student: $e',
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
              }
            };
          },
        ),
      ],
    );
  }
}
