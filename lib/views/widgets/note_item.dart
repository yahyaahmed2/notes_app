import 'package:flutter/material.dart';
import 'package:notesapp/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(0xffFFCD7F),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: Text(
                'Flutter tips',
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'Build your career with tharwat samy',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
                color: Colors.black,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 180),
              child: Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  'October 21, 2026',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
