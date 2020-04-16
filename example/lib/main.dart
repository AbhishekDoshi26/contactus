import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: ContactUs(
          logo: AssetImage('images/crop.jpg'),
          email: 'adoshi26.ad@gmail.com',
          companyName: 'Abhishek Doshi',
          phoneNumber: '+917818044311',
          website: 'https://abhishekdoshi.godaddysites.com',
          githubUserName: 'AbhishekDoshi26',
          linkedinURL: 'https://www.linkedin.com/in/abhishek-doshi-520983199/',
          tagLine: 'Flutter Developer',
          twitterHandle: 'AbhishekDoshi26',
          instagramUserName: '_abhishek_doshi',
        ),
      ),
    );
  }
}
