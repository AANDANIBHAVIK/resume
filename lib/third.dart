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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(onTap: (){
                  Navigator.pushNamed(context, '/second', arguments: m2);
                },
                  child: Image.asset("assets/img/1i.jpg"),
                ),
                SizedBox(height: 15,),

                GestureDetector(onTap: (){
                  Navigator.pushNamed(context, '/fourth', arguments: m2);
                },
                  child: Image.asset("assets/img/2i.jpg"),
                ),
                SizedBox(height: 15,),

                GestureDetector(onTap: (){
                  Navigator.pushNamed(context, '/five', arguments: m2);
                },
                child: Image.asset("assets/img/3i.jpg"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
