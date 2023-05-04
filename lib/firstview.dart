import 'package:flutter/material.dart';
import 'logIn.dart';
import 'register.dart';

class FirstView extends StatelessWidget {
  const FirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          Container(
            width: 300,
            height: 400,
            decoration: BoxDecoration(
             image: DecorationImage(
             image: AssetImage('BAMK/img/sgbank.png'),
             fit: BoxFit.cover,
            ),
           ),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              // your buttons go here
            ],
         ),
      ),

      Positioned(
        bottom: -200,
        left: 20,
        child: Container(
          width: 850,
          height: 500,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromRGBO(18, 32, 63, 1), // R18 G32 B63
                Color.fromRGBO(45, 80, 227, 1), // R45 G80 B227
              ],
            ),
          ),
        ),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              width: 250, // Adjusted width of the Login button
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(45, 80, 227, 1), // R45 G80 B227
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  textStyle: TextStyle(fontSize: 20),
                  elevation: 5,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogIn(),
                    ),
                  );
                },
                child: const Text('Login'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 250, // Adjusted width of the Register button
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Register(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(18, 30, 56, 1), // R18 G30 B56
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(
                      color: Color.fromRGBO(34, 60, 156, 1), // R34 G60 B156
                      width: 2,
                    ),
                  ),
                  textStyle: TextStyle(fontSize: 20),
                  elevation: 5,
                ),
                child: const Text('Register'),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
  }
}
