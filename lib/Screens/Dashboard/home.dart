import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laravel_front/Blocs/loginbloc/login_bloc.dart';
import 'package:laravel_front/Screens/Auth/login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listenWhen: (previous, current) {
        return current.message != '';
      },
      listener: (context, state) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(state.message),
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 1),
        ));
      },
      builder: (context, state) {
        return SafeArea(
          child: PopScope(
            canPop: false,
            onPopInvoked: (didPop) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Cannot go back in this screen'),
                behavior: SnackBarBehavior.floating,
                duration: Duration(seconds: 1),
              ));
            },
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
                title: const Text('Dashboard', style: TextStyle( color: Colors.white, fontWeight: FontWeight.w700, fontSize: 24),),
                leading: IconButton(
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Confirm!!'),
                      content: const Text('Are you sure to Logout?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('No'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> const Loginuser())),
                          child: const Text('Yes'),
                        ),
                      ],
                    ),
                  ), 
                  icon: const Icon(Icons.logout, color: Colors.white,)),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Text(state.value.toString(), style: const TextStyle( color: Colors.white, fontSize: 23, fontWeight: FontWeight.w700),)
                      )
                    )
                  )
                ],
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              floatingActionButton: Container(
                decoration: BoxDecoration(
                    color: Colors.blue, 
                    borderRadius: BorderRadius.circular(15)
                ),
                height: 70,
                width: 100,
                child: TextButton(
                    onPressed: () {
                      BlocProvider.of<LoginBloc>(context).add(LoginEvent.updatevalue(id: state.id));
                    },
                    child: const Text('Increment')),
              ),
            ),
          ),
        );
      },
    );
  }
}
