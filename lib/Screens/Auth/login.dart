import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laravel_front/Blocs/loginbloc/login_bloc.dart';
import 'package:laravel_front/Screens/Auth/signup.dart';
import 'package:laravel_front/Screens/Dashboard/home.dart';

class Loginuser extends StatelessWidget {
  const Loginuser({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController password = TextEditingController();
    return BlocConsumer<LoginBloc, LoginState>(
      listenWhen: (previous, current) {
        return current.message != '';
      },
      listener: (context, state) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message), behavior: SnackBarBehavior.floating, duration: const Duration(seconds: 1),));
        if(state.message == 'Login success'){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> const Home()));
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              SafeArea(
                child: Container(
                  height: 90,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.black,  Colors.white, Colors.lightBlue], begin: Alignment.topLeft, end: Alignment.bottomRight)
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Login', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: name,
                        decoration:
                            const InputDecoration(
                              hintText: 'User Name',
                              border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        obscureText: true,
                        controller: password,
                        decoration:
                            const InputDecoration(
                              hintText: 'Password',
                              border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<LoginBloc>(context).add(
                                  LoginEvent.login(name: name.text, password: password.text));
                            },
                            child: const Text('Login')),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Don\'t have account? '),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const Signupuser()));
                            },
                            child: const Text('Signup', style: TextStyle(color: Colors.blue),),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
