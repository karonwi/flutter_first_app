//the below import file is used to get the runApp from the package
import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  //runApp is defined in the flutter framework,it's coming from flutter
  //The MaterialApp is a widgets that the runApp is expecting to be passed into it.
  //There are two types of arguments-named and positional.
  //Text is also a widget.
  //seeing the properties of each widget would help to know the next available widgets
  runApp(
     MaterialApp(
      home: Scaffold(
          body: GradientContainer(
            const Color.fromARGB(255, 33, 3, 86),
              const Color.fromARGB(255, 109, 3, 111))),
    ),
  );
}
