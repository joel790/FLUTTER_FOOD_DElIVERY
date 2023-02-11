import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3DDDD),
      appBar: AppBar(
        elevation: 0,
      backgroundColor: const Color(0xFFF3DDDD),
        title: Text('Payment Method'),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back,color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Container(
          height: 500,
          width: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [
                Colors.redAccent,
                Colors.pinkAccent,
                Colors.purple,
              
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,

              )),
            child: Column(
              children: [
             Padding(
                 padding: const EdgeInsets.only(top:38.0),
                 child: Text('choose payment methods',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
               ),
               const SizedBox(height:20),
               Container(
                height:90,
                width:300,
                child:Row(
                  children:[
                    Image(
                      
                      image:AssetImage('food4.jpg')),
                    Center(child: Text('Pay With telebirr')),
                    // SizedBox(height:20),
                  ]
                  
                )
               ),
               SizedBox(height:20),
               Container(
                color:Colors.white,
                height:90,
                width:300,
                child:Row(
                  children:const[
                    Image(
                      image:AssetImage('food4.jpg')),
                    Center(child: Text('Pay With telebirr')),
                    // SizedBox(height:20),
                  ]
                  
                )
               ),
               SizedBox(height:30),
               Container(
                height:50,
                width:100,
                color:Colors.orange,
                child:TextButton(
                  onPressed:(){
                    
                    
                  },
                  child:Text('Pay',style:TextStyle(fontSize:20,color:Colors.white)),
                )
               ),
              ],
            ),
        ),
      ),
    );
  }
}
