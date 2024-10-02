import 'package:flutter/material.dart';
import 'package:tugas2/detail/detail_page.dart';
import 'package:tugas2/profile/profile_page.dart';

class HomePage extends StatefulWidget {
  final String username;
  const HomePage({super.key, required this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sociolla"),
        backgroundColor: const Color.fromARGB(255, 241, 123, 123),
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProfilePage(
                  username: widget.username,
                );
              }));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 241, 123, 123),
                      width: 350,
                      height: 200,
                      alignment: Alignment.center,
                      child: Image.asset(
                              'asset/promo1.jpeg', 
                              fit: BoxFit.cover, 
                              width: double.infinity, 
                            ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      color: const Color.fromARGB(255, 243, 39, 39),
                      width: 350,
                      height: 200,
                      alignment: Alignment.center,
                      child: Image.asset(
                              'asset/promo2.jpeg', 
                              fit: BoxFit.cover, 
                              width: double.infinity, 
                            ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      color: const Color.fromARGB(255, 243, 39, 39),
                      width: 350,
                      height: 200,
                      alignment: Alignment.center,
                      child: Image.asset(
                              'asset/promo3.jpeg', 
                              fit: BoxFit.cover, 
                              width: double.infinity, 
                            ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome ${widget.username}!",
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(height: 24),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 4, 
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'asset/produk.jpeg', 
                              fit: BoxFit.cover, 
                              width: double.infinity, 
                            ),
                          ),
                        ),
                        const SizedBox(height: 8), 
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Rose All Day", 
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 4), 
                              const Text("Rp 116.000"), 
                              const SizedBox(height: 8), 
                              SizedBox(
                                width: double.infinity, 
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const DetailPage(), 
                                      ),
                                    );
                                  },
                                  child: const Text('Beli'), 
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
