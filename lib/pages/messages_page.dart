import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages Page'),
      ),
      body: Center(
        child: Text('This is the Messages Page'),
      ),
    );
  }  
}