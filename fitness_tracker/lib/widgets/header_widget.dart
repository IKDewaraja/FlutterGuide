import 'package:fitness_tracker/constants/colors.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            style: const TextStyle(
              color: greyColor,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: cardBgColor,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent)
                ),
                labelStyle: TextStyle(
                  color: greyColor,

                
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
               
                  ),
             
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 5
                  ),
                     hintText: "Search",
                     hintStyle: TextStyle(
                      color: greyColor,
                
                ),

                      prefixIcon: Icon(
                        Icons.search,
                        color: greyColor,
                        size: 21,
                      ),
                    ),
                  ),
        
      ),
      ],
      );
            
  }}