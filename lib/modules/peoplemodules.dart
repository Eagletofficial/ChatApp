class People {
  String name;
  String profilepicture;
  int id;

  People({
    required this.name,
    required this.profilepicture,
    required this.id,
  });
}

People currentUser = People(
  id: 0,
  profilepicture: "assets/white2.jpg",
  name: "Mark",
);

People nick = People(
  id: 1,
  profilepicture: "assets/white3.jpg",
  name: "Nick",
);

People filip = People(
  id: 2,
  profilepicture: "assets/white4.jpg",
  name: "Filip",
);

People alex = People(
  id: 3,
  profilepicture: "assets/white5.jpg",
  name: "Alex",
);

People teejay = People(
  name: "Teejay",
  profilepicture: "assets/white7.jpg",
  id: 4,
);

People kay = People(
  name: "Kay",
  profilepicture: "assets/white10.jpg",
  id: 5,
);

People yamex = People(
  name: "Yamex",
  profilepicture: "assets/white8.jpg",
  id: 6,
);
