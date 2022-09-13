import 'package:flutter/material.dart';
import 'package:task_2/model.dart';
import 'package:task_2/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    init();
    super.initState();
  }
  init() async{
    PriceModel prGold = await Services.getPrice(type: 'XAU');
    PriceModel prSilver = await Services.getPrice(type: 'XAG');
    goldPrice = prGold.price ;
    silverPrice = prSilver.price;
  }
double? goldPrice  ;
double? silverPrice ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Today'.toUpperCase(),
              style: TextStyle(
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(
                    color: Colors.yellow[300]!,
                    offset: const Offset(1, 1),
                    blurRadius: 5,
                  ),
                ],
              ),
            ),
            Text(
              ' price'.toUpperCase(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(
                    color: Colors.grey[300]!,
                    offset: const Offset(1, 1),
                    blurRadius: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          top: 50,
          right: 10,
          left: 10,
          bottom: 10,
        ),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/gold.png',
                  scale: 4,
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 2.5,
                ),
                const SizedBox(height: 15),
                Text(
                  'gold'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 9,
                    shadows: [
                      BoxShadow(
                        color: Colors.yellow[300]!,
                        offset:const Offset(1, 1),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Text(

                 '${goldPrice??0}💲' ,
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: MediaQuery.of(context).size.width / 15,
                    shadows: [
                      BoxShadow(
                        color: Colors.orange[300]!,
                        offset:const Offset(1, 1),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Image.network(
                  'https://www.pngplay.com/wp-content/uploads/1/Silver-Brick-Download-Free-PNG.png',
                  scale: 4,
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 2.5,
                ),
               const SizedBox(height: 15),
                Text(
                  'silver'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 9,
                    shadows: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        offset:const Offset(1, 1),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  '${silverPrice??0}💲',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width / 15,
                    shadows: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        offset: const Offset(1, 1),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[500]!,
        child: const Icon(Icons.refresh , ),
        onPressed: () async {
          PriceModel prGold = await Services.getPrice(type: 'XAU');
          PriceModel prSilver = await Services.getPrice(type: 'XAG');
          goldPrice = prGold.price ;
          silverPrice = prSilver.price;


          setState(() {

          });

        },

      ),
    );
  }



}
