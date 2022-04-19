import 'package:flutter/material.dart';
import 'package:nft_app_ui/colors/colors.dart';

class Price extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: gray,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/ethereum.png',
            width: 30,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            '0.4 ETH',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
