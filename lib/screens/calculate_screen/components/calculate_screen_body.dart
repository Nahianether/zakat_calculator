import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/calculation_provider/calculation_provider.dart';

class CalculateScreenBody extends StatelessWidget {
  const CalculateScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calculationPD = Provider.of<CalculationProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Amount',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  )),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter amount',
                ),
                controller: calculationPD.amountController,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Amount of Gold',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  )),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter amount',
                ),
                controller: calculationPD.goldAmountController,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Amount of Silver',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  )),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter amount',
                ),
                controller: calculationPD.silverAmountController,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 40,
                width: 120,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.shade900.withOpacity(0.85),
                  ),
                  onPressed: () async {
                    calculationPD.reset();
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: 120,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.shade900.withOpacity(0.85),
                  ),
                  onPressed: () async {
                    calculationPD.calculateZakat();
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Consumer<CalculationProvider>(
            builder: (context, calculationPDState, child) {
              return Text(
                  'Zakat: ${calculationPDState.getZakatAmount.toString()}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ));
            },
          ),
          calculationPD.getIsZakatEligable == true
              ? const Text(
                  'You are eligible for zakat',
                )
              : const Text(
                  'You are not eligible for zakat',
                )
        ],
      ),
    );
  }
}
