class OnboardingModel {
  final String image1;
  final String title;
  final String description;
    final String image2;


  static int? length;

  OnboardingModel({
    required this.description,
    required this.image1,
    required this.title,
    required this.image2
  });
}

List<OnboardingModel> onboardingModel = [
  OnboardingModel(
    image1: 'assets/images/m1.png',
    title: 'Everything your child needs /n with ease',
    description:
        "Discover a new and convenient way /n to shop for your child's school /n supplies without hassle.",
    image2: 'assets/images/next.png'
  ),
  OnboardingModel(
    image1: 'assets/images/m2.png',
    title: 'Custom Package for your child',
    description:
        "Select your child's school and grade to receive a tailored Package of supplies.",
    image2: 'assets/images/next.png'

  ),
  OnboardingModel(
    image1: 'assets/images/m3.png',
    title: 'Shopping made easy \n at your fingertips',
    description:
        'Complete your purchase in just a few \n steps and have everything delivered \n straight to your door.',
    image2: 'assets/images/next.png'

  ),
];
