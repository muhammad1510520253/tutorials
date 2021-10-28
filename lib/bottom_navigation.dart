import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPage = 0;
  String text = "Home Page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar"),
      ),
      body: Center(
        child: Text(text),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setPage(4, "Add Items"),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: const CircularNotchedRectangle(),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () => setPage(0, "Home Page"),
                  icon: Icon(
                    Icons.home,
                    color: currentPage == 0 ? Colors.white : Colors.grey,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () => setPage(1, "Search Page"),
                  icon: Icon(
                    Icons.search,
                    color: currentPage == 1 ? Colors.white : Colors.grey,
                    size: 30,
                  )),
              const SizedBox(),
              IconButton(
                  onPressed: () => setPage(2, "Notifications Page"),
                  icon: Icon(
                    Icons.notifications,
                    color: currentPage == 2 ? Colors.white : Colors.grey,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () => setPage(3, "History Page"),
                  icon: Icon(
                    Icons.history,
                    color: currentPage == 3 ? Colors.white : Colors.grey,
                    size: 30,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void setPage(int index, String text) {
    setState(() {
      currentPage = index;
      this.text = text;
    });
  }
}
