class ReviewsResults {
  List<Review> reviews;

  ReviewsResults({
    required this.reviews,
  });

  factory ReviewsResults.fromJson(Map<String, dynamic> json) => ReviewsResults(
        reviews:
            List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "reviews": List<dynamic>.from(reviews.map((x) => x.toJson())),
      };
}

class Review {
  String id;
  String name;
  String job;
  String review;

  Review({
    required this.id,
    required this.name,
    required this.job,
    required this.review,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["id"],
        name: json["name"],
        job: json["job"],
        review: json["review"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "job": job,
        "review": review,
      };
}
