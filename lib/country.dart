class Country {
  String countryLabel;
  String flagImageUrl;

  Country(this.countryLabel,
      this.flagImageUrl,);


  static List<Country> samples = [
    Country(
      'Albania',
      'assets/albania.jpeg',
    ),
    Country(
      'Brazil',
      'assets/brazil.jpeg',
    ),
    Country(
      'China',
      'assets/china.jpeg',
    ),
    Country(
      'Europe',
      'assets/europe.jpg',
    ),
    Country(
      'France',
      'assets/france.jpeg',
    ),
    Country(
      'Germany',
      'assets/germany.jpeg',
    ),
    Country(
      'Japan',
      'assets/japan.jpeg',
    ),
    Country(
      'Malaysia',
      'assets/malaysia.jpeg',
    ),
    Country(
      'Russia',
      'assets/russia.jpeg',
    ),
    Country(
      'Saudi Arabia',
      'assets/saudi-arabia.jpeg',
    ),
    Country(
      'United Kingdom',
      'assets/united_kingdom.jpeg',
    ),
    Country(
      'United States of America',
      'assets/united_states_america.jpeg',
    ),
    Country(
      'Vietnam',
      'assets/vietnam.jpeg',
    ),
  ];
}