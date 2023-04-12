import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BookListScreen(),
    );
  }
}

class BookListScreen extends StatefulWidget {
  const BookListScreen({Key? key}) : super(key: key);

  @override
  State<BookListScreen> createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance; /// --> Collection of Database
  List<Book> Books = [];
  bool inProgress = false;

  @override
  void initState() {
    super.initState();
    getBookList();
  }

  Future<void> getBookList() async {
    inProgress = true;
    setState(() {});
    Books.clear();
    await firebaseFirestore.collection('Books').get().then((documents) { /// access the collection from firebaseFirestore }
      for (var doc in documents.docs) {
        Books.add(Book(doc.get('Name'), doc.get('Writer'), doc.get('Year')));
      }
    });

    inProgress = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books Collection'),
      ),
      body: inProgress
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : RefreshIndicator(
        onRefresh: () async {
          getBookList();
        },
        child: ListView.builder(
            itemCount: Books.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(Books[index].name),
                subtitle: Text(Books[index].authorName),
                trailing: Text(Books[index].year),
              );
            }),
      ),
    );
  }
}

class Book {
  final String name, authorName, year;
  Book(this.name, this.authorName, this.year);
}
