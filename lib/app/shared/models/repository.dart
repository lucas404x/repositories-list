class RepositoryModel {
  String name;
  String description;
  int stars;
  int forks;
  int commits;
  int watchers;

  RepositoryModel(
      {this.name,
      this.description,
      this.stars,
      this.forks,
      this.commits,
      this.watchers});
}
