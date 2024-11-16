import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});

  final void Function(String identifier) onSelectScreen;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.primary.withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 48,
                  color: Theme.of(context).colorScheme.surface,
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  'Cooking up!',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.surface,
                      ),
                )
              ],
            ),
          ),
          ListTile(
            onTap: (){onSelectScreen('meals');},
            leading: Icon(
              Icons.restaurant,
              size: 26,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            title: const Text('Meals'),
          ),
          ListTile(
            onTap: (){onSelectScreen('filter');},
            leading: Icon(
              Icons.settings,
              size: 26,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            title: const Text('Filters'),
          )
        ],
      ),
    );
  }
}
