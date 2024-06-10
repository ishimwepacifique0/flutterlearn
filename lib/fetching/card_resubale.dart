import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final userData;

  const MovieCard({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Movie poster image
          Container(
            width: double.infinity/2,
            height: 200, // Adjust the height as needed
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://image.tmdb.org/t/p/w500/${userData['poster_path']}"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Movie details
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  userData['title'],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 8),
                Text(
                  'Release Date: ${userData['release_date']}',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
