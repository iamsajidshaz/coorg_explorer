import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ContactUs(
            logo: const AssetImage("assets/images/backgroundimg.jpg"),
            email: 'coorgexplorerapp@gmail.com',
            companyName: 'Coorg Explorer',
            phoneNumber: '+918618962288',
            dividerThickness: 2,
            website:
                'https://iamsajidshazonline.000webhostapp.com/coorgexpoimages/privacy_policy.html',
            tagLine: 'Begin your Adventure',
            cardColor: Colors.green,
            companyColor: Colors.green,
            taglineColor: Colors.green,
            textColor: Colors.black87,
          ),
        ),
        ElevatedButton(
          onPressed: _launchUrl,
          child: Text('Support/Donate Us'),
        )
      ],
    );
  }
}

final Uri _url = Uri.parse('https://rzp.io/l/RsIcPy4vLO');

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
