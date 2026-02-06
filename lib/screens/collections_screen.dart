import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/collection_card.dart';

class CollectionsScreen extends StatefulWidget {
  const CollectionsScreen({super.key});

  @override
  State<CollectionsScreen> createState() => _CollectionsScreenState();
}

class _CollectionsScreenState extends State<CollectionsScreen> {
  int expandedIndex = -1;

  void onCardTap(int index) {
    setState(() {
      expandedIndex = expandedIndex == index ? -1 : index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text('Collections'),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: collections.length,
        itemBuilder: (context, index) {
          return CollectionCard(
            collection: collections[index],
            isExpanded: expandedIndex == index,
            onTap: () => onCardTap(index),
          );
        },
      ),
    );
  }
}