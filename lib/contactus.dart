library contactus;

import 'package:flutter/material.dart';
import 'package:typicons_flutter/typicons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ContactUs extends StatelessWidget {
  ImageProvider logo; //logo of the company/developer
  ImageProvider linkLogo;
  String phoneNumber1 = 'phoneNumber'; //Phone Number of the developer/company
  String website1 = 'website'; //Website of the developer/company
  String email1 = 'email'; //Email ID of the developer/company
  String twitterHandle1 = 'twitter'; //Twitter Handle of the developer/company
  String linkedinURL1 = 'linkedin'; //Linkedin URL of the developer/company
  String githubUserName1 = 'github'; //Github User Name of the developer/company
  String companyName1 = 'company'; //Name of the developer/company
  String tagLine1 = 'tagline'; //Tag Line of the developer/company
  String instagram = 'instagram'; //Instagram User Name of the developer/company
  bool phoneVerify =
      false; //Boolean variable to verify whether the data is present.
  bool websiteVerify =
      false; //Boolean variable to verify whether the data is present.
  bool twitterVerify =
      false; //Boolean variable to verify whether the data is present.
  bool linkedinVerify =
      false; //Boolean variable to verify whether the data is present.
  bool githubVerify =
      false; //Boolean variable to verify whether the data is present.
  bool tagVerify =
      false; //Boolean variable to verify whether the data is present.
  bool instaVerify =
      false; //Boolean variable to verify whether the data is present.
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
                  leading: Icon(Typicons.link),
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
                  leading: Icon(Typicons.phone),
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
                leading: Icon(Typicons.mail),
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
                  leading: Icon(Typicons.social_twitter),
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
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Typicons.social_instagram),
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
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Typicons.social_github),
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
                  leading: Icon(Typicons.social_linkedin),
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
