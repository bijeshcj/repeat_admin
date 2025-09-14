import 'package:flutter/material.dart';
import 'package:repeat_admin/features/customers/customer_details_screen.dart';

class CustomersPage extends StatefulWidget {
  const CustomersPage({super.key});

  @override
  State<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  final List<Map<String, dynamic>> _customers = [
    {
      "name": "Rahul Sharma",
      "address": "MG Road, Bengaluru",
      "phone": "+91 9876543210",
      "image": null, // can be URL or null
      "isVeg": true,
    },
    {
      "name": "Anita Verma",
      "address": "Park Street, Kolkata",
      "phone": "+91 9988776655",
      "image": null,
      "isVeg": false,
    },
    {
      "name": "Vikram Singh",
      "address": "Connaught Place, Delhi",
      "phone": "+91 9123456789",
      "image": null,
      "isVeg": true,
    },
  ];

  void navigateToCustomerDetails() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const CustomerDetailsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _customers.length,
      itemBuilder: (context, index) {
        final customer = _customers[index];
        return InkWell(
          onTap: () {
            navigateToCustomerDetails();
          },
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: const CircleAvatar(radius: 30,
                child: Icon(Icons.person),),
              title: Text(
                customer["name"],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(customer["address"]),
                  Text(customer["phone"]),
                ],
              ),
              trailing: SizedBox(
                height: 56, // match ListTile height
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: customer["isVeg"],
                      onChanged: (bool? newValue) {
                        setState(() {
                          customer["isVeg"] = newValue ?? false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
