class UserModel {
  UserModel({
    this.login,
    this.avatarUrl,
    this.bio,
    this.publicRepos,
    this.followers,
    this.following,
  });

  final String login;
  final String avatarUrl;
  final String bio;
  final int publicRepos;
  final int followers;
  final int following;

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        login: json["login"],
        avatarUrl: json["avatar_url"],
        bio: json["bio"],
        publicRepos: json["public_repos"],
        followers: json["followers"],
        following: json["following"],
      );

  Map<String, dynamic> toMap() => {
        "login": login,
        "avatar_url": avatarUrl,
        "bio": bio,
        "public_repos": publicRepos,
        "followers": followers,
        "following": following,
      };
}
