import 'package:flutter/material.dart';
import 'package:nft_app_ui/colors/colors.dart';
import 'package:nft_app_ui/data/nft_data.dart';
import 'package:nft_app_ui/screens/nft_detail.dart';
import 'package:nft_app_ui/widgets/nft_card.dart';
import 'package:nft_app_ui/widgets/price.dart';
import 'package:nft_app_ui/widgets/timer.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.notifications_outlined),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          margin: const EdgeInsets.only(bottom: 20, left: 15, right: 15),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
            color: gray,
          ),
          child: TabBar(
            labelColor: primaryColorLight,
            unselectedLabelColor: lightGray,
            indicator:
                const UnderlineTabIndicator(borderSide: BorderSide(width: 0.0)),
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.home_rounded,
                  size: 32,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.search_rounded,
                  size: 32,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.shopping_cart_rounded,
                  size: 32,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person_rounded,
                  size: 32,
                ),
              ),
            ],
            controller: _tabController,
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: Column(
              children: List.generate(
            nftList.length,
            (index) => NftCard(
                nftData: nftList[index],
                handleClick: (context) =>
                    _goToNftDetail(context, nftList[index])),
          )),
        ));
  }
}

void _goToNftDetail(BuildContext context, nftData) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => NftDetail(nftData: nftData)),
  );
}
