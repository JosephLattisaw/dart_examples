class Spacecraft {
  String name;
  DateTime launch_date;

  //Constructor, with syntatic sugar for assignment to members
  Spacecraft(this.name, this.launch_date) {
    //Initialization code goes here
  }

  //Named Constructor that forwards to the default one
  Spacecraft.unlaunched(String name) : this(name, null);

  int get launch_year => launch_date.year; //read-only final property

  //Method
  void describe() {
    print('Spacecraft: $name');
    if (launch_date != null) {
      var years = DateTime.now().difference(launch_date).inDays ~/ 365;
      print('Launched: $launch_year ($years years ago');
    } else {
      print('Unlaunched');
    }
  }
}

class Orbiter extends Spacecraft {
  double altitude;
  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);
}

class Piloted {
  int astronauts = 1;
  void describe_crew() {
    print('Number of astronauts: $astronauts');
  }
}

void main(List<String> arguments) {
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();

  var orbiter = Orbiter('Orbiter', DateTime(1999, 10, 6), 100.0);
  orbiter.describe();
  var altitude = orbiter.altitude;
  print('Altitude: $altitude feet');
}
