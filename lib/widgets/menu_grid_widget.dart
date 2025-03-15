import 'package:flutter/material.dart';

final menus = [
  {
    "menu": "Home",
    "icon": Icon(Icons.home)
  },
  {
    "menu": "Profile",
    "icon": Icon(Icons.person)
  },
  {
    "menu": "Settings",
    "icon": Icon(Icons.settings)
  },
  {
    "menu": "Notif",
    "icon": Icon(Icons.notifications)
  },
  {
    "menu": "Messages",
    "icon": Icon(Icons.message)
  },
  {
    "menu": "Calendar",
    "icon": Icon(Icons.calendar_today)
  },
  {
    "menu": "Gallery",
    "icon": Icon(Icons.photo_library)
  },
  {
    "menu": "Downloads",
    "icon": Icon(Icons.download)
  },
  {
    "menu": "Favorites",
    "icon": Icon(Icons.favorite)
  },
  {
    "menu": "Search",
    "icon": Icon(Icons.search)
  },
  {
    "menu": "Flutter",
    "icon": Image.asset(
      "assets/logo.png",
    )
  }
];

class MenuGridWidget extends StatelessWidget {
  
  final Function(String menu)? onClick;
  
  const MenuGridWidget({
    super.key,
    this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: menus.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => onClick?.call(menus[index]['menu'] as String),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8,
            children: [
              SizedBox(
                width: 28,
                height: 28,
                child: menus[index]['icon'] as Widget,
              ),
              Text(menus[index]['menu'] as String)
            ],
          ),
        ),
      ),
    );
  }
}