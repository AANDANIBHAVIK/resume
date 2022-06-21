import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume/modelclass.dart';

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  TextEditingController txtem = TextEditingController();
  TextEditingController txtname = TextEditingController();
  TextEditingController txtmn = TextEditingController();
  TextEditingController txtadd = TextEditingController();
  TextEditingController txts1 = TextEditingController();
  TextEditingController txts2 = TextEditingController();
  TextEditingController txts3 = TextEditingController();
  TextEditingController txtcourse = TextEditingController();
  TextEditingController txtuni = TextEditingController();
  TextEditingController txtyear = TextEditingController();
  TextEditingController txtref = TextEditingController();
  TextEditingController txtpr1 = TextEditingController();
  TextEditingController txtpr2 = TextEditingController();
  TextEditingController txtexp = TextEditingController();
  String email = "";
  String name = "";
  String mn = "";
  String add = "";
  String s1 = "";
  String s2 = "";
  String s3 = "";
  String course = "";
  String uni = "";
  String year = "";
  String ref = "";
  String pr2 = "";
  String pr1 = "";
  String exp = "";

  var txtkey = GlobalKey<FormState>();
  File f1 = File("");

  @override
  Widget build(BuildContext context) {
    return Form(
      key: txtkey,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Resume Maker",
              style: TextStyle(fontSize: 25),
            ),
            actions: [
              Icon(Icons.settings),
            ],
            backgroundColor: Colors.brown,
            // centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(width: 10,),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.topLeft,
                          height: 30,

                          child: Text(
                            "Personal ",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () async {
                        ImagePicker imgpic = ImagePicker();
                        XFile? f2 =
                            await imgpic.pickImage(source: ImageSource.gallery);
                        setState(() {
                          f1 = File(f2!.path);
                        });
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: FileImage(f1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        controller: txtname,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "FULL NAME",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter full Name';
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        controller: txtmn,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "MOBILE NO.",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Mobile no.';
                          }
                          // else{
                          //   return null;
                          // }
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        controller: txtem,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "EMAIL",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Email';
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        controller: txtadd,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "ADDRESS",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter address';
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.insert_page_break,),
                        SizedBox(width: 10,),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.centerLeft,
                          height: 30,
                          child: Text(
                            "Projects",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        controller: txtpr1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "PROJECT",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter project';
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        controller: txtpr2,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "PROJECT",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter project';
                          }
                          // else{
                          //   return null;
                          // }
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.psychology,size: 30),
                        SizedBox(width: 10,),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.topLeft,
                          height: 30,
                          child: Text(
                            "Skill",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        controller: txts1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "SKILL1",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter skill1';
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        controller: txts2,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "SKILL2",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter skill2';
                          }
                          // else{
                          //   return null;
                          // }
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        controller: txts3,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "SKILL3",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter skill3';
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.school,size: 30),
                        SizedBox(width: 10,),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.topLeft,
                          height: 30,
                          child: Text(
                            "Education",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        controller: txtcourse,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "COURSE",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter course';
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        controller: txtuni,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "UNIVERCITY",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter univercity';
                          }
                          // else{
                          //   return null;
                          // }
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.interpreter_mode,size: 30),
                        SizedBox(width: 10,),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.topLeft,
                          height: 30,
                          child: Text(
                            "Referance",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        controller: txtref,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "REFERANCE",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter referancec';
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.menu_book,size: 30),
                        SizedBox(width: 10,),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.topLeft,
                          height: 30,
                          child: Text(
                            "Experience",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        controller: txtexp,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "EXPERIENCE",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Experience';
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.brown),
                        onPressed: () {
                          setState(() {
                            if (txtkey.currentState!.validate() == true) {
                              Modeldata m1 = Modeldata(name: txtname.text,
                              mn: txtmn.text,
                                em: txtem.text,
                                add: txtadd.text,
                                s1: txts1.text,
                                s2: txts2.text,
                                s3: txts3.text,
                                course: txtcourse.text,
                                uni: txtuni.text,
                                ref: txtref.text,
                                img: f1.path,
                                pr1: txtpr1.text,
                                pr2: txtpr2.text,
                                exp: txtexp.text,
                              );

                              Navigator.pushNamed(context, '/third',arguments: m1);
                            }
                          });

                            // email = txtem.text;
                            // name = txtname.text;
                            // mn = txtmn.text;
                            // add = txtadd.text;
                        },
                        child: Text("Information")),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.brown),
                        onPressed: () {
                          setState(() {
                            Navigator.pushNamed(context, '/third');
                          });
                        },
                        child: Text("Next page")),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}
