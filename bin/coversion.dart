import 'package:coversion/coversion.dart' as coversion;

import 'dart:io';

void main() {
  start();
}

start() {
  print(
      'Курс на сегодня:\n USD покупка: 82.61 продажа: 83.61\n EUR покупка: 83.97 продажа: 84.97\n RUB покупка: 1.315 продажа: 1.393\n KZT покупка: 0.1113 продажа: 0.1948\n CNY покупка: 9.00 продажа: 13.00\n GBP покупка: 90.00 продажа: 100.00');

  print('1)Хотите обменять другую валюту на сом?');
  print('2)Хотите обменять сом на другую валюту?');

  int choice = int.tryParse(stdin.readLineSync()!) ?? 105;
  if (choice == 1) {
    print('Выбирите валюту:\n USD\n EUR\n RUB\n KZT\n CNY\n GPR');
    String value = stdin.readLineSync()!.toUpperCase();
    switch (value) {
      case 'USD':
        print('Сколько USD хотите обменять на сом?');
        double money = double.parse(stdin.readLineSync()!);
        print('доллары: $money, в соммах: ${money * 82.61}');
        break;
      case 'EUR':
        print('Сколько EUR хотите обменять на сом?');
        double money = double.parse(stdin.readLineSync()!);
        print('евро: $money, в соммах: ${money * 83.97}');
        break;
      case 'RUB':
        print('Сколько RUB хотите обменять на сом?');
        double money = double.parse(stdin.readLineSync()!);
        print('рубли: $money, в соммах: ${money * 1.315}');
        break;
      case 'KZT':
        print('Сколько KZT хотите обменять на сом?');
        double money = double.parse(stdin.readLineSync()!);
        print('тенге: $money, в соммах: ${money * 0.1113}');
        break;
      case 'CNY':
        print('Сколько CNY хотите обменять на сом?');
        double money = double.parse(stdin.readLineSync()!);
        print('юиань: $money, в соммах: ${money * 9.00}');
        break;
      case 'GBP':
        print('Сколько GBP хотите обменять на сом?');
        double money = double.parse(stdin.readLineSync()!);
        print('фунт: $money, в соммах: ${money * 90.00}');
        break;

      default:
        print('Только цифры!');
    }
  } else if (choice == 2) {
    print('Выбирите валюту:\n USD\n EUR\n RUB\n KZT\n CHY\n GPR');
    String value = stdin.readLineSync()!.toUpperCase();
    switch (value) {
      case 'USD':
        print('Сколько USD хотите купить?');
        double money = double.parse(stdin.readLineSync()!);
        print('в соммах: $money, в USD: ${money / 83.61}');
        break;
      case 'EUR':
        print('Сколько EUR хотите купить?');
        double money = double.parse(stdin.readLineSync()!);
        print('в соммах: $money, в EUR: ${money / 84.97}');
        break;
      case 'RUB':
        print('Сколько RUB хотите купить?');
        double money = double.parse(stdin.readLineSync()!);
        print('в соммах: $money, в RUB: ${money / 1.393}');
        break;
      case 'KZT':
        print('Сколько KZT хотите купить?');
        double money = double.parse(stdin.readLineSync()!);
        print('в соммах: $money, в KZT: ${money / 0.1948}');
        break;
      case 'CNY':
        print('Сколько CNY хотите купить?');
        double money = double.parse(stdin.readLineSync()!);
        print('в соммах: $money, в CHY: ${money / 13.00}');
        break;
      case 'GBP':
        print('Сколько GBP хотите купить?');
        double money = double.parse(stdin.readLineSync()!);
        print('в соммах: $money, в GBP: ${money / 100.00}');
        break;

      default:
        print('Только цифры!');
    }
  } else {
    print('Неизвестная задача!');
  }
}
