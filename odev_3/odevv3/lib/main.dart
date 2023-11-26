import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 251, 251),
        body: Column(
          children: [
            headermenu(),
            Expanded(
              child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(children: [
                    searchbox(),
                    Divider(),
                    toplocation(),
                    Divider(),
                    nearlocations(),
                    Divider(),
                    suggestions(),
                    Divider(),
                    toprated(),
                  ]),
                ),
              ),
            ),
            bottommenu(),
          ],
        ),
      ),
    );
  }

  Widget toprated() => Container(
          child: Column(
        children: [
          titleitem("Top Rated", "View all"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                locations_item("assets/images/res1.jpeg", "Yeşilpınar Mh.",
                    "7km from you", "₺ 14"),
                locations_item("assets/images/res2.webp", "Sarıyer",
                    "12km from you", "₺ 19"),
                locations_item(
                    "assets/images/res3.jpg", "Şişli", "4km from you", "₺ 25"),
                locations_item("assets/images/res4.webp", "Gaziosmanpaşa",
                    "9km from you", "₺ 66"),
                locations_item("assets/images/res5.jpg", "Bağcılar",
                    "7km from you", "₺ 14"),
              ],
            ),
          )
        ],
      ));
  Widget suggestions() => Container(
          child: Column(
        children: [
          titleitem("Suggestions", "View all"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                locations_item("assets/images/res1.jpeg", "Yeşilpınar Mh.",
                    "7km from you", "₺ 14"),
                locations_item("assets/images/res2.webp", "Sarıyer",
                    "12km from you", "₺ 19"),
                locations_item(
                    "assets/images/res3.jpg", "Şişli", "4km from you", "₺ 25"),
                locations_item("assets/images/res4.webp", "Gaziosmanpaşa",
                    "9km from you", "₺ 66"),
                locations_item("assets/images/res5.jpg", "Bağcılar",
                    "7km from you", "₺ 14"),
              ],
            ),
          )
        ],
      ));
  Widget nearlocations() => Container(
          child: Column(
        children: [
          titleitem("Near You", "View all"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                locations_item("assets/images/res1.jpeg", "Yeşilpınar Mh.",
                    "7km from you", "₺ 14"),
                locations_item("assets/images/res2.webp", "Sarıyer",
                    "12km from you", "₺ 19"),
                locations_item(
                    "assets/images/res3.jpg", "Şişli", "4km from you", "₺ 25"),
                locations_item("assets/images/res4.webp", "Gaziosmanpaşa",
                    "9km from you", "₺ 66"),
                locations_item("assets/images/res5.jpg", "Bağcılar",
                    "7km from you", "₺ 14"),
              ],
            ),
          )
        ],
      ));

  Widget locations_item(
          String photo, String title, String description, String fiyat) =>
      Container(
        width: 165,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color.fromARGB(15, 170, 170, 170),
            ),
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            ClipRRect(borderRadius: BorderRadius.circular(18)),
            Image.asset(width: 150, photo),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 56, 56, 56),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 8,
                        ),
                        SizedBox(width: 2),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(236, 125, 87, 1),
                      borderRadius: BorderRadiusDirectional.circular(8),
                    ),
                    child: Text(
                      fiyat,
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
          ],
        ),
      );

  Widget toplocation() => Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleitem("Top Locations", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  storyitem("assets/images/res10.jpg", "Mustafa Oğuz"),
                  storyitem("assets/images/res6.jpg", "Caner Doğan"),
                  storyitem("assets/images/res7.jpg", "Kemal Demir"),
                  storyitem("assets/images/res8.jpg", "Sena Bezirkan"),
                  storyitem("assets/images/res9.jpg", "Emir Ulubaş"),
                  storyitem("assets/images/res6.jpg", "Kerem Kaya"),
                  storyitem("assets/images/res9.jpg", "Gökay Adıgüzel"),
                  storyitem("assets/images/res8.jpg", "Deniz Yıldız"),
                  storyitem("assets/images/res10.jpg", "Batuhan Telli"),
                  storyitem("assets/images/res7.jpg", "Mert Ay"),
                  storyitem("assets/images/res10.jpg", "Mustafa Oğuz"),
                  storyitem("assets/images/res8.jpg", "Mustafa Oğuz"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget searchbox() => Container(
        height: 50,
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color.fromARGB(15, 170, 170, 170),
            ),
            borderRadius: BorderRadius.circular(25)),
        child: Row(
          children: [
            Row(
              children: [
                Icon(Icons.location_on, size: 15, color: Colors.grey),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Caferağa , Kadikoy",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Icon(Icons.tune, size: 15, color: Color.fromRGBO(236, 125, 87, 1))
          ],
        ),
      );

  Widget storyitem(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 241, 156, 101),
                  Color.fromARGB(255, 237, 128, 94)
                ]),
                shape: BoxShape.circle),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 32,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(name,
              style: TextStyle(
                color: Color.fromARGB(255, 153, 153, 153),
                fontSize: 10,
              )),
        ],
      ),
    );
  }

  Padding titleitem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 56, 56, 56),
              fontSize: 16,
            ),
          ),
          Text(
            link,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget headermenu() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome , Mustafa",
                  style: TextStyle(
                    color: Color.fromARGB(255, 153, 153, 153),
                    fontSize: 14,
                  )),
              Text("Explore Istanbul City",
                  style: TextStyle(
                    color: Color.fromARGB(255, 56, 56, 56),
                    fontSize: 16,
                  )),
            ],
          ),
          Row(
            children: [
              Container(
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(6.0),
                child: Icon(
                  Icons.sunny,
                  color: Color.fromRGBO(236, 125, 87, 1),
                  size: 18,
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(6.0),
                child: Icon(
                  Icons.notifications,
                  size: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget bottommenu() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
        color: Color.fromARGB(1, 243, 243, 243),
        width: 1,
      )),
      height: 70,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        bottommenuitem("Home", Icons.home, true),
        bottommenuitem("Moments", Icons.groups, false),
        HighlightedItem("Book", Icons.maps_ugc),
        bottommenuitem("Chat ", Icons.forum, false),
        bottommenuitem("Profile", Icons.person, false),
      ]),
    );
  }

  Widget bottommenuitem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(174, 174, 178, 1);
    if (active) {
      renk = Color.fromRGBO(43, 43, 43, 1);
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 25,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(title,
              style: TextStyle(
                fontSize: 10,
                color: renk,
              )),
        ],
      ),
    );
  }

  Widget HighlightedItem(String title, IconData icon) {
    var renk = Color.fromRGBO(236, 125, 87, 1);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 32,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(title,
              style: TextStyle(
                fontSize: 10,
                color: renk,
              )),
        ],
      ),
    );
  }
}
