import 'package:flutter/material.dart';
import 'package:ui_week2/widgets/search_bar.dart';
import 'package:ui_week2/widgets/utils.dart';

import '../widgets/card_item.dart';

class ChatsScreen extends StatelessWidget {
  ChatsScreen({super.key});
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundclr,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(deafultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              SearchTextFormField(
                controller: searchController,
                isPassword: false,
                label: 'search, e.g. Dr',
                labelStyle: const TextStyle(
                  color: searchTextColor,
                  fontFamily: 'Carpaccio',
                ),
                suffix: Icon(
                  Icons.search,
                  size: 30.0,
                  color: Colors.grey.withOpacity(.9),
                ),
              ),
              SizedBox(
                height: 600,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => CardItem(
                    doctorName: doctorsNames[index],
                    doctorImage: doctorsImage[index],
                    doctorChat: doctorsMessages[index],
                    unreadMessage: unreadMessagesNumber[index],
                    messageTime: messagesTimes[index],
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 20.0,
                  ),
                  itemCount: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
