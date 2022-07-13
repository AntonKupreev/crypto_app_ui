import 'package:flutter/material.dart';

class Filters extends StatelessWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        SizedBox(
          width: 16,
        ),
        _Filter(name: 'Tradable', isActive: true),
        _Filter(
          name: 'Watchlist',
        ),
        _Filter(
          name: 'New on Coinbase',
        ),
        _Filter(
          name: 'All assets',
        ),
        _Filter(
          name: 'Watchlist',
        ),
        _Filter(
          name: 'New on Coinbase',
        ),
        _Filter(
          name: 'All assets',
        ),
        SizedBox(
          width: 16,
        ),
      ],
    );
  }
}

class _Filter extends StatelessWidget {
  const _Filter({
    Key? key,
    required this.name,
    this.isActive = false,
  }) : super(key: key);
  final String name;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isActive ? Colors.blue.withOpacity(0.1) : Colors.transparent,
        border: Border.all(color: isActive ? Colors.blue : Colors.transparent),
      ),
      child: Center(
        child: Text(
          name,
          style: TextStyle(color: isActive ? Colors.blue : Colors.white),
        ),
      ),
    );
  }
}
