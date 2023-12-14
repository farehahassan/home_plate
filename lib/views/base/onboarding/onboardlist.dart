class OnboardingList {
  String image;
  String title;
  String discription;

  OnboardingList(
      {required this.image, required this.title, required this.discription});
}

List<OnboardingList> pages = [
  OnboardingList(
      title: "Healthy Food",
      image: "assets/images/onboard/vector1.png",
      discription: "Eat today live another\n memorable day"),
  OnboardingList(
      title: "Tasty Food ",
      image: "assets/images/onboard/vector2.png",
      discription: "Let's eat some diet food\n while steak to cock"),
  OnboardingList(
      title: "Let's eat",
      image: "assets/images/onboard/vector3.png",
      discription: "Food is really and truly the\n most effective medicine"),
];
