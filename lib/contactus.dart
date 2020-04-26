library contactus;

import 'package:flutter/material.dart';
import 'package:typicons_flutter/typicons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  final ImageProvider logo;

  ///Logo of the Company/individual
  final String phoneNumber;

  ///Phone Number of the company/individual
  final String website;

  ///Website of company/individual
  final String email;

  ///Email ID of company/individual
  final String twitterHandle;

  ///Twitter Handle of Company/Individual
  final String linkedinURL;

  ///Linkedin URL of company/individual
  final String githubUserName;

  ///Github User Name of the company/individual
  final String companyName;

  ///Name of the Company/individual
  final String tagLine;

  ///TagLine of the Company or Position of the individual
  final String instagram;

  ///Instagram User Name of the company/individual
  final Color textColor;

  ///TextColor of the text which will be displayed on the card.
  final Color cardColor;

  ///Color of the Card.
  final Color companyColor;

  ///Color of the company/individual name displayed.
  final Color taglineColor;

  ///Color of the tagLine of the Company/Individual to be displayed.
  ///Constructor which sets all the values.
  ContactUs({
    @required this.logo,
    @required this.companyName,
    @required this.email,
    @required this.textColor,
    @required this.cardColor,
    @required this.companyColor,
    @required this.taglineColor,
    this.phoneNumber,
    this.website,
    this.twitterHandle,
    this.linkedinURL,
    this.githubUserName,
    this.tagLine,
    this.instagram,
  });

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
              companyName,
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: companyColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Visibility(
              visible: tagLine != null,
              child: Text(
                tagLine,
                style: TextStyle(
                  color: taglineColor,
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
              visible: website != null,
              child: Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading: Icon(Typicons.link),
                  title: Text(
                    'Website',
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                  onTap: () {
                    launch(website);
                  },
                ),
              ),
            ),
            Visibility(
              visible: phoneNumber != null,
              child: Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading: Icon(Typicons.phone),
                  title: Text(
                    'Phone Number',
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                  onTap: () {
                    launch('tel:' + phoneNumber);
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
              color: cardColor,
              child: ListTile(
                leading: Icon(Typicons.mail),
                title: Text(
                  'Email ID',
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
                onTap: () {
                  launch('mailto:' + email);
                },
              ),
            ),
            Visibility(
              visible: twitterHandle != null,
              child: Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading: Icon(Typicons.social_twitter),
                  title: Text(
                    'Twitter',
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                  onTap: () {
                    launch('https://twitter.com/' + twitterHandle);
                  },
                ),
              ),
            ),
            Visibility(
              visible: instagram != null,
              child: Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading: Icon(Typicons.social_instagram),
                  title: Text(
                    'Instagram',
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                  onTap: () {
                    launch('https://instagram.com/' + instagram);
                  },
                ),
              ),
            ),
            Visibility(
              visible: githubUserName != null,
              child: Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading: Icon(Typicons.social_github),
                  title: Text(
                    'Github',
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                  onTap: () {
                    launch('https://github.com/' + githubUserName);
                  },
                ),
              ),
            ),
            Visibility(
              visible: linkedinURL != null,
              child: Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: cardColor,
                child: ListTile(
                  leading: Icon(Typicons.social_linkedin),
                  title: Text(
                    'Linkedin',
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                  onTap: () {
                    launch(linkedinURL);
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
