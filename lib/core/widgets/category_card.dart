import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({super.key});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  bool isExpanded = true;
  String? selectedLetter;

  void toggleExpanded(){
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  void _selectLetter(String letter) {
    setState(() {
      selectedLetter = selectedLetter == letter ? null : letter;
    });
  }

  Color _getDarkerShade(Color color, [double amount = 0.2]) {
    final hsl = HSLColor.fromColor(color);
    final adjustedLightness = (hsl.lightness - amount).clamp(0.0, 1.0);
    return hsl.withLightness(adjustedLightness).toColor();
  }

  /// 👇 Function to build the row of A–D buttons
  Widget _buildLetterButtons() {
    final letters = ["a", "b", "c", "d", "e"]; // example with more letters
    final primaryColor = Theme.of(context).colorScheme.primary;

    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 8.0),
      child: Wrap(
        spacing: 8.0, // horizontal space
        runSpacing: 8.0, // vertical space
        children: letters.map((letter) {
          final isSelected = selectedLetter == letter;
          final foregroundColor = isSelected
              ? _getDarkerShade(primaryColor, 0.3) // 👈 darker shade of primary
              : Colors.black;
          return SizedBox(
            width: 80, // 👈 fix width so 3 fit per row (adjust as needed)
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSelected ? primaryColor : Colors.grey[300],
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)), // rectangle
                ),
              ),
              onPressed: () => _selectLetter(letter),
              child: Text(
                letter,
                style: TextStyle(fontSize: 18,color: isSelected ? foregroundColor : Colors.black),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                   children: [
                     CircleAvatar(
                       radius: 30,
                       child: Icon(Icons.category),
                     ),
                     const SizedBox(width: 16),
                     Text(
                       'Category',
                       style: const TextStyle(
                           fontSize: 16, fontWeight: FontWeight.bold),
                     ),
                   ],
                ),
                IconButton(icon: !isExpanded ?const Icon(Icons.keyboard_arrow_down, size: 24) :
                  const Icon(Icons.keyboard_arrow_up, size: 24),
                onPressed: toggleExpanded,),
              ],
            ),
            if(isExpanded) _buildLetterButtons(),
          ],
        ),
      ),
    );
  }
}
