import 'package:flutter/material.dart';

class MoviesCard extends StatelessWidget {

  final imageUrl;
  final String title;
  final date;

  const MoviesCard({super.key,required this.imageUrl,required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image:  DecorationImage(
                        image: NetworkImage("$imageUrl")
                      ),
                    ),
                ),
                const SizedBox(
                  width: 10,
                ),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Text("$title",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),),
                    SizedBox(
                      height: 20,
                    ),
                    Text("$date",style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),),
                  ],
                )
              ],
            ),
            
          ],
        ),
      ),
    ) ;
  }
}