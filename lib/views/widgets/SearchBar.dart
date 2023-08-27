import "package:flutter/material.dart";

class SearchBarInput extends StatelessWidget {
  const SearchBarInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Color.fromARGB(66, 224, 222, 222),
          border: Border.all(color: const Color.fromARGB(38, 0, 0, 0)),
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Wallpapers",
                errorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
              ),
            ),
          ),
          InkWell(
              onTap: () {
                print("Searching...");
              },
              child: Icon(Icons.search))
        ],
      ),
    );
  }
}
