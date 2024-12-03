import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_bankapp/Screens/dashboard_screen.dart';
import 'package:mobile_bankapp/bloc/auth_bloc.dart';
import 'package:mobile_bankapp/bloc/auth_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=> AuthBloc(),
    child: Scaffold(
      appBar: AppBar(
      //  leading:const Icon(Icons.monetization_on_outlined,color: Colors.greenAccent,),
        title:const Text(' Hamro Bank',
        style: TextStyle(fontSize: 25,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        color: Colors.greenAccent),),
        centerTitle: true,
      ),
      body:BlocConsumer<AuthBloc,AuthState>(
       listener:(context,state){
        if(state is AuthAuthenticated){
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>DashboardScreen()));
        }
        else if(state is AuthError){
          ScaffoldMessenger.of(context).showSnackBar((SnackBar(content:Text(state.message))));
        }
       },
       builder: (context,state){
        if(state is AuthLoading){
          return const CircularProgressIndicator();
        }
        else 
        return Padding(padding: EdgeInsets.all(8),
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset('lib/assets/animelogin.json',
              height: 200,
              width: 200),

              Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(colors:[
                    Color.fromARGB(222, 134, 240, 148),
                    Color.fromARGB(255, 247, 243, 243)
                  ],
                  begin:Alignment.topLeft,
                  end: Alignment.bottomRight)
                ),
                child: Column(
                
                ),
              )
            ],
          ),
        ),);
       },)
    ),);
  }
}