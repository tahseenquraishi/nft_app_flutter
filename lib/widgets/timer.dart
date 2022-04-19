import 'package:flutter/material.dart';
import 'package:nft_app_ui/colors/colors.dart';

class Timer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: white.withOpacity(0.4)),
          child: Text(
            '08',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            ':',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: white.withOpacity(0.4)),
          child: Text(
            '47',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            ':',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: white.withOpacity(0.4)),
          child: Text(
            '54',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
      ],
    );
  }
}
