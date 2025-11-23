import 'package:flutter/material.dart';
import 'package:hussam_protfolio/core/constants/app_menu_list.dart';
import 'package:hussam_protfolio/core/theme/app_size.dart';

import '../extensions/extensions.dart';

class LargeAppMenuItemWidget extends StatelessWidget {
  const LargeAppMenuItemWidget(this.item, {super.key, required this.onTap, this.isSelected = false});

  /// The menu item data.
  final AppMenuItem item;

  /// Callback when the menu item is tapped.
  final VoidCallback onTap;

  /// Whether the menu item is selected.
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: Insets.small, horizontal: Insets.medium),
        child: Text(item.title, style: context.textStyles.bodyLgMedium),
      ),
    );
  }
}
