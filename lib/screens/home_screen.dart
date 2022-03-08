import 'package:flutter/material.dart';
import 'package:week_expenses/constants.dart';
import 'package:week_expenses/screens/widgets/balance_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: kDefaultPadding),
              const Text(
                'Bonjour !',
                style: TextStyle(
                  fontSize: 42.0,
                  color: Colors.black26,
                ),
              ),
              const SizedBox(height: kDefaultPadding),
              const BalanceCard(),
              const SizedBox(height: kDefaultPadding),

              // Tabs
              // *****************************
              // the tab bar with two items
              SizedBox(
                height: kDefaultPadding * 5,
                child: AppBar(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(kDefaultPadding),
                  ),
                  bottom: const TabBar(
                    tabs: [
                      Tab(
                        text: 'Incomes',
                        icon: Icon(Icons.money_off_csred_rounded),
                      ),
                      Tab(
                        text: 'Expenses',
                        icon: Icon(Icons.money),
                      ),
                    ],
                  ),
                ),
              ),

              // create widgets for each tab bar here
              const Expanded(
                child: TabBarView(
                  children: [
                    // first tab bar view widget
                    Center(
                      child: Text(
                        'Incomes',
                      ),
                    ),

                    // second tab bar view widget
                    Center(
                      child: Text(
                        'Expenses',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
