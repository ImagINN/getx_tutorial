import 'package:get/get.dart';
import '../models/record.dart';

class Controller extends GetxController {
  var records = <Record>[
    // Record(
    //   weight: 70,
    //   date: DateTime.now(),
    //   note: 'Note',
    //   photoUrl: 'https://picsum.photos/200',
    // ),
    // Record(
    //   weight: 80,
    //   date: DateTime.now(),
    //   note: 'Note',
    //   photoUrl: 'https://picsum.photos/200',
    // ),
    // Record(
    //   weight: 90,
    //   date: DateTime.now(),
    //   note: 'Note',
    //   photoUrl: 'https://picsum.photos/250',
    // ),
    // Record(
    //   weight: 95,
    //   date: DateTime.now(),
    //   note: 'Note',
    //   photoUrl: 'https://picsum.photos/120',
    // ),
  ].obs;

  void addRecord() {
    records.add(Record(
        weight: 90,
        date: DateTime.now(),
        note: 'xxxx',
        photoUrl: 'https://picsum.photos/200'));
  }

  void deleteRecord(Record record) {
    records.remove(record);
  }
}
