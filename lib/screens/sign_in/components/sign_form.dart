import 'package:SHOP_APP/components/custom_surfix_icon.dart';
import 'package:SHOP_APP/components/dafault_button.dart';
import 'package:SHOP_APP/components/form_error.dart';
import 'package:SHOP_APP/size_config.dart';
import 'package:flutter/material.dart';
import 'package:SHOP_APP/constants.dart';

class SignForm extends StatefulWidget {
  @override
  SignFormState createState() => SignFormState();
}

class SignFormState extends State<SignForm> {

  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String email;
  String password;
  bool remenber = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height :getProportionateScreenHeight(30)),         
          Row(
            children: [
              Checkbox(value: remenber, onChanged: (value){ 
                setState(() {
                  remenber = value;
                });
               },
               activeColor: kPrimaryColor,
               ),
              Text("Remember me"),
              Spacer(),
              Text(
                "Forgot password",
                style: TextStyle(decoration: TextDecoration.underline),
              )
            ],
          ),
          FormError(errors: this.errors),
          SizedBox(height :getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Continue",
            press: () {
              if(_formKey.currentState.validate())
                _formKey.currentState.save();

              final snackbar = SnackBar(content: Text("Yay! A SnackBar"));
              Scaffold.of(context).showSnackBar(snackbar);
            },
          )
        ],
      ) 
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
          obscureText: true,
          keyboardType: TextInputType.emailAddress,
          onSaved: (value) => password = value,
          onChanged: (value) {
            if(value.isNotEmpty && errors.contains(kPasswordNullError)) {
              setState(() {
                errors.remove(kPasswordNullError);
              });
            } else if(value.length >= 6 && errors.contains(kShortPassEnter)) {
              setState(() {
                errors.remove(kShortPassEnter);                
              });
            }
          },
          validator: (value) {
            if(value.isEmpty && !errors.contains(kPasswordNullError)) {
              setState(() {
                errors.add(kPasswordNullError);
              });
            } else if(value.length < 6 && !errors.contains(kShortPassEnter)) {
              setState(() {
                errors.add(kShortPassEnter);                
              });
            }
            return  null;
          },
          decoration: InputDecoration (
            labelText: "Password",
            hintText: "Enter your password",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg")  
          ),
        );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
          keyboardType: TextInputType.text,
          onSaved: (newValue) => email = newValue,
          onChanged: (value) {
            if(value.isNotEmpty && errors.contains(kEmailNullError)) {
              setState(() {
                errors.remove(kEmailNullError);
              });
            }
          },
          validator: (value) {
            if(value.isEmpty && !errors.contains(kEmailNullError)) {
              setState(() {
                errors.add(kEmailNullError);
              });
            }
            return null;
          },
          decoration: InputDecoration (
            labelText: "Email",
            hintText: "Enter your email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg",)  
          ),
        );
  }
}