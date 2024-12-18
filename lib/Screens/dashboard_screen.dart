import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  String username;
  double balance;
 DashboardScreen(this.username,this.balance,{ super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                gradient:const  LinearGradient(colors: [
                  Color.fromRGBO(66, 238, 126, 1),
                  Color.fromRGBO(141, 249, 179, 1),
            
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(8)
              ),
              child:const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Hello Vinay !',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                      color: Colors.black
                    ),),
                   
                  ],),
                 SizedBox(height: 10,),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Rs 50000',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                      color: Colors.black
                    ),),
                  //  const SizedBox(width: 15,),
                    Text('(Available balance)',
                    style: TextStyle(
                      color: Colors.black
                    ),)
                   
                  ],)
                ],

              ),
            ),
          ),
  const SizedBox(height: 20,),

         const Text('Other Payments',
          style:TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
           // color: Colors.black
          )),
      const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){},
                child: Container(
                  width: 80,
                  height: 50,
                   decoration: BoxDecoration(
                  gradient:const LinearGradient(colors: [
                    Color.fromRGBO(242, 246, 243, 1),
                    Color.fromRGBO(141, 249, 179, 1),
                            
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(8)
                ),
                child:IconButton(onPressed: (){},
                hoverColor: Colors.greenAccent,
                 icon:Icon(Icons.payment,
                
                color: Colors.green,))
                ),
              ),
              const SizedBox(width:20,),
               Container(
                width: 80,
                height: 50,
                 decoration: BoxDecoration(
                gradient:const LinearGradient(colors: [
                  Color.fromRGBO(66, 238, 126, 1),
                  Color.fromRGBO(141, 249, 179, 1),
            
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(8)
              ),
              ),
                  const SizedBox(width:20,),
               Container(
                width: 80,
                height: 50,
                 decoration: BoxDecoration(
                gradient:const LinearGradient(colors: [
                  Color.fromRGBO(66, 238, 126, 1),
                  Color.fromRGBO(141, 249, 179, 1),
            
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(8)
              ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items:[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',
        backgroundColor: Colors.green),
         BottomNavigationBarItem(icon: Icon(Icons.qr_code),label: 'Qr pay',
        backgroundColor: Colors.green)]
    ));
  }
}