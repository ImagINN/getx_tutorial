import 'package:flutter/material.dart';
import 'package:getx_tutorial/controllers/controller.dart';
import 'package:getx_tutorial/models/record.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

class RecordListTile extends StatelessWidget {
  RecordListTile({super.key, required this.record});

  final Record record;
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          leading: _buildDate(),
          title: _buildWeight(),
          trailing: _buildIcons(),
        ),
      ),
    );
  }

  Row _buildIcons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(
            Icons.edit,
            color: Colors.yellow.shade700,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: () {
            _controller.deleteRecord(record);
          },
        ),
      ],
    );
  }

  Center _buildWeight() {
    return Center(
      child: Text(
        record.weight.toString(),
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Text _buildDate() {
    return Text(
      DateFormat('EEE, d MMM yy').format(record.date),
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
