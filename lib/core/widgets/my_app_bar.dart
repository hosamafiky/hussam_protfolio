import 'package:flutter/material.dart';
import 'package:hussam_protfolio/core/constants/app_menu_list.dart';
import 'package:hussam_protfolio/core/extensions/extensions.dart';

import '../theme/app_size.dart';
import 'app_bar_drawer_icon.dart';
import 'language_switcher.dart';
import 'large_app_menu_item_widget.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      alignment: Alignment.center,
      height: context.appInsets.appBarHeight,
      constraints: BoxConstraints(maxWidth: Insets.maxWidth),
      padding: EdgeInsets.symmetric(horizontal: context.appInsets.padding),
      decoration: BoxDecoration(color: context.theme.appBarTheme.backgroundColor),
      child: Row(
        children: [
          AppLogo(),
          Spacer(),
          if (context.isDesktop) AppMenus(),
          Spacer(),
          LanguageSwitcher(),
          ThemeSwitcher(),
          if (!context.isDesktop) AppBarDrawerIcon(),
        ],
      ),
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Hussam', style: context.textStyles.titleLgBold);
  }
}

class AppMenus extends StatelessWidget {
  const AppMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: AppMenuList.items(context).map((item) {
        return LargeAppMenuItemWidget(item, onTap: () => Navigator.pushNamed(context, item.route));
      }).toList(),
    );
  }
}

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(value: false, onChanged: (value) {});
  }
}
