class Beer {
  final int id;
  final String name;
  final String tagline;
  final String description;
  final String imageUrl;
  final bool isPromo;
  
  static List<int> itemsWithPromo = [1, 2, 5, 9];

  Beer.fromJSON(Map<String, dynamic> jsonMap):
    id = jsonMap['id'],
    isPromo = itemsWithPromo.contains(jsonMap['id']) ? true : false,
    name = jsonMap['name'],
    tagline = jsonMap['tagline'],
    description = jsonMap['description'],
    imageUrl = jsonMap['image_url'];
}