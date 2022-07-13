import 'package:flutter/material.dart';

class Cryptos extends StatelessWidget {
  const Cryptos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _CryptoItem(
          imagePath: "images/bitcoin_icon.png",
          name: 'Bitcoin',
          description: 'BTC',
          value: "\$50,906.08",
          growth: -6.25,
        ),
        _CryptoItem(
          imagePath: "images/ethereum_icon.png",
          name: 'Ethereum',
          description: 'ETH',
          value: "\$3,473.88",
          growth: -4.80,
        ),
        _CryptoItem(
          imagePath: "images/Tether-icon.png",
          name: 'Tehter',
          description: 'USDT',
          value: "\$0.86",
          growth: 0.26,
        ),
        _CryptoItem(
          imagePath: "images/cardano_icon.png",
          name: 'Cardano',
          description: 'ADA',
          value: "\$1.72",
          growth: -8.64,
        ),
        _CryptoItem(
          imagePath: "images/solana-icon.png",
          name: 'Solana',
          description: 'SOL',
          value: "\$166.98",
          growth: -9.43,
        ),
      ],
    );
  }
}

class _CryptoItem extends StatelessWidget {
  const _CryptoItem({
    Key? key,
    required this.name,
    required this.description,
    required this.value,
    required this.growth,
    required this.imagePath,
  }) : super(key: key);
  final String imagePath;
  final String name;
  final String description;
  final String value;
  final double growth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.0,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                description,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                value,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                growth < 0 ? "$growth%" : "+$growth%",
                style: TextStyle(
                  color: growth < 0 ? Colors.red : Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
