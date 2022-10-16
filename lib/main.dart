import 'package:flutter/material.dart';
import 'package:flutter_ui_challegnes101_day_1_telegram_ui/widgets/contacts.dart';
import 'package:flutter_ui_challegnes101_day_1_telegram_ui/widgets/drawerMenuItem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.account_box_outlined),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: Text("Telegram"),
        actions: [
          Icon(
            Icons.search,
            size: 30,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.blue.shade400,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Stack(children: [
                          CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  ExactAssetImage("images/uzim.jpg")),
                        ]),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "</Doniyorbek_Uralov>",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Text(
                                "+998900068629",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 12),
                              )),
                          Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.expand_more,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [Icon(Icons.group,color: Colors.black38),
                  SizedBox(width: 10,),
                  Text("Yangi guruh",style: TextStyle(fontSize: 16),)
                  ],
                ),
              ),
              DrawerItem(itemText: "Kontaktlar", itemIcon:Icons.contact_page),
              DrawerItem(itemText: "Chaqiruvlar", itemIcon:Icons.call),
              DrawerItem(itemText: "Yaqin-atrofdagi odamlar", itemIcon:Icons.my_location),
              DrawerItem(itemText: "Saqlangan xabarlar", itemIcon:Icons.cloud_circle),
              DrawerItem(itemText: "Sozlamalar", itemIcon:Icons.settings),
              DrawerItem(itemText: "Yaqinlarni taklif qilish", itemIcon:Icons.new_releases),
              DrawerItem(itemText: "Telegram funksiyalari", itemIcon:Icons.contact_support),

            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Contacts(
              contactImage: AssetImage("images/ph.jpg"),
              contactNick: "Saud Abdulwahed",
              contactLastMessage: "Siz telegramga a'zo bo'ldingiz",
              message: 1,
            ),
            Contacts(
              contactImage: AssetImage("images/txp.jpg"),
              contactNick: "Texnoplov | Техноплов",
              contactLastMessage: "Hindistonda korrupsiyaga qar...",
            ),
            Contacts(
              contactImage: AssetImage("images/ph1.jpg"),
              contactNick: "Instagram Saver bot",
              contactLastMessage: "Thanks for using inst...",
            ),
            Contacts(
              contactImage: AssetImage("images/d1.jpg"),
              contactNick: "Deleted Account",
              contactLastMessage: "Tarix tozalandi",
            ),
            Contacts(
              contactImage: AssetImage("images/e1.jpg"),
              contactNick: "Elon Musk, \✅",
              contactLastMessage: "What happened to our business",
              message: 1,
            ),
            Contacts(
              contactImage: AssetImage("images/mp.jpg"),
              contactNick: "Moy prezident \✅️",
              contactLastMessage: "Hech qachon yuqotma uzingdi",
              message: 1,
            ),
            Contacts(
              contactImage: AssetImage("images/tg.jpg"),
              contactNick: "Telegram \✅️",
              contactLastMessage: "⭐ Telegram Premium obunasi",
              message: 1,
            ),
            Contacts(
              contactImage: AssetImage("images/y1.jpg"),
              contactNick: "\🚧  Yunusobod 1,39",
              contactLastMessage: "Abdullayev \🎮: Men uzga sayyora..",
              message: 7,
            ),
            Contacts(
              contactImage: AssetImage("images/vk.jpg"),
              contactNick: "VKM bot",
              contactLastMessage: "Dj Smash - Volna",
            ),
            Contacts(
              contactImage: AssetImage("images/assi.jpg"),
              contactNick: "Abdullayev \🎮",
              contactLastMessage: "Rasmimni qaydan oldiz aka",
              message: 1,
            ),
            Contacts(
              contactImage: AssetImage("images/ozod.jpg"),
              contactNick: "•𒊹ইঠ 𝗠𝗜𝗖𝗥𝗢 𝗦𝗧𝗔𝗥 ইঠ●•",
              contactLastMessage: "12 kvartalda tizzalab qoldim yuln...",
              message: 1,
            ),
            Contacts(
              contactImage: AssetImage("images/komi.jpg"),
              contactNick: "Mr.Komilov",
              contactLastMessage: "Aka flatter deyishni urgandim",
              message: 1,
            ),
            Contacts(
              contactImage: AssetImage("images/download.png"),
              contactNick: "Sultan xonadosh",
              contactLastMessage: "aka glavnimga qarang",
              message: 1,
            ),
            Contacts(
              contactImage: AssetImage("images/munis.jpg"),
              contactNick: "Munisa Rizayeva \✅️",
              contactLastMessage: "Sizni sevib qoldim",
              message: 9,
            ),
            Contacts(
              contactImage: AssetImage("images/ph.jpg"),
              contactNick: "Saud Abdulwahed",
              contactLastMessage: "Siz telegramga a'zo bo'ldingiz",
              message: 1,
            ),
            Contacts(
              contactImage: AssetImage("images/ph.jpg"),
              contactNick: "Saud Abdulwahed",
              contactLastMessage: "Siz telegramga a'zo bo'ldingiz",
              message: 1,
            ),
            Contacts(
              contactImage: AssetImage("images/txp.jpg"),
              contactNick: "Texnoplov | Техноплов",
              contactLastMessage: "Hindistonda korrupsiyaga qar...",
            ),
            Contacts(
              contactImage: AssetImage("images/ph1.jpg"),
              contactNick: "Instagram Saver bot",
              contactLastMessage: "Thanks for using inst...",
            ),
            Contacts(
              contactImage: AssetImage("images/d1.jpg"),
              contactNick: "Deleted Account",
              contactLastMessage: "Tarix tozalandi",
            ),
            Contacts(
              contactImage: AssetImage("images/e1.jpg"),
              contactNick: "Elon Musk, \✅",
              contactLastMessage: "What happened to our business",
              message: 1,
            ),
            Contacts(
              contactImage: AssetImage("images/mp.jpg"),
              contactNick: "Moy prezident \✅️",
              contactLastMessage: "Hech qachon yuqotma uzingdi",
              message: 1,
            ),
            Contacts(
              contactImage: AssetImage("images/tg.jpg"),
              contactNick: "Telegram \✅️",
              contactLastMessage: "⭐ Telegram Premium obunasi",
              message: 1,
            ),
            Contacts(
              contactImage: AssetImage("images/y1.jpg"),
              contactNick: "\🚧  Yunusobod 1,39",
              contactLastMessage: "Abdullayev \🎮: Men uzga sayyora..",
              message: 7,
            ),
            Contacts(
              contactImage: AssetImage("images/vk.jpg"),
              contactNick: "VKM bot",
              contactLastMessage: "Dj Smash - Volna",
            ),
            Contacts(
              contactImage: AssetImage("images/assi.jpg"),
              contactNick: "Abdullayev \🎮",
              contactLastMessage: "Rasmimni qaydan oldiz aka",
              message: 1,
            ),
            Contacts(
              contactImage: AssetImage("images/ozod.jpg"),
              contactNick: "•𒊹ইঠ 𝗠𝗜𝗖𝗥𝗢 𝗦𝗧𝗔𝗥 ইঠ●•",
              contactLastMessage: "12 kvartalda tizzalab qoldim yuln...",
              message: 1,
            ),
            Contacts(
              contactImage: AssetImage("images/komi.jpg"),
              contactNick: "Mr.Komilov",
              contactLastMessage: "Aka flatter deyishni urgandim",
              message: 1,
            ),
            Contacts(
              contactImage: AssetImage("images/download.png"),
              contactNick: "Sultan xonadosh",
              contactLastMessage: "aka glavnimga qarang",
              message: 1,
            ),
            Contacts(
              contactImage: AssetImage("images/munis.jpg"),
              contactNick: "Munisa Rizayeva \✅️",
              contactLastMessage: "Sizni sevib qoldim",
              message: 9,
            ),
            Contacts(
              contactImage: AssetImage("images/ph.jpg"),
              contactNick: "Saud Abdulwahed",
              contactLastMessage: "Siz telegramga a'zo bo'ldingiz",
              message: 1,
            ),
          ],
        ),
      ),
    );
  }
}
