// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:task3/models/DataLists.dart';

class TaskCard extends StatelessWidget {
  final DataList dataList;
  final Function(int) onDelete;
  const TaskCard({
    Key? key,
    required this.dataList,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
          )
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dataList.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('edit'),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Delete'),
                ),
              )
            ],
          )
        ],
      ),
    );

    // ListTile(
    //   title: Text(dataList.title),
    //   subtitle: Text(DateFormat("yyyy/MM/dd || HH:mm")
    //       .format(DateTime.parse(dataList.date))),
    //   trailing: Container(
    //     width: 100,
    //     child: Row(
    //       children: [
    //         IconButton(
    //             onPressed: () {
    //               Navigator.of(context).pushNamed("/edit");
    //             },
    //             icon: Icon(
    //               Icons.edit,
    //               color: Color.fromARGB(206, 42, 5, 109),
    //             )),
    //         IconButton(
    //             onPressed: () {
    //               onDelete(dataList.id);
    //             },
    //             icon: Icon(
    //               Icons.delete_forever,
    //               color: Color.fromARGB(206, 103, 9, 3),
    //             ))
    //       ],
    //     ),
    //   ),
    // );
  }
}
