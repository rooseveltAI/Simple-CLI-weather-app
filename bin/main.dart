import 'dart:io';
import 'package:args/args.dart';
import 'package:dartweather/dartweather.dart';

main(List<String> arguments) {
  exitCode = 0;
  final parser = ArgParser()
    ..addOption('zip', abbr: 'z')
    ..addOption('country', abbr: 'n', defaultsTo: 'ng');

  final argResults = parser.parse(arguments);

  weatherCli(argResults['zip'], argResults['country']);
}
