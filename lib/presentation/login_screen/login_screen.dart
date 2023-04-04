import 'package:basecodegetx/widgets/custom_app_bar.dart';

import 'controller/login_controller.dart';
import 'package:basecodegetx/core/app_export.dart';
import 'package:basecodegetx/core/utils/validation_functions.dart';
import 'package:basecodegetx/widgets/custom_button.dart';
import 'package:basecodegetx/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'AAAAA',
        des: 'BBBBBBB',
        enableBack: false,
        actionButton: Padding(
          padding:  EdgeInsets.only(right: 16),
          child: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
