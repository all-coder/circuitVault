class Component {
  const Component({
    required this.name,
    required this.id,
    required this.available,
    required this.imageURL,
    required this.description,
    required this.datasheetLink,
  });
  final String name;
  final int id;
  final int available;
  final String imageURL;
  final String description;
  final String datasheetLink;
}
