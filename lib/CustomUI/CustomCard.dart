import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blueGrey,
                child: SvgPicture.asset(
                  "assets/groups.svg",
                  color: Colors.white,
                  width: 37,
                  height: 37,
                ),
              ),
              title: Text(
                "Chamath",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.done_all),
                  SizedBox(width: 3),
                  Text(
                    "Hi Chamath",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              trailing: Text("18:04"),
            ),
            Padding(padding: const EdgeInsets.only(right: 20, left: 80)),
            Divider(
              thickness: 1,
            ),
          ],
        ));
  }
}
