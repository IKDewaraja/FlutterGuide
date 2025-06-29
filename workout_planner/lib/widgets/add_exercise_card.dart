import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';

class AddExerciseCard extends StatefulWidget {
  final String exerciseTitle;
  final String exerciseImageUrl;
  final int noOfMinutes;
  final bool isAdded;
  final bool isFavourited;

  final void Function() toggleAddExercise;
  final void Function() toggleAddFavExercise;

  const AddExerciseCard({
    super.key,
    required this.exerciseTitle,
    required this.exerciseImageUrl,
    required this.noOfMinutes,
    required this.toggleAddExercise,
    required this.isAdded,
    required this.toggleAddFavExercise,
     required this.isFavourited, required Null Function() toggleAddFavoriteExercise,
  });

  @override
  State<AddExerciseCard> createState() => _AddExerciseCardState();
}

class _AddExerciseCardState extends State<AddExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kCardBgColor,
        boxShadow: [
          BoxShadow(color: Colors.black12, offset: Offset(0, 2), blurRadius: 2),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Text(
              widget.exerciseTitle,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Image.asset(widget.exerciseImageUrl, fit: BoxFit.cover, width: 100),
            SizedBox(height: 10),

            Text(
              "${widget.noOfMinutes.toString()} Minutes.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: kSubtitleColor,
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      color: kSubtitleColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          widget.toggleAddExercise();
                        },
                        icon: Icon(
                          widget.isAdded ? Icons.remove : Icons.add,

                          color: kMainDarkBlue,
                          size: 30,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      color: kSubtitleColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          widget.toggleAddFavExercise();
                        },
                        icon: Icon(
                        widget.isFavourited  ?  Icons.favorite : Icons.favorite_border,
                          color: kMainPinkColor,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
