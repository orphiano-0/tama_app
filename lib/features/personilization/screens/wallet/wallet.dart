import 'package:flutter/material.dart';
import 'package:tama_app/common/widgets/side_menu/side_menu.dart';
import 'package:tama_app/features/personilization/screens/wallet/details/detail_wallet.dart';
import 'package:tama_app/features/personilization/screens/wallet/details/total_wallet_bal.dart';
import 'package:provider/provider.dart';
import 'providers/wallet_provider.dart';

class WalletHomeScreen extends StatefulWidget {
  const WalletHomeScreen({Key? key}) : super(key: key);

  @override
  _WalletHomeScreenState createState() => _WalletHomeScreenState();
}

class _WalletHomeScreenState extends State<WalletHomeScreen> {

    late WalletProvider walletProvider;
    late String mnemonic;

  @override
  void initState() {
    super.initState();
    walletProvider = Provider.of<WalletProvider>(context, listen: false);

    // Call the necessary methods here
    loadWalletData();
  }

  // Method to load wallet data
  Future<void> loadWalletData() async {
    // Generate mnemonic
    final mnemonic = walletProvider.generateMnemonic();
    print('Mnemonic Pass Phrase: $mnemonic');
    
    // Get private key
    final privateKey = await walletProvider.getPrivateKey(mnemonic);
    print('Private Key: $privateKey');

    // Get public key
    final publicKey = await walletProvider.getPublicKey(privateKey);
    print('Public Key: $publicKey');
  }

  @override
  Widget build(BuildContext context) {

    // final walletProvider = Provider.of<WalletProvider>(context);

    // final mnemonic = walletProvider.generateMnemonic();
    // final privateKey = await walletProvider.getPrivateKey(mnemonic);
    // final publicKey = await walletProvider.getPublicKey(privateKey);

    return Scaffold(
      body: Column(
        children: [
          myAppBar(),
          const SizedBox(height: 25),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailWalletScreen()),
                    );
                  },
                  child: TotalWalletBalance(
                    context: context,
                    totalBalance: '\$39.584',
                    crypto: "7.251332 BTC",
                    percentage: 3.55,
                  ),
                ),
                TotalWalletBalance(
                  context: context,
                  totalBalance: '\$55.594',
                  crypto: '9.332421 BTC',
                  percentage: -9.999,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Sorted by higher %',
                    style: TextStyle(color: Colors.black38)),
                Row(children: [
                  Text(
                    '24H',
                    style: TextStyle(color: Colors.black38),
                  ),
                  Icon(Icons.keyboard_arrow_down, color: Colors.black38),
                ])
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    recentTransaction(
                      iconUrl:
                      'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/128/Bitcoin-icon.png',
                      percentage: 4.32,
                      myCrypto: '3.529020 BTC',
                      balance: '\$19.153',
                      profit: '\$ 5.441',
                    ),
                    recentTransaction(
                      iconUrl:
                      'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/128/Ethereum-icon.png',
                      percentage: 3.97,
                      myCrypto: '12.633681ETH',
                      balance: '\$4.822',
                      profit: '\$ 401',
                    ),
                    recentTransaction(
                      iconUrl:
                      'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/128/Ripple-icon.png',
                      percentage: -13.55,
                      myCrypto:  '1911.633681 XRP',
                      balance: '\$859',
                      profit:'\$ 0.45',
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container myAppBar() {
    return Container(
      height: 110,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              // Navigate to another screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyDrawer()),
              );
            },
            child: Icon(
              Icons.notes,
              color: Colors.black87,
            ),
          ),

          const Text(
            "Wallets",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          Icon(Icons.wallet, color: Colors.black38),
        ],
      ),
    );
  }
}

class recentTransaction extends StatelessWidget {
  const recentTransaction({
    super.key,
    required this.iconUrl,
    required this.percentage,
    required this.myCrypto,
    required this.balance,
    required this.profit,
  });

  final String iconUrl;
  final double percentage;
  final String myCrypto;
  final balance;
  final profit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              iconUrl,
              width: 50,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    myCrypto,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    profit,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '$balance',
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  percentage >= 0 ? '+$percentage%' : '$percentage%',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: percentage >= 0 ? Colors.green : Colors.pink,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}