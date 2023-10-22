<h2><b>Contact Us</b></h2>
<br><br>
<p>The most common functionality added in any commercial app is the Developer's contact details!!<br>
So this package helps the developers to simply add their details.<br>
<h3><b>Now you can also add the contact details as a part of your bottomNavigationBar</b></h3><br><br>
<h3><b>Now you can add customizedable fonts for company/individual name, tagline & text along with the custom color for divider and font weights.</b></h3><br><br>
Developers can add following details:<br>
<ul>
	<li>Company Name</li>
	<li>Phone Number</li>
	<li>Website</li>
	<li>Email ID</li>
	<li>Twitter Handle</li>
	<li>Instagram ID</li>
	<li>Facebook ID</li>
	<li>Linkedin URL</li>
	<li>Github UserName</li>
  	<li>Tiktok Username</li>
</ul>
<br><br>
Best feature is that, when the user clicks on any detail, respective app/web page will be opened.<br><br>
<b><h3>Now you can also add the contact details as a part of your bottomNavigationBar</h3></b></p>
<br><br><br>
<h3>Example Code for creating an entire page</h3>
<br><br>

```dart
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
          dividerThickness: 2,
          website: 'https://abhishekdoshi.godaddysites.com',
          githubUserName: 'AbhishekDoshi26',
          linkedinURL: 'https://www.linkedin.com/in/abhishek-doshi-520983199/',
          tagLine: 'Flutter Developer',
          twitterHandle: 'AbhishekDoshi26',
          instagramUserName: '_abhishek_doshi',
          customSocials: [
            CustomSocialField(
                icon: const Icon(Icons.abc),
                name: "Username",
                url: "Profile Url",
              ),
          ],
        ),
      ),
    );
  }
}
```
<br><br><br>
<h3>Example Code for adding details in bottomNavigationBar</h3>

```
bottomNavigationBar: ContactUsBottomAppBar(
          companyName: 'Abhishek Doshi',
          textColor: Colors.white,
          backgroundColor: Colors.teal.shade300,
          email: 'adoshi26.ad@gmail.com',
        ),
```

<br><br>
<h3>Output</h3>

![Output](https://raw.githubusercontent.com/AbhishekDoshi26/contactus/master/example/output/output.jpg)
