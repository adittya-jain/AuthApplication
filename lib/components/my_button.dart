import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final Function()? onTap;
  final String text;
  const MyButton({super.key,required this.onTap, required this.text, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,width: 150,
          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),color: Colors.black87),
          child:  Center(child: Text(text,style: TextStyle(color: Colors.white),)),
        ),
      ),
    );
  }
}