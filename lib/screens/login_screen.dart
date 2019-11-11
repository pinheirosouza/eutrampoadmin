import 'package:eutrampoadmin/blocs/login_bloc.dart';
import 'package:eutrampoadmin/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  final _loginBloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 102, 46, 147),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/Logo-Horizontal.png",
                width: 300,)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/Logo.png",
                  width: 150,),
                Container(
                  width: 300,
                  height: 150,
                  child: ListView(children: <Widget>[
                    InputField("Login", _loginBloc.outEmail, _loginBloc.changeEmail, false),
                    InputField("Senha", _loginBloc.outPassword, _loginBloc.changePassword, true)
                  ],
                  ),
                ),
                StreamBuilder<bool>(
                  stream: _loginBloc.outSubmitValid,
                  builder: (context,snapshot){
                    return Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: FlatButton(
                        textColor: Color.fromARGB(255, 102, 46, 147),
                        color: Color.fromARGB(255, 253,236,8),
                        disabledTextColor: Colors.white,
                        disabledColor: Colors.grey,
                        child: Text("Entrar", style: TextStyle(fontSize: 15)),
                        onPressed: snapshot.hasData ? () {}/*_loginBloc.submit*/ : null,
                      ),
                    );
                  }
                ),
                
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: InkWell(
                    child: new Text('Esqueceu a senha?', style: TextStyle(color: Colors.white),),
                    onTap: () {}
                  ),
                )
                

              ],
            ),
            
          )
          
        ],
      ),
    );
  }
}
