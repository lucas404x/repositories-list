class UserModel {
  String name;
  String bio;
  String email;
  String photoUrl;
  int publicRepositories;
  int followers;
  int following;

  UserModel(
      {this.name,
      this.bio,
      this.email,
      this.photoUrl,
      this.publicRepositories,
      this.followers,
      this.following});
}
