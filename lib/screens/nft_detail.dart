import 'package:flutter/material.dart';
import 'package:nft_app_ui/colors/colors.dart';
import 'package:nft_app_ui/widgets/nft_card.dart';

class NftDetail extends StatelessWidget {
  final dynamic nftData;
  const NftDetail({this.nftData});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Place Bid',
          style: Theme.of(context).textTheme.headline3,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NftCard(
              nftData: nftData,
              height: 1.6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Inspired by the pain of thousand of mans wo fight each day to bring food to the table every day of the year',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ElevatedButton(
                onPressed: () => {},
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
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
