import 'package:flutter/material.dart';
import 'package:hw_7/pages/home.dart';
import 'package:hw_7/pages/prevbuy.dart';

class BuyPage extends StatelessWidget {
  const BuyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(36, 12, 36, 0),
          child: ListView(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                    child: const Icon(
                      Icons.close,
                      size: 28,
                    ),
                  ),
                  const SizedBox(
                    width: 64,
                  ),
                  const Text(
                    'Select asset to buy',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 48,
              ),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  hintStyle: TextStyle(fontSize: 18),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    borderSide: BorderSide(color: Color.fromARGB(255, 5, 53, 92)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'All assets',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 42,
              ),
              const Stock(
                brand: 'Litecoin',
                percent: '9.57%',
                price: 'SGD 85.58',
                short: 'LTC',
                size1: 156,
                imgbrand: 'images/lite.png',
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PrevBuy()),
                  );
                },
                child: const Stock(
                  brand: 'Bitcoin',
                  percent: '5.96%',
                  price: 'SGD 40,896.51',
                  short: 'BTC',
                  size1: 133,
                  imgbrand: 'images/bitcoin.png',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Stock(
                brand: 'Ethereum',
                percent: '5.92%',
                price: 'SGD 2,493.80',
                short: 'ETH',
                size1: 119,
                imgbrand: 'images/eth.png',
              ),
              const SizedBox(
                height: 40,
              ),
              const Stock(
                brand: 'XRP',
                percent: '5.75%',
                price: 'SGD 0.54',
                short: 'XRP',
                size1: 196,
                imgbrand: 'images/xrp.png',
              ),
              const SizedBox(
                height: 40,
              ),
              const Stock(
                brand: 'Bitcoin Cash',
                percent: '8.06%',
                price: 'SGD 253.39',
                short: 'BCH',
                size1: 111,
                imgbrand: 'images/cash.png',
              ),
              const SizedBox(
                height: 40,
              ),
              const Stock(
                brand: 'Optimism',
                percent: '63.14%',
                price: 'SGD 1.62',
                short: 'OP',
                size1: 145,
                imgbrand: 'images/op.png',
              ),
              const SizedBox(
                height: 40,
              ),
              const Stock(
                brand: 'Theta',
                percent: '11.91%',
                price: 'SGD 1.65',
                short: 'THETA',
                size1: 175,
                imgbrand: 'images/theta.png',
              ),
              const SizedBox(
                height: 40,
              ),
              const Stock(
                brand: 'Keep',
                percent: '27.38%',
                price: 'SGD 0.32',
                short: 'KEEP',
                size1: 175,
                imgbrand: 'images/keep.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Stock extends StatelessWidget {
  final brand;
  final double size1;

  final short;
  final price;
  final percent;

  final imgbrand;

  const Stock(
      {Key? key,
      required this.brand,
      required this.percent,
      required this.price,
      required this.short,
      required this.size1,
      required this.imgbrand})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imgbrand,
          width: 40,
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              brand,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              short,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
        SizedBox(width: size1),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              price,
              style: const TextStyle(fontSize: 16),
            ),
            Row(
              children: [
                const Icon(Icons.south_east, color: Color.fromARGB(255, 179, 19, 7)),
                Text(
                  percent,
                  style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 179, 19, 7)),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
