import 'package:flutter/material.dart';

class continer_appbar extends StatefulWidget {
   final IconData ic;
  IconData get getIcon => ic;

 

  const continer_appbar({
    super.key,
    required this.ic,
  });

  
  @override
  State<continer_appbar> createState() => _continer_appbarState();
}

class _continer_appbarState extends State<continer_appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color.fromARGB(255, 18, 4, 100).withOpacity(0.4)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Icon(
        widget.ic,
        color: const Color.fromARGB(255, 18, 4, 100),
      ),
    );
  }
}
