library contactus;

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  ImageProvider logo;
  ImageProvider linkLogo;
  String phoneNumber1 = 'phoneNumber';
  String website1 = 'website';
  String email1 = 'email';
  String twitterHandle1 = 'twitter';
  String linkedinURL1 = 'linkedin';
  String githubUserName1 = 'github';
  String companyName1 = 'company';
  String tagLine1 = 'tagline';
  String instagram = 'instagram';
  bool phoneVerify = false;
  bool websiteVerify = false;
  bool twitterVerify = false;
  bool linkedinVerify = false;
  bool githubVerify = false;
  bool tagVerify = false;
  bool instaVerify = false;
  ContactUs(
      {@required this.logo,
        @required String companyName,
        @required String email,
        String phoneNumber,
        String website,
        String twitterHandle,
        String linkedinURL,
        String githubUserName,
        String tagLine,
        String instagramUserName}) {
    companyName1 = companyName;
    email1 = email;
    if (phoneNumber != null) {
      phoneNumber1 = phoneNumber;
      phoneVerify = true;
    }
    if (website != null) {
      website1 = website;
      websiteVerify = true;
    }
    if (twitterHandle != null) {
      twitterHandle1 = twitterHandle;
      twitterVerify = true;
    }
    if (linkedinURL != null) {
      linkedinURL1 = linkedinURL;
      linkedinVerify = true;
    }
    if (githubUserName != null) {
      githubUserName1 = githubUserName;
      githubVerify = true;
    }
    if (tagLine != null) {
      tagLine1 = tagLine;
      tagVerify = true;
    }
    if (instagramUserName != null) {
      instagram = instagramUserName;
      instaVerify = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: logo,
            ),
            Text(
              companyName1,
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Visibility(
              visible: tagVerify,
              child: Text(
                tagLine1,
                style: TextStyle(
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(
              color: Colors.teal[200],
              thickness: 4,
              indent: 50.0,
              endIndent: 50.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Visibility(
              visible: websiteVerify,
              child: Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: Colors.white,
                child: ListTile(
                  leading: Container(
                    child: Image.asset('images/linkLogo.jpg'),
                    height: 40.0,
                  ),
                  title: Text(
                    'Website',
                    style: TextStyle(
                      color: Colors.teal[900],
                    ),
                  ),
                  onTap: () {
                    launch(website1);
                  },
                ),
              ),
            ),
            Visibility(
              visible: phoneVerify,
              child: Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: Colors.white,
                child: ListTile(
                  leading: Container(
                    child: Image.asset('images/phoneLogo.png'),
                    height: 30.0,
                  ),
                  title: Text(
                    'Phone Number',
                    style: TextStyle(
                      color: Colors.teal[900],
                    ),
                  ),
                  onTap: () {
                    launch('tel:' + phoneNumber1);
                  },
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              color: Colors.white,
              child: ListTile(
                leading: Container(
                  child: Image.asset('images/gmailLogo.png'),
                  height: 30.0,
                ),
                title: Text(
                  'Email ID',
                  style: TextStyle(
                    color: Colors.teal[900],
                  ),
                ),
                onTap: () {
                  launch('mailto:' + email1);
                },
              ),
            ),
            Visibility(
              visible: twitterVerify,
              child: Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: Colors.white,
                child: ListTile(
                  leading: Container(
                    child: Image.asset('images/twitterLogo.png'),
                    height: 40.0,
                  ),
                  title: Text(
                    'Twitter',
                    style: TextStyle(
                      color: Colors.teal[900],
                    ),
                  ),
                  onTap: () {
                    launch('https://twitter.com/' + twitterHandle1);
                  },
                ),
              ),
            ),
            Visibility(
              visible: instaVerify,
              child: Card(
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: Colors.white,
                child: ListTile(
                  leading: Container(
                    child: Image.asset('images/instaLogo.png'),
                    height: 30.0,
                  ),
                  title: Text(
                    'Instagram',
                    style: TextStyle(
                      color: Colors.teal[900],
                    ),
                  ),
                  onTap: () {
                    launch('https://instagram.com/' + instagram);
                  },
                ),
              ),
            ),
            Visibility(
              visible: githubVerify,
              child: Card(
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: Colors.white,
                child: ListTile(
                  leading: Container(
                    child: Image.asset('images/githubLogo.png'),
                    height: 40.0,
                  ),
                  title: Text(
                    'Github',
                    style: TextStyle(
                      color: Colors.teal[900],
                    ),
                  ),
                  onTap: () {
                    launch('https://github.com/' + githubUserName1);
                  },
                ),
              ),
            ),
            Visibility(
              visible: linkedinVerify,
              child: Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: Colors.white,
                child: ListTile(
                  leading: Container(
                    child: Image.asset('images/linkedinLogo.png'),
                    height: 40.0,
                  ),
                  title: Text(
                    'Linkedin',
                    style: TextStyle(
                      color: Colors.teal[900],
                    ),
                  ),
                  onTap: () {
                    launch(linkedinURL1);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
