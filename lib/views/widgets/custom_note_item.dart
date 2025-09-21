import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.color});

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      // height: 20,
      // width: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                'Flutter tips',
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
            ),

            subtitle: Text(
              'build your carrer the Right way with Ahmed',
              style: TextStyle(
                color: Colors.black.withValues(alpha: 0.5),
                fontSize: 18,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.trash, color: Colors.black, size: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24, top: 16),
            child: Text(
              'may , 21 , 2022',
              style: TextStyle(
                color: Colors.black.withValues(alpha: 0.7),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
