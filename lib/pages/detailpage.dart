import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../model/product_state.dart';
import '../tabs/cart_page.dart';

class DetailPage extends StatelessWidget {
  DetailPage();

  @override
  Widget build(BuildContext context) {
    var productState = Provider.of<ProductState>(context);
    var productStateUpdate = Provider.of<ProductState>(context, listen: false);
    return Scaffold(
      backgroundColor: const Color(0xFFF3DDDD),
      appBar: AppBar(
        actions: [
          Center(
            child: Badge(
              badgeContent: Text(
                style: TextStyle(color: Colors.white),
                productState.selectedProducts.length.toString(),
              ),
              child: IconButton(
                onPressed: () {
                  Get.off(CartPage());
                },
                icon:
                    const Icon(Icons.shopping_cart_outlined, color: Colors.red),
              ),
            ),
          ),
          const SizedBox(
            width: 50,
          ),
        ],
        title: Text(
          'Details ',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xFFF3DDDD),
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back_ios, color: Colors.blue)),
      ),
      body: SizedBox(
        child: Consumer<ProductState>(
          builder: (context, productState, child) {
            return ListView.builder(
              itemCount: productState
                  .categories[productState.selectedCategoryIndex]['products']
                  .length,
              itemBuilder: (context, index) {
                var productState =
                    Provider.of<ProductState>(context, listen: false);
                var product =
                    productState.categories[productState.selectedCategoryIndex]
                        ['products'][index];
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: double.maxFinite,
                          padding: const EdgeInsets.only(top: 30),
                           child: CircleAvatar(
                                    radius: 200,
                                    child: ClipOval(
                                        child: Image.network(
                                          product['Image'],height: 200,width: 200,fit: BoxFit.fill,
                                          ),

                                      ),
                                       ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: Text(
                                'Price: ',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(product['price'].toString() + " " + "Birr"),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              product['brand'].toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[900]),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.only(right: 210.0),
                          child: Text(
                            'Ingredients',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            product['ingredient'].toString(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.only(right: 210.0),
                          child: Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            product['description'].toString(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: productState.selectedProducts
                                          .indexOf(product) ==
                                      -1
                                  ? () {
                                      productStateUpdate.addToCart(product);
                                    }
                                  : () {},
                              icon: Icon(
                                Icons.add_shopping_cart,
                                color: productState.selectedProducts
                                            .indexOf(product) ==
                                        -1
                                    ? Colors.red
                                    : Colors.green,
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: productState.selectedProducts
                                              .indexOf(product) ==
                                          -1
                                      ? Colors.red
                                      : Colors.green,
                                  borderRadius: BorderRadius.circular(20)),
                              child: TextButton(
                                  onPressed: productState.selectedProducts
                                              .indexOf(product) ==
                                          -1
                                      ? () {
                                          productStateUpdate.addToCart(product);
                                        }
                                      : () {},
                                  child: const Text(
                                    'Add to Cart',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )),
                            ),
                            SizedBox(width: 20,),
                          ],
                        ),
                        const Divider(
                          thickness: 5,
                          color: Colors.purple,
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
