import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

import 'home_controller.dart';

const _preferredSize = 152.0;
const _middleIconSize = 56.0;
const _userImageSize = 48.0;
const _borderRadiusSize = 5.0;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();
  final pages = [
    Container(color: Colors.red),
    Container(color: Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: pages[homeController.currentPage],
      bottomNavigationBar: SizedBox(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                homeController.setPage(0);
                setState(() {});
              },
              color: AppColors.primary,
            ),
            GestureDetector(
              onTap: () {
                print("clicou no iconezinho");
              },
              child: Container(
                width: _middleIconSize,
                height: _middleIconSize,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(_borderRadiusSize),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.add_box_outlined,
                    color: AppColors.background,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.description_outlined),
              onPressed: () {
                homeController.setPage(1);
                setState(() {});
              },
              color: AppColors.body,
            ),
          ],
        ),
      ),
    );
  }

  PreferredSize homeAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(_preferredSize),
      child: Container(
        height: _preferredSize,
        color: AppColors.primary,
        child: Center(
          child: ListTile(
            title: Text.rich(
              TextSpan(
                  text: "Olá, ",
                  style: TextStyles.titleRegular,
                  children: [
                    TextSpan(
                        text: "Pierre", style: TextStyles.titleBoldBackground)
                  ]),
            ),
            subtitle: Text(
              "Mantenha suas contas em dia",
              style: TextStyles.captionShape,
            ),
            trailing: Container(
              height: _userImageSize,
              width: _userImageSize,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(_borderRadiusSize)),
            ),
          ),
        ),
      ),
    );
  }
}
