import 'dart:ui';

import 'package:crypto_app/ui/cryptos.dart';
import 'package:crypto_app/ui/filters.dart';
import 'package:crypto_app/ui/search_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121315),
      appBar: AppBar(
        backgroundColor: const Color(0xff121315),
        elevation: 0,
        title: const Text(
          'Trade',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: [
          SizedBox(
            height: double.infinity,
            width: 30,
            child: Stack(
              fit: StackFit.expand,
              children: [
                const Icon(Icons.notifications_outlined),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Center(
                        child: Text('3'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
      body: Column(
        children: const [
          SearchField(),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 30,
            child: Filters(),
          ),
          SizedBox(
            height: 16,
          ),
          Cryptos(),
          _SeeAll(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff121315),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        items: [
          const BottomNavigationBarItem(
              backgroundColor: Color(0xff121315),
              icon: Icon(Icons.pie_chart_outline),
              label: "Assets"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.auto_graph_outlined), label: "Trade"),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Center(
                child: Icon(
                  Icons.compare_arrows,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.money), label: "Pay"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.star_outlined), label: "For you"),
        ],
      ),
    );
  }
}

class _SeeAll extends StatelessWidget {
  const _SeeAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(
            color: Colors.white.withOpacity(0.3),
          ),
        ),
        child: const Center(
          child: Text(
            'See All',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
