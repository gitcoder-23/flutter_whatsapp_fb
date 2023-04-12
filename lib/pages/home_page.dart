import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_fb/components/constants/colors.dart';
import 'package:flutter_whatsapp_fb/pages/call_home_page.dart';
import 'package:flutter_whatsapp_fb/pages/chat_home_page.dart';
import 'package:flutter_whatsapp_fb/pages/status_home_page.dart';
import 'package:flutter_whatsapp_fb/widgets/custom_icon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp',
            softWrap: true,
            style: TextStyle(
              letterSpacing: 1,
              color: kWhite,
            ),
          ),
          elevation: 1,
          actions: [
            CustomIconButton(
              onIconBtnTap: () {},
              icon: Icons.camera_alt_outlined,
            ),
            CustomIconButton(
              onIconBtnTap: () {},
              icon: Icons.search,
            ),
            CustomIconButton(
              onIconBtnTap: () {},
              icon: Icons.more_vert,
            ),
          ],
          bottom: const TabBar(
            indicatorWeight: 3,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            splashFactory: NoSplash.splashFactory,
            tabs: [
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        body: const TabBarView(children: [
          ChatHomePage(),
          StatusHomePage(),
          CallHomePage(),
        ]),
      ),
    );
  }
}
