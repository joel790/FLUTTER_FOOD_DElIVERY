import 'package:flutter/material.dart';

class ProductState extends ChangeNotifier {
  final List categories = [
    {
      "title": "Beef",
      "products": [
        {
          "Image":"https://as2.ftcdn.net/v2/jpg/03/34/58/91/1000_F_334589116_uyPMNMt0CXWh5TtqOyfZq5nwk5kyxtJi.jpg",
          "brand": "Kitfo",
          "price": 200,
          "amount": 1,
          "ingredient":
              "Finely chopped beef seasoned with mitmita** served rare, medium rare or well done topped with specially prepared butter.",
          "description":
              "Meat and are very good sources of protein,iodine to help your body produce thyroid hormone",
        },
        {
          "Image":"https://as1.ftcdn.net/v2/jpg/02/67/68/62/1000_F_267686263_QtuSOlugWiGexsOYVF9OwTe8fVdzXUCn.jpg",
          "brand": "Goat Kikil",
          "price": 300,
          "amount": 1,
          "ingredient":
              "A delicious stew of bone-in pieces of goat meat , turmeric based sauce , ground up cheek peas, onions, jalapeno pepper, tomatoes, ginger , garlic and other authentic spices.  ",
          "description":
              "Goat kikil is a great source of nutrients, including protein, iron, vitamin B12, zinc, and potassium. It’s also low in total fat and saturated fat compared with other forms of red meat",
        },
        {
          "brand": "Doro Wot",
          "Image":"https://as2.ftcdn.net/v2/jpg/00/37/81/87/1000_F_37818742_xrJLdPPEZrNTeM22XNqwVLe7LCQYBPtz.jpg",
          "price": 400,
          "amount": 1,
          "ingredient":
              "chicken ,diced red onions , Berbere. Served with two drumsticks and a hard-boiled egg.",
          "description":
              "it is very interesting dish in the night it used this is more for the sake of diners who don’t have the chance to eat this at home. best in protien rich",
        },
        {
          "brand": "Zilzil tibs",
          "Image":"https://as1.ftcdn.net/v2/jpg/01/00/40/82/1000_F_100408240_B51deIzsY7KSRpayU5xetKFP0sOkh3Rj.jpg",
          "price": 500,
          "amount": 1,
          "ingredient":
              "String of beef sauteed in purified butter, jalapeno peppers, seasoned with garlic, onions, fresh rosemary and tomatoes",
          "description": "it is a type of meat it mostly prepared in shekla",
        },
        {
          "brand": "Goat kurt",
          "Image":"https://as2.ftcdn.net/v2/jpg/03/34/58/91/1000_F_334589116_uyPMNMt0CXWh5TtqOyfZq5nwk5kyxtJi.jpg",
          "price": 300,
          "amount": 1,
          "ingredient": "red beaf,with injera and kochkocho",
          "description":
              "it is raw meat and mostly for breakfast it is rich in protien but it also has its downside",
        },
        {
          "brand": "Mahaberawi",
          "Image":"https://as2.ftcdn.net/v2/jpg/00/57/17/79/1000_F_57177910_9ShdEsIWSqoanml8iufB1wfNbluIUyHT.jpg",
          "price": 400,
          "amount": 1,
          "ingredient": "meat ,vegitable , communal injera",
          "description":
              "it is a meat prepared from dulet and red meat mostly for group deal for dinner,",
        },
      ]
    },
    {
      "title": "Pizza",
      "products": [
        {
          "amount": 1,
          "brand": "Meet Lover",
          "Image": "assets/meatPiza.jpg",
          "price": 270,
          "ingredient":
              "pizza souce,mozarella,provolone cheese,Beef sausage,sweet pepper,chicken bacon",
          "description":
              "Pizza can help you absorb the antioxidant Lycopene.Lycopene is found in tomatoes, which are used to make the base sauce for pizzas. Lycopene helps to lower blood pressure and bring down high cholesterol. It’s also more easily absorbed from cooked tomatoes as opposed to fresh tomatoes. The next time you’re trying to think of a healthy meal to get for dinner, think pizza! ",
        },
        {
          "brand": "Vegiterian",
          "amount": 1,
          "Image": "assets/Vegiterian.jpg",
          "price": 300,
          "ingredient":
              "pizza souce,Spinach,Caramelized onion,Roasted Tomatoes,sweet corn,Mushroom",
          "description": "",
        },
        {
          "brand": "Italiano",
          "amount": 1,
          "Image": "assets/ItalianoPizza.jpg",
          "price": 300,
          "ingredient":
              "pizza souce,mozarella,provolone Cheese,Prosciutto,Salami, Sausage,Olivers",
          "description": "",
        },
        {
          "brand": "Margherita",
          "amount": 1,
          "Image": "assets/MargheritaPizza.jpg",
          "price": 270,
          "ingredient":
              "pizza souce,mozarella,Sliced Tomatoes,Olive oil,Garlic & Basil",
          "description": "",
        },
        {
          "brand": "Peperoni",
          "amount": 1,
          "Image": "assets/PeperoniPizza.jpg",
          "price": 300,
          "ingredient": "pizza souce,mozarella,provolone,Beef Pepperoni",
          "description": "",
        },
        {
          "brand": "GESH Special",
          "amount": 1,
          "Image": "assets/Pizza.jpg",
          "price": 600,
          "ingredient": "pizza souce,mozarella,provolone,Beef Pepperoni",
          "description": "",
        },
      ]
    },
    {
      "title": "Soups&Salad",
      "products": [
        {
          "amount": 1,
          "Image":"assets/meatSoup.jpg",
          "brand": "Soup Of Day",
          "price": 350,
          "description": "",
        },

        {
          "amount": 1,
          "Image": "assets/salad2.jpg",
          "brand": "Salmon Gravlax",
          "price": 685,
          "description": "",
        },

        {
          "amount": 1,
          "Image": "assets/vegSalad.jpg",
          "brand": "Veg Salad",
          "price": 355,
          "description": "",
        },

        {
          "amount": 1,
          "Image": "assets/specsalad.jpg",
          "brand": "GESH Special",
          "price": 355,
          "description": "",
        },
         {
          "amount": 1,
          "Image": "assets/vegSaup.jpg",
          "brand": "veg Soup",
          "price": 355,
          "description": "",
        },
      ]
    },
    {
      "title": "Special",
      "products": [
        {
          "amount": 1,
          "brand": "fast Special",
           "Image": "assets/fied.jpg",

          "price": 250,
          "description": "",
        },

        {
          "amount": 1,
          "brand": "Meat Special",
          "Image": "assets/vegSaup.jpg",
          "price": 350,
          "description": "",
        },
      ]
    },
    {
      "title": "Burger",
      "products": [
        {
          "amount": 1,
          "brand": "burger2",
          "Image":"assets/burger.jpg",
          "price": 200,
          "description": "",
        },

        {
          "amount": 1,
          "brand": "burger3",
          "Image":"assets/burger1.jpg",
          "price": 300,
          "description": "",
        },

         {
          "amount": 1,
          "brand": "burger4",
          "Image":"assets/burger2.jpg",
          "price": 300,
          "description": "",
        },

         {
          "amount": 1,
          "brand": "burger5",
          "Image":"assets/burger3.jpg",
          "price": 300,
          "description": "",
        },
      ]
    },
  ];
   
  int selectedCategoryIndex = 0;

  void changeIndex(int index) {
    selectedCategoryIndex = index;
    
    notifyListeners();
  }

  List selectedProducts = [];
  List selectedfavorite = [];
 

 

  addToCart(pro) {
    selectedProducts.add(pro);
    notifyListeners();
  }

  removeFromCart(pro) {
    selectedProducts.remove(pro);
    notifyListeners();
  }

  addToFavorite(fav) {
    selectedfavorite.add(fav);
    notifyListeners();
  }

  removeFromfavorite(fav) {
    selectedfavorite.remove(fav);
    notifyListeners();
  }

  void incrementX(pro) {
    pro['amount']++;
    notifyListeners();
  }

  void decrementX(pro) {
    if (pro['amount'] <= 1) {
      removeFromCart(pro);
    }
    pro['amount']--;
    notifyListeners();
  }

 
}
