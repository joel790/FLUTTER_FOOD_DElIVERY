import 'package:flutter/material.dart';

import 'package:project1/nav_bar.dart';
import 'package:provider/provider.dart';

import '../model/product_state.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF3DDDD),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFF3DDDD),
          title: const Text(
            'My favorite',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: NavBar(indexNum: 1),
        body: SizedBox(child:
            Consumer<ProductState>(builder: (context, productState, child) {
         
          return ListView.builder(
              itemCount: productState.selectedfavorite.length,
              itemBuilder: (context, index) {
                var fav = productState.selectedfavorite[index];
               var productStateUpdat = Provider.of<ProductState>(context, listen: false);
                return InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:12.0,left: 15,right: 15),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Image.network( fav['Image'], fit: BoxFit.cover,
                                  height: 100,
                                  width: 100,),
                                const SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      fav['brand'].toString(),
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      fav['price'].toString(),
                                    ),
                                  ],
                                ),
                                const Spacer(
                                  flex: 10,
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 50.0),
                                      child: IconButton(
                                        onPressed: () {
                                          Provider.of<ProductState>(context,
                                                  listen: false)
                                              .removeFromfavorite(fav);
                                        },
                                        icon: Icon(Icons.close_outlined),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 35,
                                      width: 100,
                                      decoration: BoxDecoration(
                                       color: productState
                                                            .selectedProducts
                                                            .indexOf(fav) ==
                                                        -1
                                                    ? Colors.red
                                                    : Colors.green,
                                                  
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: TextButton(
                                        onPressed: productState
                                                        .selectedProducts
                                                        .indexOf(fav) ==
                                                    -1
                                                ? () {
                                                    productStateUpdat.addToCart(fav);
                                                  }
                                                : () {},
                                        child: const Text(
                                          'Add to cart',
                                          style: TextStyle(
                                            color: Colors.white,
                                            ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              });
        })));
  }
}
