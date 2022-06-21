import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/modelclass.dart';

class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    Modeldata m2 = ModalRoute.of(context)!.settings.arguments as Modeldata;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/second', arguments: m2);
                Image.asset("assets/img/1i.jpg");
              }, child: Text("FORMATE 1")),
              SizedBox(height: 10,),

              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/fourth', arguments: m2);
                Image.asset("assets/img/2i.jpg");
              }, child: Text("FORMATE 2")),
              SizedBox(height: 10,),

              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/five', arguments: m2);
                Image.asset("assets/img/3i.jpg");
              }, child: Text("FORMATE 3")),
            ],
          ),
        ),
      ),
    );
  }
}
