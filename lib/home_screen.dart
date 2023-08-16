import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("GetX Tutorial")),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Card(
              child: ListTile(
                title: Text("GetX Snack bar"),
                subtitle: Text("Showing Snack bar with GetX"),
                onTap: () {
                  Get.snackbar("Siva Teja", "Testing GetX Utils", backgroundColor: Colors.red, colorText: Colors.white, snackPosition: SnackPosition.BOTTOM, icon: Icon(Icons.add, color: Colors.white), onTap: (snap) {});
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("GetX Alert Dialog"),
                subtitle: Text("Showing Alert Dialog with GetX"),
                onTap: () {
                  Get.defaultDialog(
                      title: "Delete Chat",
                      titlePadding: EdgeInsets.only(top: 20),
                      middleText: "Are you sure you want to delete this chat?",
                      contentPadding: EdgeInsets.all(20),
                      confirm: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Yes", style: TextStyle(color: Colors.green))),
                      cancel: TextButton(
                        onPressed: () {
                          // Navigator.pop(context);
                          Get.back();
                        },
                        child: Text("No", style: TextStyle(color: Colors.red)),
                      ),
                      content: Column(
                        children: [Text("Content 1")],
                      ));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("GetX Bottom sheet"),
                subtitle: Text("Showing Bottom sheet with GetX"),
                onTap: () {
                  Get.bottomSheet(Container(
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text("Light Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text("Dark Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("GetX Navigator"),
                subtitle: Text("Navigating screen with GetX"),
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
                  // Get.to(() => SecondScreen(name: " Siva teja",));
                  Get.toNamed("/second_screen", arguments: ["Siva teja"]);
                },
              ),
            ),
            Card(
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.1,
                height: Get.height * 0.25,
                width: Get.width * 1,
                color: Colors.red,
                child: Center(child: Text("Screen Width/height using GetX")),
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text("GetX Localisation"),
                    subtitle: Text("Updating Localisation using GetX Localisation"),
                  ),
                  ListTile(
                    title: Text("message".tr),
                    subtitle: Text("name".tr),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                          onPressed: () {
                            Get.updateLocale(Locale("en", "US"));
                          },
                          child: Text("English")),
                      OutlinedButton(
                          onPressed: () {
                            Get.updateLocale(Locale("te", "IN"));
                          },
                          child: Text("Telugu")),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
