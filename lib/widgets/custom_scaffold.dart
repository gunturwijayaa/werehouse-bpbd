import 'package:flutter/material.dart';


class CustomScaffold extends StatelessWidget {
  const CustomScaffold({Key? key, this.child}) : super(key: key);
  
  final Widget? child;
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/tampilan_awal.png',
            fit: BoxFit.cover,
            width: screenWidth,
            height: screenHeight,
          ),
          SafeArea(
            child: child!,
          ),
        ],
      ),
    );
  }
}
