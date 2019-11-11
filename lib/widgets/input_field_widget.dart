import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final String hint;
  final Stream<String> stream;
  final Function(String) onChanged;
  final bool obscure;

  InputField(this.hint, this.stream, this.onChanged, this.obscure);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: stream, 
      builder: (context, snapshot) {
         return TextFormField(
           style: TextStyle(color: Color.fromARGB(255, 253,236,8)),
           cursorColor: Color.fromARGB(255, 253,236,8),
           onChanged: onChanged,
            autofocus: true,
            obscureText: obscure,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),  
              labelText: hint,
              labelStyle: TextStyle(color: Colors.white),
              errorText: snapshot.hasError ? snapshot.error : null,
            ),
          );
      }
    );
    }
}