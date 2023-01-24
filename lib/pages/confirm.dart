import 'package:flutter/material.dart';

class Confirm extends StatelessWidget {
  const Confirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(36, 12, 36, 0),
                  child: Row(
                    children: const [
                      Icon(Icons.arrow_back_ios),
                      SizedBox(
                        width: 88,
                      ),
                      Text(
                        'Order Preview',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 72,
                ),
                const Center(
                  child: Text(
                    '0.00021987 BTC',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 2, 71, 219),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                const Divider(
                  color: Color.fromARGB(255, 199, 196, 196),
                  height: 5,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(36, 52, 36, 0),
                  child: Row(
                    children: const [
                      Text(
                        'BTC price',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(Icons.bolt),
                      SizedBox(
                        width: 140,
                      ),
                      Text(
                        'SGD 40,978.76',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(36, 40, 36, 0),
                  child: Row(
                    children: const [
                      Text(
                        'Amount',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 214,
                      ),
                      Text(
                        'SGD 10.00',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(36, 40, 36, 0),
                  child: Row(
                    children: const [
                      Text(
                        'Recurring',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 85,
                      ),
                      Text(
                        'Every month (on the 2nd)',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(36, 40, 36, 0),
                  child: Row(
                    children: const [
                      Text(
                        'Payment method',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 124,
                      ),
                      Text(
                        'Dbs Bank Ltd',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(36, 40, 36, 0),
                  child: Row(
                    children: const [
                      Text(
                        'Purchase',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 215,
                      ),
                      Text(
                        'SGD 9.01',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(36, 40, 36, 0),
                  child: Row(
                    children: const [
                      Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 216,
                      ),
                      Text(
                        'SGD 9.01',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 30,
              left: 72,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 2, 71, 219),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(100, 12, 100, 12),
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
