import 'package:Portfolio/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class SocialInfo extends StatelessWidget {

  _launchURLli() async {
  const url = 'https://www.linkedin.com/in/teekam-singh-26476a185/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
 
  _launchURLgh() async {
  const url = 'https://github.com/singhteekam';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLfb() async {
  const url = 'https://www.facebook.com/teekam.singh.9480';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLtw() async {
  const url = 'https://twitter.com/TeekamS76240804';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

 _sendEmail() async {
    final String _email = 'mailto:' +
       // _emailController.text +
       "teekams10999@gmail.com" +
        '?subject=' +
        ""+
        '&body=' +
        "";
    try {
      await launch(_email);
    } catch (e) {
      throw 'Unexpected Error';
    }
  }


  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: 
            Wrap(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Tooltip(
                  message: "Facebook",
                  child: SignInButton(
              Buttons.Facebook,
              text: "Facebook",
              mini: true,
              onPressed: _launchURLfb,
              ),
                ),
            Tooltip(
              message: "Linkedin",
                child: SignInButton(
                Buttons.LinkedIn,
                
                text: "Linkedin",
                mini: true,
                onPressed: _launchURLli,
              ),
            ),
            Tooltip(
              message: "Github",
                child: SignInButton(
                Buttons.GitHub,
                text: "Github",
                mini: true,
                onPressed: _launchURLgh,
              ),
            ),
           
            Tooltip(
              message: "Twitter",
                child: SignInButton(
                Buttons.Twitter,
                text: "Twitter",
                mini: true,
                onPressed: _launchURLtw,
              ),
            ),

            Tooltip(
              message: "Email",
                child: SignInButton(
                Buttons.Email,
                text: "Email",
                mini: true,
                onPressed: _sendEmail,
              ),
            ),
              ],
            ),
            
    );
  }
}

