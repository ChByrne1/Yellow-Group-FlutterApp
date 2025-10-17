class Book {
  final String name;
  final String authoryear;
  final String description;
  bool available;
  final String imageUrl;
  DateTime? checkOut;

  Book({
    required this.name,
    required this.authoryear,
    required this.description,
    required this.available,
    this.imageUrl = 'images/empty.jpg',
    this.checkOut
  });
}

//pulled list of fake books
final List<Book> bookList = [
  Book(
    name: 'The Starforged Chronicles',
    authoryear: 'L. Sable, 2021',
    description: 'Journey with Elira as she unlocks magical portals across forbidden worlds.',
    available: true,
    // imageUrl:
  ),
  Book(
    name: 'Dragonkeeper’s Oath',
    authoryear: 'F. Merrow, 2019',
    description: 'Among the last living dragon keepers one young man must find his way among a rising war between three kingdoms. '
        'The last dragon could be the very key to bringing peace but there are many that seek to stop him',
    available: false,
    // imageUrl:
  ),
  Book(
    name: 'Moonblade Rising',
    authoryear: 'D. Sylvan, 2022',
    description: 'An outcast prince wields a mystical sword to save his kingdom from ancient shadows.',
    available: true,
    // imageUrl:
  ),
  Book(
    name: 'Ember and Ashes',
    authoryear: 'T. Rivers, 2018',
    description: 'A mage cast out from her order discovers new magic deep in the elemental wilds.',
    available: true,
    //imageUrl:
  ),
  Book(
    name: 'Crown of Thorns',
    authoryear: 'J. Zephyr, 2024',
    description: 'A reluctant queen battles fae and monsters to reclaim her throne and unite the realms.',
    available: true,
    // imageUrl:
  ),
];