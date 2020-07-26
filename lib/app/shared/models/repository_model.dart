class RepositoryModel {
  RepositoryModel({
    this.name,
    this.description,
    this.stargazersCount,
    this.subscribersCount,
    this.language,
    this.gitUrl,
  });

  final String name;
  final String description;
  final int stargazersCount;
  final int subscribersCount;
  final String language;
  final String gitUrl;

  factory RepositoryModel.fromMap(Map<String, dynamic> json) => RepositoryModel(
        name: json["name"],
        description: json["description"],
        stargazersCount: json["stargazers_count"],
        subscribersCount: json["subscribers_count"],
        language: json["language"],
        gitUrl: json["git_url"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "description": description,
        "stargazers_count": stargazersCount,
        "subscribers_count": subscribersCount,
        "language": language,
        "git_url": gitUrl,
      };
}
