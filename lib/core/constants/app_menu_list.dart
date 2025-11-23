import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hussam_protfolio/core/extensions/extensions.dart';
import 'package:hussam_protfolio/core/routes/routes.dart';

class AppMenuItem extends Equatable {
  final String title;
  final String route;

  const AppMenuItem({required this.title, required this.route});

  @override
  List<Object?> get props => [title, route];
}

class AppMenuList {
  static List<AppMenuItem> items(BuildContext context) => [
    AppMenuItem(title: context.localizations.home, route: AppRoutes.home),
    AppMenuItem(title: context.localizations.about, route: AppRoutes.about),
    AppMenuItem(title: context.localizations.contact, route: AppRoutes.contact),
  ];
}
