import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        "name": "Category",
        "icon": Icons.category, // Assuming using Material Icons
        "color": const Color(0xFFFFCF2F),
      },
      {
        "name": "Classes",
        "icon": Icons.video_library,
        "color": const Color(0xFF6FE08D),
      },
      {
        "name": "Free Courses",
        "icon": Icons.assignment,
        "color": const Color(0xFF61BDFD),
      },
      {
        "name": "Book Store",
        "icon": Icons.store,
        "color": const Color(0xFFFC7C7F),
      },
      {
        "name": "Live Course",
        "icon": Icons.play_circle_fill,
        "color": const Color(0xFFCB84FB),
      },
      {
        "name": "Leaderboard",
        "icon": Icons.emoji_events,
        "color": const Color(0XFF78E667),
      },
    ];

    List imageList = [
      'Flutter',
      'React Native',
      'Python',
      'C#',
    ];

    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text("Hii, Users",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          color: Colors.white)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 10),
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Search here...",
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(0.5)),
                        border: InputBorder.none,
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 25,
                        )),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15, top: 20),
            child: Column(
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 1.1),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Column(children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: categories[index]["color"],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            categories[index]["icon"],
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        categories[index]["name"],
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      )
                    ]);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Courses",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 14, color: Colors.blue.withOpacity(0.7)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: imageList.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio:
                          (MediaQuery.of(context).size.height - 50 - 25) /
                              (4 * 240),
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        decoration: BoxDecoration(
                          color: const Color(0xffff5f3ff),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                  "assets/${imageList[index]}.png",
                                  height: 100,
                                  width: 100),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              imageList[index],
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "55 videos",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.5)),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
