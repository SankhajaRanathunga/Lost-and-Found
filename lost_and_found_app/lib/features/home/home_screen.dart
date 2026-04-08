import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../auth/login_screen.dart';
import 'item_details_screen.dart';
import 'search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'All Items';
  int currentIndex = 0;

  final List<String> categories = [
    'All Items',
    'Electronics',
    'Documents',
    'Books',
    'Bottles',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF6F7F9),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Lost & Found',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
                (route) => false,
              );
            },
            icon: const Icon(Icons.logout, color: Colors.black),
          ),
        ],
      ),

      body: currentIndex == 0 ? _homeContent() : const SearchScreen(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xFF19C28E),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
    );
  }

  Widget _homeContent() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 45,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    final isSelected = selectedCategory == category;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategory = category;
                        });
                      },
                      child: _categoryChip(category, isSelected),
                    );
                  },
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'Recent Findings',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('items')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const CircularProgressIndicator();
                  }

                  final allItems = snapshot.data!.docs;

                  final filteredItems = allItems.where((doc) {
                    final data = doc.data() as Map<String, dynamic>;
                    final category =
                        (data['category'] ?? '').toString().trim();

                    if (selectedCategory == 'All Items') return true;

                    return category.toLowerCase() ==
                        selectedCategory.toLowerCase();
                  }).toList();

                  return Column(
                    children: filteredItems.map((doc) {
                      final data = doc.data() as Map<String, dynamic>;

                      return Column(
                        children: [
                          _itemCard(
                            context,
                            title: data['title'] ?? '',
                            location: data['location'] ?? '',
                            date: data['date'] ?? '',
                            status: data['status'] ?? '',
                            imageUrl: data['imageUrl'] ?? '',
                          ),
                          const SizedBox(height: 16),
                        ],
                      );
                    }).toList(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _categoryChip(String text, bool selected) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: selected ? const Color(0xFF19C28E) : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: selected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  static Widget _itemCard(
    BuildContext context, {
    required String title,
    required String location,
    required String date,
    required String status,
    required String imageUrl,
  }) {
    final bool isCollected = status == 'Collected';

    return GestureDetector(
      onTap: isCollected
          ? null
          : () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemDetailsScreen(
                    title: title,
                    location: location,
                    date: date,
                    status: status,
                    imageUrl: imageUrl,
                  ),
                ),
              );
            },
      child: Opacity(
        opacity: isCollected ? 0.5 : 1.0,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Image.network(imageUrl, width: 70, height: 70),
              const SizedBox(width: 16),
              Expanded(child: Text(title)),
              Text(status),
            ],
          ),
        ),
      ),
    );
  }
}