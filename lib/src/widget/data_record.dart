import 'package:flutter/material.dart';
import 'package:nguyenminhdung/src/data/model/location/order.dart';

class DataRecord extends StatelessWidget {
  const DataRecord({
    Key? key,
    required this.data,
    required this.onTapAction,
    this.onLongTapAction,
  }) : super(key: key);

  final Order data;
  final VoidCallback onTapAction;
  final VoidCallback? onLongTapAction;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTapAction,
        onLongPress: onLongTapAction,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Title:",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "Desc:",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "Timestamp:",
                          style: TextStyle(fontSize: 15),
                        ),
                      ]),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.id.toString(),
                          style: const TextStyle(fontSize: 15),
                        ),
                        Text(
                          data.isChocolate.toString(),
                          style: const TextStyle(fontSize: 15),
                        ),
                        // Text(
                        //   data.timeStamp ?? "No information timestamp",
                        //   style: const TextStyle(fontSize: 15),
                        // ),
                      ]),
                )
              ],
            ),
            const Divider(
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
