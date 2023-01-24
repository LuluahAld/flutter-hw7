import 'package:flutter/material.dart';
import 'package:hw_7/pages/confirm.dart';

class PrevBuy extends StatelessWidget {
  const PrevBuy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(36, 12, 36, 0),
        child: Expanded(
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.arrow_back_ios),
                      SizedBox(
                        width: 96,
                      ),
                      Text(
                        'Buy Bitcoin',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Center(
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 72,
                              ),
                              const Expanded(
                                flex: 6,
                                child: Text(
                                  'SGD 10',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 2, 71, 219),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 60,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 233, 233, 235),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Icon(
                                      Icons.swap_vert,
                                      size: 32,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 140,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 233, 233, 235),
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Monthly',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(Icons.expand_more),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 64,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueGrey),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.credit_card,
                                  color: Color.fromARGB(255, 2, 71, 219),
                                  size: 28,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Dbs Bank',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '****',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 52,
                                ),
                                const Text(
                                  'SGD 3,000.00 limit',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 73, 72, 72),
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 30,
                left: 24,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Confirm()),
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 2, 71, 219),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(100, 12, 100, 12),
                      child: Text(
                        'Preview Buy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
