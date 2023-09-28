class Transaction {
  String id;
  String title;
  int amountInPennies;
  DateTime date = DateTime.now();

  Transaction({
    this.id = '',
    this.title = '',
    this.amountInPennies = 0,
  });
}
