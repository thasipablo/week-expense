import 'package:flutter/material.dart';
import 'package:week_expenses/constants.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding * 1.5,
        horizontal: kDefaultPadding,
      ),
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(kDefaultPadding),
      ),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Balance',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: kDefaultPadding),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'CDF',
                        style: TextStyle(fontSize: 22.0),
                      ),
                      Text(
                        '2.000',
                        style: TextStyle(
                          fontSize: 42.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'USD',
                        style: TextStyle(fontSize: 22.0),
                      ),
                      Text(
                        '70',
                        style: TextStyle(
                          fontSize: 42.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
