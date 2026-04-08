import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  final String title;
  final String location;
  final String date;
  final String status;
  final String imageUrl;

  const ItemDetailsScreen({
    super.key,
    required this.title,
    required this.location,
    required this.date,
    required this.status,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final bool isCollected = status == 'Collected';
    final bool hasValidNetworkImage =
        imageUrl.trim().startsWith('http://') ||
        imageUrl.trim().startsWith('https://');

    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF6F7F9),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              child: hasValidNetworkImage
                  ? Image.network(
                      imageUrl,
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: double.infinity,
                          height: 250,
                          color: Colors.grey[300],
                          child: const Icon(
                            Icons.broken_image_outlined,
                            size: 60,
                            color: Colors.grey,
                          ),
                        );
                      },
                    )
                  : Container(
                      width: double.infinity,
                      height: 250,
                      color: Colors.grey[300],
                      child: const Icon(
                        Icons.image_outlined,
                        size: 60,
                        color: Colors.grey,
                      ),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0D1333),
                    ),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined, color: Colors.grey),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          location,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  Row(
                    children: [
                      const Icon(Icons.access_time, color: Colors.grey),
                      const SizedBox(width: 8),
                      Text(
                        date,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: isCollected
                          ? Colors.grey.withOpacity(0.2)
                          : Colors.green.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      status,
                      style: TextStyle(
                        color: isCollected ? Colors.grey : Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                  const Divider(),
                  const SizedBox(height: 20),

                  const Text(
                    'Collection Information',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0D1333),
                    ),
                  ),

                  const SizedBox(height: 8),

                  if (isCollected)
                    const Text(
                      'This item has already been collected from the Lost & Found center.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                        height: 1.5,
                      ),
                    )
                  else
                    const Text(
                      'Please come to the Lost & Found center with your university ID to collect this item.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        height: 1.5,
                      ),
                    ),

                  const SizedBox(height: 24),

                  if (!isCollected)
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: const Color(0xFF19C28E).withOpacity(0.12),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Text(
                        'Visit the Lost & Found center physically to collect this item.',
                        style: TextStyle(
                          color: Color(0xFF19C28E),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}