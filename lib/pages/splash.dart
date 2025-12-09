import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[700],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // School logo
            Image.asset(
              'images/school_logo.png',
              width: 150,
              height: 150,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.school,
                  size: 150,
                  color: Colors.white,
                );
              },
            ),

            const SizedBox(height: 30),

            // App title
            Text(
              'WVUP Mobile',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Merriweather',
              ),
            ),

            const SizedBox(height: 10),

            // Subtitle
            Text(
              'West Virginia University Parkersburg',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.9),
                fontFamily: 'AverageSans',
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 50),

            // Loading indicator
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              strokeWidth: 3,
            ),
          ],
        ),
      ),
    );
  }
}