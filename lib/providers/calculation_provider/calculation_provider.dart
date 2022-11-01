import 'package:flutter/material.dart'
    show ChangeNotifier, TextEditingController;

class CalculationProvider with ChangeNotifier {
  TextEditingController amountController = TextEditingController();
  TextEditingController goldAmountController = TextEditingController();
  TextEditingController silverAmountController = TextEditingController();

  double eligableZakatAmount = 150759.0;

  bool isZakatEligable = false;
  bool get getIsZakatEligable => isZakatEligable;

  set setIsZakatEligable(bool isZakatEligable) =>
      this.isZakatEligable = isZakatEligable;

  double zakatAmount = 0;
  double get getZakatAmount => zakatAmount;

  set setZakatAmount(double zakatAmount) => this.zakatAmount = zakatAmount;

  double totalAmount = 0;
  double get getTotalAmount => totalAmount;

  set setTotalAmount(double totalAmount) => this.totalAmount = totalAmount;

  calculateZakat() {
    double amount = double.tryParse(amountController.text) ?? 0;
    double goldAmount = double.tryParse(goldAmountController.text) ?? 0;
    double silverAmount = double.tryParse(silverAmountController.text) ?? 0;
    totalAmount = amount + goldAmount + silverAmount;
    zakatAmount =
        (amount * 0.025) + (goldAmount * 0.025) + (silverAmount * 0.025);
    notifyListeners();
  }

  eligibleForZakat() {
    totalAmount >= eligableZakatAmount;
    isZakatEligable = true;
    notifyListeners();
  }

  reset() {
    amountController.clear();
    goldAmountController.clear();
    silverAmountController.clear();
    setZakatAmount = 0;
    setIsZakatEligable = false;
    notifyListeners();
  }
}
