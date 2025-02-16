import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:eutrampoadmin/validators/login_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

// enum LoginState {IDLE, LOADING, SUCESS, FAIL}

class LoginBloc extends BlocBase with LoginValidators {

  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  // final _stateController = BehaviorSubject<LoginState>();

  Stream<String> get outEmail => _emailController.stream.transform(validateEmail);
  Stream<String> get outPassword => _passwordController.stream.transform(validatePassword);
  // Stream<LoginState> get outState => _stateController.stream;
  
  Stream<bool> get outSubmitValid =>  Observable.combineLatest2(
    outEmail,
    outPassword, 
    (a,b) => true
    );

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  // LoginBloc(){
  //   FirebaseAuth.instance.onAuthStateChanged.listen((user){
  //     if(user != null) {
  //       print("logado");
  //       FirebaseAuth.instance.signOut();
  //     } else {
  //       _stateController.add(LoginState.IDLE);
  //     }
  //   });
  // }

  // void submit() {
  //   final email = _emailController.value;
  //   final password = _passwordController.value;

  //   _stateController.add(LoginState.LOADING);

  //   FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: email,
  //     password: password,
  //   ).catchError((e){
  //     _stateController.add(LoginState.FAIL);
  //   });
  // }

  @override
  void dispose() {
    _emailController.close();
    _passwordController.close();
    // _stateController.close();
  }
}