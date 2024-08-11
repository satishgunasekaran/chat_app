import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/theme_provider.dart';

class Sidebar extends ConsumerWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('My App'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () => GoRouter.of(context).go('/'),
          ),
          ListTile(
            title: const Text('Profile'),
            onTap: () => GoRouter.of(context).go('/profile'),
          ),
          ListTile(
            title: const Text('Toggle Theme'),
            onTap: () => ref.read(themeModeProvider.notifier).toggleTheme(),
          ),
        ],
      ),
    );
  }
}