import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
       const Text("My Store"),
       ),
       body: const Center(
        child: Text("No Records Found !"),
      ),
    
    );
  }
}