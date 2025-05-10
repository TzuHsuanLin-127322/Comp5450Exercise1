String formatMoney(int priceMinor) {
  int dollar = priceMinor ~/ 100;
  int cents = priceMinor % 100;
  return '\$$dollar.${cents.toString().padLeft(2, '0')}';
}