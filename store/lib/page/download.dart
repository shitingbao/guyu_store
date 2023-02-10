import 'package:flutter/material.dart';

class Download extends StatefulWidget {
  const Download({
    Key? key,
  }) : super(key: key);

  @override
  State<Download> createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  var txt = "下载";
  var value = 0.6;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              value += 0.1;
            });
          },
          child: Text(txt),
        ),
        Text("当前进度：" + value.toString()),
        LinearProgressIndicator(
          value: value,
          backgroundColor: Colors.orange[200],
          valueColor: AlwaysStoppedAnimation(Colors.red[300]),
        ),
        Container(
          height: 20,
        ),
        CircularProgressIndicator(),
      ],
    ));
  }
}
