//define a function
print_integer(int number) {
  print('The number is $number'); //print to console
}

void main(List<String> arguments) {
  //Basic Function
  var number = 42; //var is the equivalent of auto?
  print_integer(number);

  //variables
  var name = 'Bob'; //an example of creating a variable and initializing it
  dynamic name_dynamic = 'Bob'; //doesn't restrict type to string
  String name_string = 'Bob'; //explicitly declaring type

  //default values
  int lineCount;
  assert(lineCount == null);

  //final variables
  final name_final = 'Bob';
  final String nickname = 'Bobby';
  //name_final = 'Alice'; *This would throw an error and not compile*

  //const variables
  const bar = 100000;
  const double atm = 1.01325 * bar;
  //bar = 1; *This would fail

  var foo = const [];
  final bar_const = const [];
  const baz = [];

  //you can change the value of a non-final non const variable
  //even if it used to have a const value
  foo = [1, 2, 3]; //Was const []

  //you can't change the value of a non final const variable
  //baz = [42]; //*This won't compile*

  //Valid compile-tiome constants as of Dart 2.5
  const Object i = 3; //Where i is a const Object with an int value
  const list = [i as int]; //Use a typecast
  const map = {if (i is int) i: "int"}; //use is and collection if
  const set = {if (list is List<int>) ...list};

  //integer literals
  var x = 1;
  var hex = 0xDEADBEEF;

  //double literals
  var y = 1.1;
  var exponents = 1.42e5;
  double z = 1; //automatically converted

  //String -> int
  var one = int.parse('1');
  assert(one == 1);

  //String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  //int -> string
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  //double -> string
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  assert((3 << 1) == 6); //0011 << 1 == 0110
  assert((3 >> 1) == 1); //0011 >> 1 == 0001
  assert((3 | 4) == 7); //0011 | 0100 == 0111

  //literal numbers are compile-time constants
  const msPerSecond = 1000;
  const secondsUntilRetry = 5;
  const msUntilRetry = secondsUntilRetry * msPerSecond;

  //Strings
  var s1 = 'Single quotes work well for string literals';
  var s2 = "Double quotes work just as well";
  var s3 = 'It\'s easy to escape the string delimiter';
  var s4 = "It's even easier to use the other delimeter";

  //value of expression
  var s = 'string interpolation';
  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, ' + 'which is very handy.');
  assert('That deserves all caps. ' + '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. ' + 'STRING INTERPOLATION is very handy!');

  //concatenate strings using adjacent string literals or the + operator
  var s1_c = 'String '
      'concatenation'
      " works even over line breaks.";

  assert(s1 ==
      'String concatenation works even over '
          'line breaks.');

  var s2 = 'The + operator ' + 'works, as well.';
  assert(s2 == 'The + operator works, as well.');
}
