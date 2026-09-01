import 'dart:io';

void main() {
  while (true) {
    print('====================================');
    print('       SMART TEMPERATURE CONVERTER');
    print('====================================');

    print('1. Celsius to Fahrenheit');
    print('2. Fahrenheit to Celsius');
    print('3. Celsius to Kelvin');
    print('4. Kelvin to Celsius');
    print('5. Fahrenheit to Kelvin');
    print('6. Kelvin to Fahrenheit');
    print('7. Exit');
    stdout.write('Enter your choice: ');
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 7) {
      print('\n====================================');
      print('           Thank You!');
      print('         Program Ended');
      print('====================================');
      break;
    }

  }
}