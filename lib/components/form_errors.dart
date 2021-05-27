import 'package:flutter/material.dart';

import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:List.generate(errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({String error}) {
    return Row(
      children: [
        Container(
          height: getProptionateScreenWidth(14),
          width: getProptionateScreenWidth(14),
          child: Icon(
            Icons.error,

          ),
        ),
        SizedBox(
          width: getProptionateScreenWidth(10),
        ),
        Text(error),

      ],
    );
  }
}
