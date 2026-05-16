class Confidential{
  int _secretNumber = 0;

Confidential(this._secretNumber);

  //getter and setter
  int get secretNumber => _secretNumber;
  set secretNumber(int value) {
    if (value >= 0) {
      _secretNumber = value;
    } else {
      print('Secret number cannot be negative.');
    }
  }
}