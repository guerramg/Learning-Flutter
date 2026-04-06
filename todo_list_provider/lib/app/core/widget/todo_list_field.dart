import 'package:flutter/material.dart';
import 'package:todo_list_provider/app/core/iu/todo_list_icons.dart';

class TodoListField extends StatelessWidget {
final String label;
final bool? obscureText;
final bool? hasIcon;
final ValueNotifier<bool> obscureTextVN;
final TextEditingController? controller;
final FormFieldValidator<String>? validator;
  TodoListField({
    super.key,
    required this.label,
    this.obscureText = false,
    this.hasIcon = false,
    this.controller,
    this.validator,
    }) : assert(obscureText == true && hasIcon == true || obscureText == false && hasIcon == false, 'obscureText e hasIcon devem ser ambos true ou ambos false'),
    obscureTextVN = ValueNotifier(obscureText!);

   @override
   Widget build(BuildContext context) {
       return ValueListenableBuilder<bool>(
           valueListenable: obscureTextVN,
           builder: (_, obscureTextValue, child) {
               return TextFormField(
                controller: controller,
                validator: validator,
               decoration: InputDecoration(
                   labelText: label,
                   labelStyle: TextStyle(
                       fontSize: 15,
                       color: Colors.black
                   ),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30)
                   ),
                   errorBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30),
                     borderSide: BorderSide(
                       color: Colors.red
                     )
                   ),
                   isDense: true,
                   suffixIcon: hasIcon == true ? IconButton(
                       onPressed: (){
                            obscureTextVN.value = !obscureTextValue;
                       },
                       icon: Icon(
                           obscureTextValue ? TodoListIcons.eye : TodoListIcons.eye_slash,
                           size: 15
                           ),
                       ): null,
               ),
               obscureText: obscureTextValue,
              );
           },
       );
  }
}