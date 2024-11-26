enum Gender { men, women }

enum Option { s, m, l }

enum Flavor {
  dev('dev'),
  production('prod'),
  staging('staging');

  final String value;
  const Flavor(this.value);
}
