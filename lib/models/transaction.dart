class Transaction {
  String id;
  String title;
  int amountInPennies;
  DateTime date;

  Transaction({
    this.id = '',
    this.title = '',
    this.amountInPennies = 0,
    required this.date,
  });
}
