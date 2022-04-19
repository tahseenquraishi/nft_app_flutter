import 'package:flutter/material.dart';
import 'package:nft_app_ui/colors/colors.dart';
import 'package:nft_app_ui/screens/home.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,
            child: Image.asset(
              'assets/intro.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'NFT Marketplace',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Text(
              'Buy only the best NFT\'s on the internet just in one place. Crafted and curated by dedicated artists around the world',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: ElevatedButton(
                onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      )
                    },
                style: ElevatedButton.styleFrom(
                  onPrimary: primaryColorDark,
                  primary: primaryColorDark,
                  elevation: 0,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: Theme.of(context).textTheme.bodyText1,
                )),
          )
        ],
      )),
    );
  }
}
