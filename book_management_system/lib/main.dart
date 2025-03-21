import 'package:flutter/material.dart';

void main() {
  runApp(const BookManagementApp());
}

class BookManagementApp extends StatefulWidget {
  const BookManagementApp({super.key});

  @override
  _BookManagementAppState createState() => _BookManagementAppState();
}

class _BookManagementAppState extends State<BookManagementApp> {
  int _selectedIndex = 0;
  List<Map<String, String>> books = [];

  void _addBook(String id, String author, String name) {
    setState(() {
      books.insert(0, {'id': id, 'author': author, 'name': name}); // Insert at the beginning
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        title: const Text('Book Management App'),
        backgroundColor: Colors.amber,
        ),
        body: _selectedIndex == 0 ? BookListPage(books) : AddBookPage(_addBook),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Books'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Book'),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class BookListPage extends StatelessWidget {
  final List<Map<String, String>> books;
  const BookListPage(this.books, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(books[index]['name']!),
            subtitle: Text('Author: ${books[index]['author']}\nID: ${books[index]['id']}'),
          ),
        );
      },
    );
  }
}

class AddBookPage extends StatefulWidget {
  final Function(String, String, String) addBook;
  const AddBookPage(this.addBook, {super.key});

  @override
  _AddBookPageState createState() => _AddBookPageState();
}

class _AddBookPageState extends State<AddBookPage> {
  final _idController = TextEditingController();
  final _authorController = TextEditingController();
  final _nameController = TextEditingController();

  void _submit() {
    if (_idController.text.isNotEmpty && _authorController.text.isNotEmpty && _nameController.text.isNotEmpty) {
      widget.addBook(_idController.text, _authorController.text, _nameController.text);
      _idController.clear();
      _authorController.clear();
      _nameController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(controller: _idController, decoration: const InputDecoration(labelText: 'Book ID')),
          TextField(controller: _authorController, decoration: const InputDecoration(labelText: 'Author')),
          TextField(controller: _nameController, decoration: const InputDecoration(labelText: 'Book Name')),
          const SizedBox(height: 20),
         ElevatedButton(
  onPressed: _submit, 
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.amber, // Set button color
  ),
  child: const Text('Add Book'),
),

        ],
      ),
    );
  }
}
