import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sessionproject/fetching/card_resubale.dart';

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<dynamic> moviesData = []; // List to store movie data

  @override
  void initState() {
    super.initState();
    // Call the function to fetch movie data when the screen initializes
    fetchMovie();
  }

  Future<void> fetchMovie() async {
    try {
      const  url = 'https://api.themoviedb.org/3/movie/now_playing';
      final  headers = {
        "method": 'GET',
        "headers": {
          "accept": 'application/json',
          "Authorization":
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1YzI5MWM1YzNjZTI1OWZjY2IxODU0MDc5OGM5MGQ3MCIsInN1YiI6IjYzZDhkZTM1YTkxMTdmMDA5ZGE0MDI3NCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.32-d9hDkp91rDw98i-VzmDQIOVZA-0DHeIOn9Af2JTI'
        }
      };

      final response = await http.get(Uri.parse(url),headers: headers["headers"] as Map<String, String>);
      final data = jsonDecode(response.body);

      if(response.statusCode == 200){
        setState(() {
          moviesData = data["results"];
        });
      }else{
        throw new Exception("Invalid");
      }


    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: moviesData.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView(
            scrollDirection: Axis.vertical,
              children: [
                Wrap(
                  spacing: 8.0, 
                  runSpacing: 8.0, 
                  children: List.generate(moviesData.length, (index) {
                    return Container(
                      width: MediaQuery.of(context).size.width / 2 - 12, 
                      child: MovieCard(userData: moviesData[index]),
                    );
                  }),
                ),
              ],
            ),
    );
  }
}

// Widget to display movie data in a card
Widget _card(userData) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                "https://image.tmdb.org/t/p/w500/${userData['poster_path']}"),
          ),
          SizedBox(width: 16),
          Expanded(
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
    ),
  );
}
