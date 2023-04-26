class CourInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;

  CourInfo(this.position,
      {required this.name, required this.iconImage, required this.description});
}

List<CourInfo> courInfo = [
  CourInfo(1,
      name: "cour 1",
      iconImage: 'assets/images/logo.png',
      description: "blablablabla"),
  CourInfo(2,
      name: "cour 2",
      iconImage: 'assets/images/logo.png',
      description: "blablablabla"),
  CourInfo(3,
      name: "cour 3",
      iconImage: 'assets/images/logo.png',
      description: "blablablabla"),
  CourInfo(1,
      name: "cour 4",
      iconImage: 'assets/images/logo.png',
      description: "blablablabla"),
];
