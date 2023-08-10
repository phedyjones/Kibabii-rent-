import 'package:flutter/material.dart';
import 'package:kibabii_rent/details_page.dart';

class DeviceCard extends StatelessWidget {
  final String name;
  final String imageURL;
  final String price;

  const DeviceCard({
    Key? key,
    required this.name,
    required this.imageURL,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double rating = 4.5;

    return Container(
        width: MediaQuery.of(context).size.width * 0.46,
        decoration: BoxDecoration(
            color: const Color.fromARGB(17, 0, 0, 0),
            borderRadius: BorderRadius.circular(7)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imageURL,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 10),
              Text(name,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                  )),
              const SizedBox(height: 8),
              Text(
                price,
                style: TextStyle(fontSize: 12, color: Colors.blueGrey),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsPage()),
                    );
                  },
                  child: const Text('Rent this device'),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ));
  }
}
