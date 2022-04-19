import 'package:flutter/material.dart';
import 'package:nft_app_ui/screens/nft_detail.dart';
import 'package:nft_app_ui/widgets/price.dart';
import 'package:nft_app_ui/widgets/timer.dart';

class NftCard extends StatelessWidget {
  final double height;
  final dynamic handleClick;
  final dynamic nftData;
  const NftCard({Key? key, this.height = 1.8, this.handleClick, this.nftData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {handleClick?.call(context)},
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 20),
        height: MediaQuery.of(context).size.height / height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                nftData['image'],
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Timer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nftData['name'],
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      'by ' + nftData['author'],
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Price(),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'CURRENT BID',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
