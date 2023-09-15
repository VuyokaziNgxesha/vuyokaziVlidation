import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';



class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    
    super.key, required this.text, required this.width, required this.height, required this.backgroundColor,
  });

  final Widget text;
  final double width;
  final double height;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.pink,
          backgroundColor: backgroundColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          minimumSize: Size(width, height)
      ),
      onPressed: () {
        
        if (_formKey.currentState.validate();
    
        

      },
      child: text,
    );
  }
}