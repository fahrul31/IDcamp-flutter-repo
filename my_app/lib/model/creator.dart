class CreatorsResults {
  List<Creator> creators;

  CreatorsResults({
    required this.creators,
  });

  factory CreatorsResults.fromJson(Map<String, dynamic> json) =>
      CreatorsResults(
        creators: List<Creator>.from(
            json["creators"].map((x) => Creator.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "creators": List<dynamic>.from(creators.map((x) => x.toJson())),
      };
}

class Creator {
  String id;
  String photo;
  String name;
  String title;
  String job;
  String description;
  List<String> category;
  String status;
  String time;

  Creator({
    required this.id,
    required this.photo,
    required this.name,
    required this.title,
    required this.job,
    required this.description,
    required this.category,
    required this.status,
    required this.time,
  });

  factory Creator.fromJson(Map<String, dynamic> json) => Creator(
        id: json["id"],
        photo: json["photo"],
        name: json["name"],
        title: json["title"],
        job: json["job"],
        description: json["description"],
        category: List<String>.from(json["category"].map((x) => x)),
        status: json["status"],
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "title": title,
        "job": job,
        "description": description,
        "category": List<dynamic>.from(category.map((x) => x)),
        "status": status,
        "time": time,
      };
}
