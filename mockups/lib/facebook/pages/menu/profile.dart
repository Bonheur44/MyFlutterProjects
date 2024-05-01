import 'package:mockups/facebook/constants/colors.dart';
import 'package:mockups/facebook/tmp/text.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_outlined, size: 30),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search, size: 30))],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(height: height / 3.75),
                Image.asset('img/cover-picture.jpg', height: height / 5, width: double.infinity, fit: BoxFit.cover),
                Positioned(
                  top: 50,
                  left: 15,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      const CircleAvatar(
                        radius: 75,
                        backgroundColor: white,
                        child: CircleAvatar(radius: 70, foregroundImage: AssetImage('img/profile-pic.jpg')),
                      ),
                      CircleAvatar(
                        backgroundColor: white,
                        radius: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: IconButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(backgroundColor: grey300),
                            icon: const Icon(Icons.camera_alt, size: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 100,
                  right: 15,
                  child: CircleAvatar(
                    backgroundColor: white,
                    radius: 20,
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: IconButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[300]),
                        icon: const Icon(Icons.camera_alt, size: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ElegantText("Daniela Giménez", weight: FontWeight.w700, size: 22),
                  const SizedBox(height: 5),
                  const ElegantText("spreading love, one corgi pic at a time", size: 18),
                  const SizedBox(height: 5),
                  Wrap(
                    spacing: 4.5,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(backgroundColor: primary, fixedSize: const Size.fromWidth(133)),
                        child: const Row(
                          children: [
                            Icon(Icons.add, color: white),
                            SizedBox(width: 5),
                            ElegantText("Add to story", color: white)
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(backgroundColor: grey300, fixedSize: const Size.fromWidth(124)),
                        child: const Row(
                          children: [
                            Icon(Icons.edit, color: black),
                            SizedBox(width: 5),
                            ElegantText("Edit profile", color: black)
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(backgroundColor: grey300, fixedSize: const Size.fromWidth(20)),
                        child: const Icon(Icons.more_horiz, color: black),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Divider(color: grey300, thickness: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          color: primary.withOpacity(.1),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const ElegantText("Posts", weight: FontWeight.w500, color: primary),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: const ElegantText("Photos", weight: FontWeight.w500),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: const ElegantText("Reels", weight: FontWeight.w500),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  const Divider(),
                  const SizedBox(height: 8),
                  const ElegantText("Details", weight: FontWeight.w500, size: 20),
                  const SizedBox(height: 5),
                  _detail(Icons.school, "Studied at", "Texas A&M"),
                  _detail(Icons.school, "Went to", "Carnegie Vanguard High"),
                  _detail(Icons.house, "Lives in", "San Francisco, California"),
                  _detail(Icons.location_on, "From", "Austin, Texas"),
                  _detail(Icons.access_time_filled_outlined, "Joined April 2016", ""),
                  _detail(Icons.more_horiz, "See you About info", ""),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _detail(IconData iconData, String firstText, String secondText) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Icon(iconData, color: grey, size: 28),
          const SizedBox(width: 10),
          Text.rich(
            TextSpan(
              children: [
                WidgetSpan(child: ElegantText("$firstText ", size: 19)),
                WidgetSpan(child: ElegantText(secondText, size: 19, weight: FontWeight.w500))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
