class PlanetInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  PlanetInfo(
    this.position, {
    this.name,
    this.iconImage = "",
    this.description,
    this.images,
  });
}

List<PlanetInfo> planets = [
  PlanetInfo(
    1,
    name: 'Fever',
    description:
        "It’s normal for your body temperature to fluctuate throughout the day. But in general, if you’re an adult and your temperature is above 100.4°F (38°C), you have a fever.",
  ),
  PlanetInfo(
    2,
    name: 'Headaches',
    description:
        "Headaches can be more complicated than most people realize. Different kinds can have their own set of symptoms, happen for unique reasons, and need different treatments.",
  ),
  PlanetInfo(
    3,
    name: 'muscle pain',
    iconImage: 'assets/earth.png',
    description:
        "Muscle pain originates in any of the muscles in the body. The medical term for muscle pain is myalgia. Muscle pain may arise due to injury or overexertion, infections of the soft tissues, or inflammatory conditions. A number of conditions can be associated with generalized aches and pain, such as influenza, that are perceived to be muscle pain. Muscle pain can be localized to one muscle group or diffuse, involving multiple muscle groups. Muscle pain due to injury or overuse is most commonly localized to one area. Depending upon the cause, muscle pain can be mild or severe and debilitating. Muscle pain is the hallmark symptom of some chronic conditions like fibromyalgia.",
  ),
  PlanetInfo(
    4,
    name: 'ShortBreadth',
    description:
        "Shortness of breath, or dyspnea, is an uncomfortable condition that makes it difficult to fully get air into your lungs. Problems with your heart and lungs can harm your breathing. Some people may experience shortness of breath suddenly for short periods of time.",
  ),
  PlanetInfo(5,
      name: 'Sore Throat',
      description:
          "A sore throat is pain, scratchiness or irritation of the throat that often worsens when you swallow. The most common cause of a sore throat (pharyngitis)",
      images: []),
  PlanetInfo(
    6,
    name: 'tiredness',
    iconImage: 'assets/saturn.png',
    description:
        "Physical fatigue is the transient inability of muscles to maintain optimal physical performance, and is made more severe by intense physical exercise. Mental fatigue is a transient decrease in maximal cognitive performance resulting from prolonged periods of cognitive activity. Mental fatigue can manifest as somnolence, lethargy, or directed attention fatigue.",
  ),
  PlanetInfo(
    7,
    name: 'Chest Pain',
    iconImage: 'assets/uranus.png',
    description:
        "Chest pain appears in many forms, ranging from a sharp stab to a dull ache. Sometimes chest pain feels crushing or burning. In certain cases, the pain travels up the neck, into the jaw, and then radiates to the back or down one or both arms.",
  ),
];
