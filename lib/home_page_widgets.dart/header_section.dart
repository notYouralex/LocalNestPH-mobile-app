import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF13373D) 
      ),
      child: Center(child: Text("Local Nest",style: TextStyle(color: Colors.white,fontSize: 20),)),
    );
  }
}