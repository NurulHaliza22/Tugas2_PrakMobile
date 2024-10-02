import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rose All Day"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 241, 123, 123),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(

                child:
        Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Center(
            child: produk(),
          ),
          const SizedBox(height: 20),
          Center(
            child: productDetails(),
          ),
          const SizedBox(height: 20),
          Center(
            child: deskripsi(),
          ),
          const SizedBox(height: 20),
          Center(
            child: harga(context), // Pass context to harga
          ),
          const SizedBox(height: 20),
        ],
      ),
    
      ),
    );
  }
}

Widget produk() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Image.asset(
      'asset/produk.jpeg',
      width: 200.0, // Set width for the image
      height: 200.0, // Set height for the image
      fit: BoxFit.cover, // Ensures the image covers the specified dimensions
    ),
  );
}

Widget productDetails() {
  return Container(
    width: 300.0, // Set the same width as the image
    padding: const EdgeInsets.symmetric(horizontal: 20), // Padding for the row
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Spaces out the text and icon
      children: [
        Text(
          "Rose All Day",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.star, // Rating icon
              color: Color.fromARGB(255, 241, 123, 123),
              size: 24.0,
            ),
            SizedBox(width: 5), // Add some space between the icon and text
            Text(
              "4.9",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black, // Set the color of the rate text
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget deskripsi() {
  return Container(
    width: 300.0,
    padding: const EdgeInsets.symmetric(horizontal: 20), // Padding for the container
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the left
      children: [
        Text(
          "Description",
          style: TextStyle(
            fontSize: 20, // Optional: makes the title bold
          ),
        ),
        SizedBox(height: 5), // Reduced space between title and description
        Text(
          "Skin Tint Vegan & Anti-Pollutant No. 1 di Indonesia! Ultra-lightweight Skin Tint SPF 25 PA++ dengan formula Pore-Blurring Effect & Seamless Blend yang memudahkan pengaplikasian agar warna kulit tampak merata, serta makeup tampak poreless & non-cakey. Teruji klinis non-comedogenic, tahan seharian, & dilengkapi dengan kandungan Anti-Pollutant.", // Description content
          style: TextStyle(fontSize: 16), // Adjusted font size for the description
        ),
      ],
    ),
  );
}

Widget harga(BuildContext context) {
  return Container(
    width: 300.0, // Set the same width as the image
    padding: const EdgeInsets.symmetric(horizontal: 20), // Padding for the row
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Spaces out the text and button
      children: [
        const Text(
          "Harga\nRp 116.000",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        TextButton( // Use TextButton for the buy button
          onPressed: () {
            // Show Snackbar when button is pressed
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Pembelian berhasil!'),
              ),
            );
          },
          child: Text(
            'Buy',
            style: TextStyle(color: Colors.white), // Button text color
          ),
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 241, 123, 123), // Button background color
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding for the button
          ),
        ),
      ],
    ),
  );
}
