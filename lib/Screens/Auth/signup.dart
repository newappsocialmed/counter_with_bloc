import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laravel_front/Blocs/signupbloc/signupbloc_bloc.dart';
import 'package:laravel_front/Screens/Auth/login.dart';

class Signupuser extends StatelessWidget {
  const Signupuser({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController password = TextEditingController();
    return BlocConsumer<SignupblocBloc, SignupblocState>(
      listenWhen: (previous, current) {
        return current.message != '';
      },
      listener: (context, state) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message), behavior: SnackBarBehavior.floating));
        if(state.message == 'signin success'){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> const Loginuser()));
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
                      Text('Signup', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic),)
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
                              BlocProvider.of<SignupblocBloc>(context).add(SignupblocEvent.signup(name: name.text, password: password.text));
                            },
                            child: const Text('Signup')),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already have account? '),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const Loginuser()));
                            },
                            child: const Text('Login', style: TextStyle(color: Colors.blue),),
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
