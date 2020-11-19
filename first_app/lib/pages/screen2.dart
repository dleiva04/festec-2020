import 'package:first_app/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Otra pantalla"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"),
          ),
          Text(
            "Mountains",
            style: GoogleFonts.poppins(
              fontSize: 40,
            ),
          ),
          FlatButton(
            onPressed: () {
              // Navigator.pushNamedAndRemoveUntil(context, 'home');
              Navigator.pushNamedAndRemoveUntil(
                context,
                'home',
                (route) => false,
              );
            },
            child: Text("Move to other page"),
          )
        ],
      ),
    );
  }
}
