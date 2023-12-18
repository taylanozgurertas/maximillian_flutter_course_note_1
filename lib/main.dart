/*

!LET'S START TO LEARN FLUTTER
it will start with runApp(); this is a function and it's a core thing. its like instructions. 
it's provided by flutter. not build into dart language. its provided by flutter framework.
it's vital task for us. 

A function body must be provided.
Try adding a function body.

return type - functionname (parameters){ //defining a function

}

runApp(); //calling a function I mean executing a function

Flutter is open source project so we can inspect its code. so we can see this runApp function's definition there. 
we should tell where runApp is coming from. so we have to add flutter as a dependency in pubspec.yaml file. but we already added it. 
plus we have to import at the top of the file. import keyword which is built in Dart. 

import '' or ""
import 'package:blabla'; //we must end our statement with semicolon ; , function definitions are exceptions. 

we are interested in material.dart file. now we can use functions in material.dart in our main.dart file. so we can use runApp function too. 

main is a special function already. main function is the main entry point our app. its executed for us we don'T need to call main function.

runApp tells flutter what to display on the screen. which UI elements to display etc. 


1 positional argument expected by 'runApp', but 0 found.
runApp function has a input value I mean parameter. parameter = argument
so runApp needs 1 input value.

Flutter user interfaces are built with widgets. When building a flutter app you build with code, combinations of widgets. 
widget tree is like this:

MaterialApp
  Scaffold
    Row
      Text, Text, Text

all these widgets don't tell us anything just yet but we'll see. Flutter provides many built-in widgets like buttons, form inputs, layout widgets.
but we can also build our own custom widgets and we will do it later. 


runApp(MaterialApp()); //materialapp widget. is a core widget provided by flutter which we will use almost all flutter apps because
 
it's a main widget that has a lot of setup. But it doesn't show anything on the screen, we need to add another argument to materialapp widget to show something
on the screen. 

when defining a function we can use named parameters. just wrap the parameters between curly braces. 
its not important which order we pass values to our functions. 

go and check MaterialApp widget in flutter core you will see {} I mean named parameters there a lot as you can see. 
it's up to us whether we want to use positional or named arguments though. here for materialapp home: parameter is important for us. 

!FUNCTION PARAMETERS, POSITIONAL AND NAMED PARAMETERS

Positional: The position of an argument determines which parameter receives the value

void add(a, b) { // a & b are positional parameters
  print(a + b); // print() is a built-in function that will be explained later
}
 
add(5, 10); // 5 is used as a value for a, because it's the first argument; 10 is used as a value for b
Named: The name of an argument determines which parameter receives the value

void add({a, b}) { // a & b are named parameters (because of the curly braces)
  print(a + b); 
}  
 
add(b: 5, a: 10); // 5 is used as a value for b, because it's assigned to that name; 10 is used as a value for a
Besides the different usage, there's one very important difference between positional and 
named arguments: By default, positional parameters are required and must not be omitted 
on the other hand, named arguments are optional and can be omitted.

You can change these behaviors, though. You can make positional arguments optional and named arguments required.

Positional arguments can be made optional by wrapping them with square brackets ([]):

void add(a, [b]) { // b is optional
  print(a + b);
}

Once a parameter is optional, you can also assign a default value to it - this value would be used if no value is provided for the argument:

void add(a, [b = 5]) { // b is optional, 5 will be used as a default value
  print(a + b);
}
add(10); // b would still be 5 because it's not overwritten
add(10, 6); // here, b would be 6

Default values can also be assigned to named parameters - which are optional by default:

void add({a, b = 5}) { // b has a default value of 5
  print(a + b); 
}  
 
add(b: 10); // for b, 10 would be used instead of 5; a has no default value and would be "null" here => a special value type you'll learn about throughout this course
You can also make named parameters required by using the built-in required keyword:

void add({required a, required b}) { // a & b are no longer optional
  print(a + b); 
}  

 */

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Text('Hello World'),
  ));
}
