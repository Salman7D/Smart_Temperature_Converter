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


    double temperature;
    double result;

    switch (choice) {
      case 1:
        stdout.write('Enter temperature in Celsius: ');
        temperature = double.parse(stdin.readLineSync()!);

        result = (temperature * 9 / 5) + 32;

        print('$temperature°C = ${result.toStringAsFixed(2)}°F');
        break;

      case 2:
        stdout.write('Enter temperature in Fahrenheit: ');
        temperature = double.parse(stdin.readLineSync()!);

        result = (temperature - 32) * 5 / 9;

        print('$temperature°F = ${result.toStringAsFixed(2)}°C');
        break;

      case 3:
        stdout.write('Enter temperature in Celsius: ');
        temperature = double.parse(stdin.readLineSync()!);

        result = temperature + 273.15;

        print('$temperature°C = ${result.toStringAsFixed(2)} K');
        break;

      case 4:
        stdout.write('Enter temperature in Kelvin: ');
        temperature = double.parse(stdin.readLineSync()!);

        result = temperature - 273.15;

        print('$temperature K = ${result.toStringAsFixed(2)}°C');
        break;

      case 5:
        stdout.write('Enter temperature in Fahrenheit: ');
        temperature = double.parse(stdin.readLineSync()!);

        result = (temperature - 32) * 5 / 9 + 273.15;

        print('$temperature°F = ${result.toStringAsFixed(2)} K');
        break;

      case 6:
        stdout.write('Enter temperature in Kelvin: ');
        temperature = double.parse(stdin.readLineSync()!);

        result = (temperature - 273.15) * 9 / 5 + 32;

        print('$temperature K = ${result.toStringAsFixed(2)}°F');
        break;

      default:
        print('Invalid choice! Please select 1 to 7.');
    }

    if (choice >= 1 && choice <= 6) {
      stdout.write('\nDo you want to perform another conversion? (y/n): ');
      String again = stdin.readLineSync()!.toLowerCase();

    if (again != 'y') {
      print('\n====================================');
      print('           Thank You!');
      print('         Program Ended');
      print('====================================');
      break;
    }
  }

  print('');
  }
}