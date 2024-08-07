class AssetStrings {
  static const background = 'lib/assets/images/background2.png';
  static const probe = 'lib/assets/images/probe.png';
  static const commandFrigate = 'lib/assets/images/command_frigate.png';
  static const explorer = 'lib/assets/images/explorer.png';
  static const heavyFreighter = 'lib/assets/images/heavy_freighter.png';
  static const interceptor = 'lib/assets/images/interceptor.png';
  static const lightHauler = 'lib/assets/images/light_hauler.png';
  static const lightShuttle = 'lib/assets/images/light_shuttle.png';
  static const miningDrone = 'lib/assets/images/mining_drone.png';
  static const oreHound = 'lib/assets/images/ore_hound.png';
  static const refiningFreighter = 'lib/assets/images/refining_freighter.png';
  static const siphonDrone = 'lib/assets/images/siphon_drone.png';
  static const surveyor = 'lib/assets/images/surveyor.png';
}

getShipImage(String shipType) {
  switch (shipType) {
    case 'SHIP_PROBE' || 'FRAME_PROBE':
      return AssetStrings.probe;
    case 'SHIP_MINING_DRONE' || 'FRAME_MINER':
      return AssetStrings.miningDrone;
    case 'SHIP_SIPHON_DRONE' || 'FRAME_DRONE':
      return AssetStrings.siphonDrone;
    case 'SHIP_INTERCEPTOR' || 'FRAME_INTERCEPTOR':
      return AssetStrings.interceptor;
    case 'SHIP_LIGHT_HAULER' || 'FRAME_RACER':
      return AssetStrings.lightHauler;
    case 'SHIP_COMMAND_FRIGATE' || 'FRAME_FRIGATE' || 'FRAME_DESTROYER':
      return AssetStrings.commandFrigate;
    case 'SHIP_EXPLORER' || 'FRAME_EXPLORER':
      return AssetStrings.explorer;
    case 'SHIP_HEAVY_FREIGHTER' || 'FRAME_FIGHTER' || 'FRAME_HEAVY_FREIGHTER':
      return AssetStrings.heavyFreighter;
    case 'SHIP_LIGHT_SHUTTLE' || 'FRAME_SHUTTLE':
      return AssetStrings.lightShuttle;
    case 'SHIP_ORE_HOUND' || 'FRAME_TRANSPORT':
      return AssetStrings.oreHound;
    case 'SHIP_REFINING_FREIGHTER' || 'FRAME_LIGHT_FREIGHTER':
      return AssetStrings.refiningFreighter;
    case 'SHIP_SURVEYOR' || 'FRAME_CRUISER' || 'FRAME_CARRIER':
      return AssetStrings.surveyor;
  }
}
