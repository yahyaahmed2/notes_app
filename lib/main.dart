import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/constant.dart';
import 'package:notesapp/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/notes_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
return MultiBlocProvider(
  providers: [
    BlocProvider(
      create: (context) => AddNotesCubit(),
    ),
  ],
  child: MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.grey[850],
      fontFamily: 'Schyler',
    ),
    home: const NotesView(),
  ),
);
  }
}
