import 'package:flutter/material.dart';
import 'package:kibabii_rent/constants.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(kPadding),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/64GB.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .75,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: kPrimaryColor, padding: EdgeInsets.all(kPadding)),
                    child: Text("Rent now"),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .15,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_shopping_cart),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
