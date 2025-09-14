import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:repeat_admin/core/widgets/category_card.dart';
import 'package:repeat_admin/core/widgets/customer_card.dart';

class CustomerDetailsScreen extends StatefulWidget {
  const CustomerDetailsScreen({super.key});

  @override
  State<CustomerDetailsScreen> createState() => _CustomerDetailsScreenState();
}

class _CustomerDetailsScreenState extends State<CustomerDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer Details"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomerCard(
              name: "Bijesh",
              since: "Aug 31 2025",
              icon: Icon(Icons.person),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0), // uniform padding
              child: Text(
                "Delivery Location",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            CustomerCard(
              name: "Home",
              since: "123 Main St, Apt 4B, Springfield, IL 62704",
              icon: Icon(Icons.location_on),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0), // uniform padding
              child: Text(
                "Address Details",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            CustomerCard(
              name: "Full Address",
              since: "123 Main St, Apt 4B, Springfield, IL 62704",
              icon: Icon(Icons.my_location),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0), // uniform padding
              child: Text(
                "Contact Information",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            CustomerCard(
              name: "Mobile",
              since: "123 Main St, Apt 4B, Springfield, IL 62704",
              icon: Icon(Icons.phone),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0), // uniform padding
              child: Text(
                "Dietary Preference",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            CustomerCard(
              name: "Vegetarian",
              since: "Meal options",
              icon: Icon(Icons.fastfood),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0), // uniform padding
              child: Text(
                "Category",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            CategoryCard()
          ],
        )
      ),
    );
  }
}
