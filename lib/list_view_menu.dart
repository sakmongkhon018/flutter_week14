import 'package:flutter/material.dart';

class ListMenu{
  final String? title;
  final String? subtitle;
  final IconData? icon;
  const ListMenu({ this.title, this.subtitle, this.icon});
}

List<ListMenu>menus=[
  const ListMenu(title: "MENU-1",subtitle: 'SUB-1',icon: Icons.person),
  const ListMenu(title: "MENU-2",subtitle: 'SUB-2',icon: Icons.person_add),
  const ListMenu(title: "MENU-3",subtitle: 'SUB-3',icon: Icons.wifi),
  const ListMenu(title: "MENU-4",subtitle: 'SUB-4',icon: Icons.home)
];

class ListViewMeru extends StatelessWidget {
  const ListViewMeru({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Meru"),
      ),
      body: Container(
        child: ListView.separated(
          padding: EdgeInsets.all(8.0),
          itemCount: menus.length,
          itemBuilder: (_, index){
            return Divider(color: Colors.red);
          }, separatorBuilder: (context, index){
          return ListTile(
            title: Text('${menus[index].title}'),
            subtitle: Text('${menus[index].subtitle}'),
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              debugPrint(menus[index].title);
            },
          );
        },
        ),
      ),
    );
  }
}