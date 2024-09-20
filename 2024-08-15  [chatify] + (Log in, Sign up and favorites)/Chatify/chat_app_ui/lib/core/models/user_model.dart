class UserModel {
  String? name;
  String? image;
  String? lastMsg;
  String? time;

  UserModel({
    this.name,
    this.image,
    this.lastMsg,
    this.time

  });
}


List<UserModel> userlist = [
  UserModel(
    name: "Sara fdsa",
    image: "assets/user.png",
    lastMsg: "well, I was here all the time",
    time: "11:22 PM"
  ),
  UserModel(
    name: "Amir fdsa",
    image: "assets/user.png",
    lastMsg: "I am here man. nice to see you!",
    time: "11:29 PM"
  ),
    UserModel(
    name: "Ahmed fdsa fdsa",
    image: "assets/user.png",
    lastMsg: "you going to the maths daars?",
    time: "11:00 PM"
  ),
    UserModel(
    name: "Micheal",
    image: "assets/user.png",
    lastMsg: "well, I was here all the time",
    time: "11:22 PM"
  ),
  UserModel(
    name: "Sameh",
    image: "assets/user.png",
    lastMsg: "I am here man. nice to see you!",
    time: "11:29 PM"
  ),
    UserModel(
    name: "Yousef",
    image: "assets/user.png",
    lastMsg: "you going to the maths daars?",
    time: "11:00 PM"
  )
];