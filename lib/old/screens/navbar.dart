import 'package:flutter/material.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/constants/styles.dart';

class ResponsiveNavBar extends StatelessWidget {
  final List<String> menuItems = ['Projects', 'Resume', 'Skills', 'Contact'];

  ResponsiveNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return DesktopNavBar(menuItems: menuItems);
        } else {
          return MobileNavBar(menuItems: menuItems);
        }
      },
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  final List<String> menuItems;

  const DesktopNavBar({super.key, required this.menuItems});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
        padding: EdgeInsets.only(
          top: height() * 0.01,
        ),
        child: Row(
          children: [
            const Spacer(),
            Row(
              children: menuItems
                  .map(
                    (item) => Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width() * 0.02,
                      ),
                      child: Text(
                        item,
                        style: TextStyles.style18bold,
                      ),
                    ),
                  )
                  .toList(),
            ),
            horizontalSpace(
              0.05,
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  final List<String> menuItems;

  const MobileNavBar({super.key, required this.menuItems});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
          ),
        ),
        const SizedBox(
          width: 20,
        )
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(),
      ),
    );
  }
}

class MobileDrawer extends StatelessWidget {
  final List<String> menuItems;

  const MobileDrawer({super.key, required this.menuItems});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.purple.shade900,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
            ...menuItems.map(
              (item) => ListTile(
                title: Text(
                  item.toUpperCase(),
                  style: TextStyles.style18bold,
                ),
                onTap: () {
                  // Handle navigation here
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
