import 'dart:math';

class AssetStrings {
  static const background = 'lib/assets/images/background2.png';
  static const spaceship1 = 'lib/assets/images/Blue.png';
  static const spaceship2 = 'lib/assets/images/brown.png';
  static const spaceship3 = 'lib/assets/images/Gray1.png';
  static const spaceship4 = 'lib/assets/images/Gray2.png';
  static const spaceship5 = 'lib/assets/images/gray3.png';
  static const spaceship6 = 'lib/assets/images/green.png';
  static const spaceship7 = 'lib/assets/images/purple.png';
}

getRandomSpaceShip() {
  List spaceShips = [
    AssetStrings.spaceship1,
    AssetStrings.spaceship2,
    AssetStrings.spaceship3,
    AssetStrings.spaceship4,
    AssetStrings.spaceship5,
    AssetStrings.spaceship6,
    AssetStrings.spaceship7
  ];
  return spaceShips[Random().nextInt(7)];
}
