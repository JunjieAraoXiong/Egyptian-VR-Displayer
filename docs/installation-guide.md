# Return to the Tomb - Installation Guide

## System Requirements

Please see [system-requirements.md](system-requirements.md) for detailed hardware and software requirements.

## Installation Steps

### Windows Installation

1. **Download the Application**
   - Clone or download the repository from GitHub
   - Extract to your preferred location (if downloaded as ZIP)

2. **Verify Installation**
   - Navigate to the installation directory
   - Run the verification script:
     ```
     scripts\verify-installation.bat
     ```
   - Ensure all required files are present

3. **VR Headset Setup**
   - Connect your VR headset (HTC Vive, HTC Cosmos, or Meta Quest 2)
   - Install the appropriate VR runtime:
     - **HTC Vive/Cosmos**: Install SteamVR from Steam
     - **Meta Quest 2**: Install Oculus software and enable Oculus Link/Air Link
   - Configure your VR play space according to manufacturer instructions

4. **First Launch**
   - Ensure your VR headset is connected and tracking
   - Use one of the launcher scripts in the `scripts/` folder:
     - For HTC Vive: `launch-htc-vive.bat`
     - For Meta Quest: `launch-quest-link.bat`
   - Or run directly: `bin\ReturnToTheTomb.exe`

## Post-Installation

### Controller Configuration

The application includes pre-configured controller bindings for multiple VR systems. See [vr-controller-setup.md](vr-controller-setup.md) for details.

### Troubleshooting

If you encounter issues during installation or first launch, please refer to [troubleshooting.md](troubleshooting.md).

## Directory Structure

```
ReturnToTheTomb/
├── bin/              - Application executables
├── config/           - Configuration files
├── data/             - Game assets and scenes
├── runtime/          - Runtime dependencies
├── docs/             - Documentation (you are here)
└── scripts/          - Utility scripts
```

## Updates

Check the [CHANGELOG.md](../CHANGELOG.md) in the root directory for version history and updates.

## Support

For issues or questions:
- Check [troubleshooting.md](troubleshooting.md) first
- Review the project README in the root directory
- Contact the project maintainers through GitHub

---

**Project Directors**: Dr. Rita Lucarelli (UC Berkeley) & Dr. Elaine Sullivan (UC Santa Cruz)

**License**: CC BY-NC-ND 4.0 - See [LICENSE.txt](../LICENSE.txt) for details
