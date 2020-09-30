import 'dart:core';

//even in type-safe Dart code, most variables don't need explicit types
//type interference
var name = 'Voyager I';
var year = 1977;
var antenna_diameter = 3.7;
var fly_by_objects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg'
};

void main(List<String> arguments) {
  //basics
  print(name);
  print(year);
  print(antenna_diameter);
  print(fly_by_objects);
  print(image);

  //printing arrays
  print(fly_by_objects[0]);
  print(fly_by_objects[1]);
  print(fly_by_objects[2]);
  print(fly_by_objects[3]);

  //printing dictionary?
  print(image['tags']);
  //TODO maybe a better way of doing this
  List<String> foo = image['tags']; //needed to explicitly state the type
  print(foo[0]);
  print(image['url']);
}
