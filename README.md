<h2><b>Contact Us</b></h2>
<br><br>
<p>The most common functionality added in any commercial app is the Developer's contact details!!<br>
So this package helps the developers to simply add their details.<br>Developers can add following details:<br>
<ul>
	<li>Company Name</li>
	<li>Phone Number</li>
	<li>Website</li>
	<li>Email ID</li>
	<li>Twitter Handle</li>
	<li>Instagram ID</li>
	<li>Linkedin URL</li>
	<li>Github UserName</li>
</ul>
<br><br>
Best feature is that, when the user clicks on any detail, respective app/web page will be opened.</p>
<br><br><br>

```
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
          phoneNumber: '+91123456789',
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
```

![Output](https://raw.githubusercontent.com/AbhishekDoshi26/contactus/master/example/output/output.jpg)

