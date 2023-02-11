import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3d_drawer/flutter_3d_drawer.dart';
import 'package:get/get.dart';
import 'package:project1/nav_bar.dart';
import 'package:project1/pages/detailpage.dart';
import 'package:project1/pages/notification.dart';
import 'package:project1/pages/view_all.dart';
import 'package:project1/tabs/cart_page.dart';
import 'package:provider/provider.dart';
import '../model/product_state.dart';

class HomePage extends StatelessWidget {
 

  late Size size;

  DrawerControl drawerControl = DrawerControl();


  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
   var productState = Provider.of<ProductState>(context);
   var productStateUpdate = Provider.of<ProductState>(context, listen: false);
    return Flutter3dDrawer(
      backgroundColor: const Color(0xFF570368),
      duration: const Duration(seconds: 2),
      controller: drawerControl,
      maxSlide: MediaQuery.of(context).size.width * 0.7,
      body: Scaffold(
        backgroundColor: const Color(0xFFF3DDDD),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFF3DDDD),
          title: const Text(
            "GESH Delivery",
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              drawerControl.toggle();
            },
            icon: const Icon(
              Icons.menu_rounded,
              color: Colors.black,
            ),
          ),
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
                  icon: const Icon(Icons.shopping_cart_outlined,
                      color: Colors.red),
                ),
              ),
            ),
            Center(
              child: Badge(
                badgeContent: Text(
                  '0',
                ),
                child: IconButton(
                  onPressed: () {
                    Get.off(NotificationPage());
                    Get.snackbar(
                        'you have  Added ',
                        productState.selectedProducts.length.toString() +
                            'items');
                    // Navigator.pushNamed(context, "/cart");
                  },
                  icon: const Icon(Icons.notifications, color: Colors.orange),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: 'Searches for...',
                    iconColor: Colors.grey,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Special Offers',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.green),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 110,
              width: double.maxFinite,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('food2.jpg'), fit: BoxFit.cover),
                    ),
                    height: 100,
                    width: 300,
                    child: const ListTile(
                      title: Text('50% off',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('food1.jpg'), fit: BoxFit.cover),
                    ),
                    height: 100,
                    width: 300,
                    child: const ListTile(
                      title: Text('one'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('burger1.jpg'), fit: BoxFit.cover),
                    ),
                    height: 100,
                    width: 300,
                    child: const ListTile(
                      title: Text(
                        '50% off',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                    ),
                  ),
                 
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                    'Explore By Catagories',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.off(ViewAll());
                  },
                  child: const Text(
                    'View All',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Get.off(ViewAll());
                  },
                  icon: Padding(
                    padding: const EdgeInsets.only(right:25.0),
                    child: const Icon(
                      Icons.arrow_circle_right_rounded,
                      color: Colors.blueGrey,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Provider.of<ProductState>(context).categories.length,
                itemBuilder: (context, index) {
                  var selectedCategoryIndex;
                  var cat =
                      Provider.of<ProductState>(context).categories[index];
                  return InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      Provider.of<ProductState>(context, listen: false)
                          .changeIndex(index);
                    },
                    child: Container(
                      width: 100,
                      height: 10,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          // image: DecorationImage(image: AssetImage('food3.jpg'),fit: BoxFit.fill),
                          color: selectedCategoryIndex == index
                              ? Colors.green
                              : Colors.white,
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          cat['title'],
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productState
                        .categories[productState.selectedCategoryIndex]
                            ['products']
                        .length,
                    itemBuilder: (context, index) {
                      var product = productState
                              .categories[productState.selectedCategoryIndex]
                          ['products'][index];
                      return Container(
                        height: 100,
                        width: 170,
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        
                        child: InkWell(
                          onTap: () => Get.to(DetailPage()),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children:  [
                                Positioned(
                                  right: 10,
                                  child: IconButton(
                                    onPressed: productState.selectedfavorite
                                                .indexOf(product) ==
                                            -1
                                        ? () {
                                            productStateUpdate
                                                .addToFavorite(product);
                                          }
                                        : () {},
                                    icon: Icon(Icons.favorite),
                                    color: productState.selectedfavorite
                                                .indexOf(product) ==
                                            -1
                                        ? Colors.grey
                                        : Colors.red,
                                  ),
                                ),
                                 Positioned(
                                   left: 40,
                                   top: 20,
                                    child: CircleAvatar(
                                    radius: 40,
                                    child: ClipOval(
                                        child: Image.network(
                                          product['Image'],height: 100,width: 100,fit: BoxFit.fill,
                                          ),

                                      ),
                                       ),
                                    ),
                                Positioned(
                                  bottom: 60,
                                  left: 10,
                                  child: Text(
                                    product['brand'],
                                    style: const TextStyle(fontSize: 13),
                                  ),
                                ),
                                Positioned(
                                  bottom: 60,
                                  right: 20,
                                  child: Text(
                                    product['price'].toString(),
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ),
                                Positioned(
                                    bottom: 10,
                                    left: 15,
                                    child: Row(
                                      children: [
                                        IconButton(
                                          onPressed: productState
                                                      .selectedProducts
                                                      .indexOf(product) ==
                                                  -1
                                              ? () {
                                                  productStateUpdate
                                                      .addToCart(product);
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
                                          height: 30,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: productState
                                                          .selectedProducts
                                                          .indexOf(product) ==
                                                      -1
                                                  ? Colors.red
                                                  : Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: TextButton(
                                              onPressed: productState
                                                          .selectedProducts
                                                          .indexOf(product) ==
                                                      -1
                                                  ? () {
                                                      productStateUpdate
                                                          .addToCart(product);
                                                    }
                                                  : () {},
                                              child: const Text(
                                                'Add to Cart',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              )),
                                        )
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
        bottomNavigationBar: NavBar(indexNum: 0),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFFF3DDDD),
        child: Expanded(
          child: SizedBox(
            width: 300,
            height: double.infinity,
            child: Column(
              children: [
                const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('food2.jpg'),
                    ),
                  ),
                  accountName: Text(
                    'joel',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  accountEmail: Text('joel@gmail.com',
                      style: TextStyle(color: Colors.white)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('joel.jpg'),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      InkWell(
                        splashColor: const Color(0xFF0CF514),
                        onTap: () {},
                        child: const ListTile(
                          leading: Icon(Icons.home),
                          title: Text('Home'),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const ListTile(
                        leading: Icon(Icons.contact_phone_rounded),
                        title: Text('Contacts'),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const ListTile(
                        leading: Icon(Icons.settings),
                        title: Text('Setting'),
                      ),
                      InkWell(
                        splashColor: const Color(0xFF0CF514),
                        onTap: () {},
                        child: const ListTile(
                          leading: Icon(Icons.home),
                          title: Text('Home'),
                        ),
                      ),
                      const Divider(
                        thickness: 2.0,
                      ),
                      const ListTile(
                        leading: Icon(Icons.logout),
                        title: Text('Logout'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
