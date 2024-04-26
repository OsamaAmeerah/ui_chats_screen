import 'package:flutter/material.dart';
import 'package:ui_week2/widgets/utils.dart';

class CardItem extends StatelessWidget {
  const CardItem(
      {super.key,
      required this.doctorName,
      required this.doctorImage,
      required this.doctorChat,
      required this.messageTime,
      required this.unreadMessage});

  @override
  Widget build(BuildContext context) {
    return buildChatItem();
  }

  final String doctorName;
  final String doctorImage;
  final String doctorChat;
  final String messageTime;
  final String unreadMessage;

  Widget buildChatItem() {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(deafultPadding),
      ),
      height: 100.0,
      child: Padding(
        padding: const EdgeInsets.all(deafultPadding),
        child: Row(
          children: [
           CircleAvatar(
             radius: 30.0,
             backgroundImage: AssetImage(doctorImage,),
           ),
            const SizedBox(
              width: 15.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorName,
                  style: textStyle(
                    15.0,
                    Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  doctorChat,
                  style: textStyle(
                    10.0,
                    Colors.grey.withOpacity(.7),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                 messageTime,
                  style: textStyle(
                    10.0,
                    Colors.grey.withOpacity(.9),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                CircleAvatar(
                  backgroundColor: iconCardColor,
                  radius: 9.0,
                  child: Text(
                   unreadMessage,
                    style: textStyle(
                      10.0,
                      Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
