import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controllers/controller.dart';
import 'package:getx_tutorial/widgets/record_list_tile.dart';
import 'package:getx_tutorial/models/record.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({super.key});

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    List<Record> records = _controller.records;

    return Obx(() => Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("History"),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.add_rounded,
                  color: Colors.white,
                  size: 32,
                ),
                onPressed: _controller.addRecord,
              ),
            ],
          ),
          body: records.isEmpty
              ? const Center(
                  child: Text("No records yet"),
                )
              : ListView.builder(
                  itemCount: records.length,
                  itemBuilder: (context, index) {
                    return RecordListTile(record: records[index]);
                  },
                ),
        ));
  }
}
