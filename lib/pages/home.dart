import 'package:flutter/material.dart';
import 'package:hw_7/pages/buy.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 28),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu_rounded,
              size: 32,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: const Icon(
                Icons.notifications_outlined,
                size: 32,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 28, 36, 0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Your Balance',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 106, 105, 105),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'SGD 129.22',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 64),
                Image.asset('images/homestock.png', width: 130)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 48, 36, 40),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BuyPage()),
                      );
                    },
                    child: const Options(
                      desc: 'Buy',
                      icon: Icons.add_rounded,
                    )),
                const SizedBox(width: 19),
                const Options(desc: 'Sell', icon: Icons.remove),
                const SizedBox(width: 19),
                const Options(desc: 'Send', icon: Icons.arrow_upward_rounded),
                const SizedBox(width: 19),
                const Options(desc: 'Receive', icon: Icons.arrow_downward_rounded),
                const SizedBox(width: 19),
                const Options(desc: 'Convert', icon: Icons.swap_calls_rounded),
              ],
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 199, 196, 196),
            height: 5,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 28, 36, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Watchlist',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 48),
                const Stock(
                  brand: 'Bitcoin',
                  img: 'images/stock1.png',
                  percent: '5.96%',
                  price: 'SGD 40,896.51',
                  short: 'BTC',
                  size1: 59,
                  size2: 14,
                  widthimg: 60,
                  imgbrand: 'images/bitcoin.png',
                ),
                const SizedBox(
                  height: 48,
                ),
                const Stock(
                  brand: 'Ethereum',
                  img: 'images/stock2.png',
                  percent: '5.92%',
                  price: 'SGD 2,493.80',
                  short: 'ETH',
                  size1: 42,
                  size2: 17,
                  widthimg: 60,
                  imgbrand: 'images/eth.png',
                ),
                const SizedBox(
                  height: 48,
                ),
                const Stock(
                  brand: 'XRP',
                  img: 'images/stock3.png',
                  percent: '5.75%',
                  price: 'SGD 0.54',
                  short: 'XRP',
                  size1: 84,
                  size2: 52,
                  widthimg: 60,
                  imgbrand: 'images/xrp.png',
                ),
                const SizedBox(
                  height: 48,
                ),
                const Stock(
                  brand: 'Bitcoin Cash',
                  img: 'images/stock4.png',
                  percent: '8.06%',
                  price: 'SGD 253.39',
                  short: 'BCH',
                  size1: 24,
                  size2: 27,
                  widthimg: 60,
                  imgbrand: 'images/cash.png',
                ),
                const SizedBox(
                  height: 48,
                ),
                const Stock(
                  brand: 'Litecoin',
                  img: 'images/stock5.png',
                  percent: '9.57%',
                  price: 'SGD 85.58',
                  short: 'LTC',
                  size1: 63,
                  size2: 33,
                  widthimg: 60,
                  imgbrand: 'images/lite.png',
                ),
                const SizedBox(
                  height: 52,
                ),
                Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 185, 184, 184),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(140, 18, 140, 18),
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 199, 196, 196),
            height: 5,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 28, 36, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Top Movers',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 28, 36, 0),
            child: SizedBox(
              height: 180,
              child: ListView(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: const [
                  Movers(
                    brand: 'OP ',
                    img: 'images/op.png',
                    percent: '63.14%',
                    price: 'SGD 1.62',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Movers(
                    brand: 'KEEP ',
                    img: 'images/keep.png',
                    percent: '27.38%',
                    price: 'SGD 0.32',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Movers(
                    brand: 'THETA ',
                    img: 'images/theta.png',
                    percent: '11.91%',
                    price: 'SGD 1.65',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Movers extends StatelessWidget {
  final img;
  final brand;
  final percent;
  final price;
  const Movers({
    Key? key,
    required this.brand,
    required this.img,
    required this.percent,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 151, 148, 148),
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              img,
              width: 52,
            ),
            const SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  brand,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(price),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.south_east,
                  color: Color.fromARGB(255, 179, 19, 7),
                  size: 30,
                ),
                Text(
                  percent,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 179, 19, 7),
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

class Stock extends StatelessWidget {
  final img;
  final brand;
  final double size1;
  final double size2;
  final short;
  final price;
  final percent;
  final double widthimg;
  final imgbrand;

  const Stock(
      {Key? key,
      required this.brand,
      required this.img,
      required this.percent,
      required this.price,
      required this.short,
      required this.size1,
      required this.size2,
      required this.widthimg,
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
        Image.asset(
          img,
          width: widthimg,
        ),
        SizedBox(width: size2),
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

class Options extends StatelessWidget {
  final IconData icon;
  final String desc;
  const Options({
    Key? key,
    required this.desc,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 2, 71, 219),
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              icon,
              color: Colors.white,
              size: 44,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          desc,
          style: const TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
