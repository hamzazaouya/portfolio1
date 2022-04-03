import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
                color: Colors.black,
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 40,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("img/avatar.jpg"),
                        radius: 35,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hamza Zaouya",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Divider(
                            height: 5,
                          ),
                          Text("Software Engineer",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15))
                        ],
                      ),
                    )
                  ],
                )),
            Divider(
              height: 1,
              color: Colors.white,
            ),
            Container(
              color: Colors.black.withOpacity(.8),
              child: Column(
                children: [
                  ListTile(
                    trailing: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      "HomePage",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    height: 1,
                    color: Colors.red,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(),
      body: Container(height: 200, width: 200, color: Colors.red),
    );
  }
}

class Slides extends StatefulWidget {
  String? title;
  Widget iconName;
  Function f;
  Slides(this.title, this.iconName, this.f);
  @override
  State<Slides> createState() => _SlidesState();
}

class _SlidesState extends State<Slides> {
  

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: widget.iconName,
      title: Text(
        widget.title!,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      onTap: widget.f,
    );
  }
}
