import 'package:flutter/material.dart';

class ChatsTip extends StatefulWidget {
  @override
  _ChatsTipState createState() => _ChatsTipState();
}

class _ChatsTipState extends State<ChatsTip> {
  double height = 5;
  double width = 5;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        height = 12;
        width = 12;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
      ),
      elevation: 12,
      type: MaterialType.card,
      child: InkWell(
        hoverColor: Colors.transparent,
        child: Container(
          width: 200,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: height,
                width: height,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightGreen,
                ),
                onEnd: () {
                  if (height == 12) {
                    setState(() {
                      height = 5;
                      width = 5;
                    });
                  } else {
                    setState(() {
                      height = 12;
                      width = 12;
                    });
                  }
                },
              ),
              SizedBox(width: 8),
              Text('Chats (12)')
            ],
          ),
        ),
      ),
    );
  }
}
