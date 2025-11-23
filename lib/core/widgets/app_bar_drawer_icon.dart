import 'package:flutter/material.dart';

class AppBarDrawerIcon extends StatefulWidget {
  const AppBarDrawerIcon({super.key});

  @override
  State<AppBarDrawerIcon> createState() => _AppBarDrawerIconState();
}

class _AppBarDrawerIconState extends State<AppBarDrawerIcon> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  bool _isMenuOpen = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 200));
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: _animation),
      onPressed: () {
        if (_isMenuOpen) {
          _controller.reverse();
        } else {
          _controller.forward();
        }

        setState(() {
          _isMenuOpen = !_isMenuOpen;
        });
      },
    );
  }
}
