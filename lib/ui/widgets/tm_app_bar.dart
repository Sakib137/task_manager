import 'package:flutter/material.dart';
import 'package:task_manager/ui/screen/update_profile_screen.dart';
import 'package:task_manager/ui/utills/app_colour.dart';

class TMAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TMAppbar({
    super.key,
    this.fromUpdateProfile = false,
  });

  final bool fromUpdateProfile;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AppBar(
      title: Row(
        children: [
          const CircleAvatar(),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (!fromUpdateProfile) {
                  Navigator.pushNamed(context, UpdateProfileScreen.name);
                }
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Md Sakib Al Hasan",
                    style: textTheme.titleSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "mdsakib124202@gmail.com",
                    style: textTheme.titleSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout_outlined),
          ),
        ],
      ),
      backgroundColor: AppColour.themeColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
