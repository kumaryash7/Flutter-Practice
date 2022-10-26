
import 'package:flutter/material.dart';


class RoughPage extends StatefulWidget {
  const RoughPage({ Key? key }) : super(key: key);

  @override
  State<RoughPage> createState() => _RoughPageState();
}

class _RoughPageState extends State<RoughPage> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(children: [Row(children: [ElevatedButton(onPressed: (){}, child: Text("Press Here"))],)],),
      
    );
  }
}