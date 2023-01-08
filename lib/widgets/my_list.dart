import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomListTile extends StatelessWidget {
  final String imageUrl;
  final String userName;
  final String repoName;
  final String repoDescription;
  final int starCount;
  final int daysCount;

  CustomListTile({
    required this.imageUrl,
    required this.userName,
    required this.repoName,
    required this.repoDescription,
    required this.starCount,
    required this.daysCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text(
              '$userName created a repository $userName/$repoName',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            subtitle: Text(
              '$daysCount days ago',
              style: TextStyle(
                color: Color.fromARGB(255, 104, 104, 104),
                fontSize: 14,
              ),
            ),
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.fromLTRB(14, 6, 14, 0),
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      repoName,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Text(
                      repoDescription,
                      style: TextStyle(
                        color: Color.fromARGB(255, 104, 104, 104),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 12),
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '$starCount Star',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
