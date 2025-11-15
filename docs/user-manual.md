# Return to the Tomb - User Manual

## Overview

**Return to the Tomb** is an immersive VR experience that transports you to the ancient Egyptian necropolis of Saqqara. Explore a photogrammetric reconstruction of the basalt sarcophagus belonging to Psamtek, a Late Period official.

## Getting Started

### Launching the Application

1. Ensure your VR headset is connected and the VR runtime (SteamVR or Oculus) is running
2. Put on your VR headset
3. Launch the application using:
   - Quick launcher: `scripts\launch-htc-vive.bat` or `scripts\launch-quest-link.bat`
   - Or directly: `bin\ReturnToTheTomb.exe`

### Navigation

The experience is divided into five scenes that guide you through the virtual tomb:

1. **Scene 0: Introduction** - Welcome and orientation
2. **Scene 1: Tomb Exterior** - Approach the necropolis (largest scene, may take longer to load)
3. **Scene 2: Sarcophagus Focus** - Close examination of Psamtek's sarcophagus
4. **Scene 3: Interior Exploration** - Explore the tomb interior
5. **Scene 4: Conclusion** - Reflections and closing

## VR Controls

### HTC Vive / Vive Pro Controllers

- **Trigger**: Interact with objects
- **Grip Button**: Grab and manipulate
- **Touchpad**: Navigate menus
- **System Button**: Return to SteamVR home

### Oculus Touch Controllers

- **Index Trigger**: Interact with objects
- **Grip Button**: Grab and manipulate
- **Thumbstick**: Navigate menus
- **Menu Button**: Open application menu

### Valve Index Knuckles Controllers

- **Trigger**: Interact with objects
- **Grip**: Grab and manipulate
- **Thumbstick**: Navigate menus
- **A/B Buttons**: Additional controls

For detailed controller mappings, see [vr-controller-setup.md](vr-controller-setup.md).

## Features

### Photogrammetric Model

The centerpiece of this experience is a high-fidelity photogrammetric model of Psamtek's basalt sarcophagus, captured using advanced 3D scanning techniques. You can:

- Walk around the sarcophagus
- Examine intricate hieroglyphic details
- Observe the craftsmanship up close

### Educational Content

This VR experience was created as an educational tool for:
- Egyptology students and researchers
- Museum visitors and educators
- Anyone interested in ancient Egyptian culture

### Scene Loading

**Note**: Scene 1 (Tomb Exterior) is the largest scene at 34 MB and may take longer to load. Please be patient during transitions.

## Tips for Best Experience

1. **Room Scale Setup**: Ensure you have adequate play space (2m x 1.5m minimum recommended)
2. **Lighting**: Use the VR experience in a room with moderate ambient lighting
3. **Performance**: For best performance, close other applications before launching
4. **Comfort**: Take breaks every 20-30 minutes to avoid VR fatigue
5. **Audio**: Use headphones for immersive audio (if available)

## Accessibility

- The experience is designed for standing/room-scale VR
- Seated mode may be available depending on your VR runtime settings
- Teleportation locomotion reduces motion sickness

## Technical Details

- **Built with**: Unity 2018.3.14f1
- **VR SDK**: OpenVR (SteamVR) and Oculus SDK
- **Supported Headsets**: HTC Vive, HTC Cosmos, Meta Quest 2 (via Link)
- **Platform**: Windows 10/11

## Exiting the Application

To exit the application:
1. Press the menu/system button on your controller
2. Select "Quit" or "Exit" from the menu
3. Or use the VR runtime's system menu to close the application

## Troubleshooting

If you experience issues:
- See [troubleshooting.md](troubleshooting.md) for common problems and solutions
- Ensure your VR runtime is up to date
- Check that your GPU drivers are current

---

## Credits

**Project Directors**:
- Dr. Rita Lucarelli (UC Berkeley)
- Dr. Elaine Sullivan (UC Santa Cruz)

**Collaboration**: UC Berkeley & UC Santa Cruz, 2020

For full credits, see [credits.md](credits.md).

## License

This work is licensed under CC BY-NC-ND 4.0. See [LICENSE.txt](../LICENSE.txt) for details.

---

Enjoy your journey to ancient Egypt!
