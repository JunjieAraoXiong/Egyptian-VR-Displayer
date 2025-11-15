# Return to the Tomb - System Requirements

## Minimum Requirements

### Hardware

| Component | Minimum Specification |
|-----------|----------------------|
| **Operating System** | Windows 10 (64-bit) or later |
| **Processor** | Intel Core i5-4590 / AMD FX 8350 equivalent |
| **Memory** | 8 GB RAM |
| **Graphics** | NVIDIA GTX 970 / AMD Radeon R9 290 equivalent |
| **Graphics Memory** | 4 GB VRAM |
| **DirectX** | Version 11 |
| **Storage** | 2 GB available space |
| **USB Ports** | 1x USB 3.0 port (for VR headset) |

### VR Hardware

**Supported VR Headsets**:
- HTC Vive
- HTC Vive Pro / Pro Eye / Pro 2
- HTC Cosmos / Cosmos Elite
- Meta Quest 2 (via Oculus Link or Air Link)
- Valve Index (compatible via SteamVR)

**Required**:
- VR headset with motion controllers
- Room-scale play space: minimum 2m x 1.5m (6.5ft x 5ft)
- Base stations (for Vive/Index lighthouse tracking)

## Recommended Requirements

For optimal performance and visual quality:

| Component | Recommended Specification |
|-----------|--------------------------|
| **Operating System** | Windows 10/11 (64-bit) |
| **Processor** | Intel Core i7-8700 / AMD Ryzen 5 3600 or better |
| **Memory** | 16 GB RAM |
| **Graphics** | NVIDIA RTX 2060 / AMD Radeon RX 5700 or better |
| **Graphics Memory** | 6 GB VRAM or more |
| **DirectX** | Version 12 |
| **Storage** | SSD with 5 GB available space |
| **USB Ports** | 2x USB 3.0 ports |

## VR Runtime Requirements

### For HTC Vive / Cosmos / Valve Index

**Required Software**:
- **SteamVR** (latest version)
  - Download from Steam (free)
  - Ensure SteamVR is running before launching the application

**Installation**:
1. Install Steam from [store.steampowered.com](https://store.steampowered.com)
2. Launch Steam
3. Install SteamVR from Tools in your Steam Library
4. Complete SteamVR room setup

### For Meta Quest 2

**Required Software**:
- **Oculus PC Software** (latest version)
  - Download from [oculus.com/setup](https://www.oculus.com/setup/)

**Connection Options**:
1. **Oculus Link** (recommended)
   - USB 3.0 cable (USB-C or USB-A to USB-C)
   - Enable Oculus Link in headset

2. **Air Link** (wireless)
   - 5 GHz Wi-Fi network required
   - Router close to play space
   - Enable Air Link in headset and Oculus app

## Software Dependencies

The following are included with the application:

- **Unity Player** (included in `bin/UnityPlayer.dll`)
- **Mono Runtime** (included in `runtime/MonoBleedingEdge/`)
- **OpenVR API** (included in `data/Plugins/`)
- **Oculus Plugin** (included in `data/Plugins/`)

### Additional Requirements

You may need to install:

- **Microsoft Visual C++ Redistributable 2017-2022** (x64)
  - [Download from Microsoft](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist)

- **.NET Framework 4.7.2 or later**
  - Usually included with Windows 10/11
  - [Download from Microsoft](https://dotnet.microsoft.com/download/dotnet-framework) if needed

## Network Requirements

- **Not required** - This is a standalone, offline VR experience
- No internet connection needed after installation
- No account creation or online services required

## Storage Breakdown

| Component | Size |
|-----------|------|
| Executables and DLLs | ~24 MB |
| Game Code Assemblies | ~11 MB |
| Native Plugins | ~20 MB |
| Scene Files | ~40 MB |
| Shared Assets | ~270 MB |
| Baked Lighting | ~50 MB |
| Managed Resources | ~4 MB |
| Runtime Dependencies | ~100 MB |
| **Total Installation Size** | **~520 MB** |

**Note**: Scene 1 (Tomb Exterior) is the largest scene at 34 MB and requires sufficient RAM for loading.

## Display Requirements

### Monitor (for setup only)

- Minimum 1920x1080 resolution recommended
- The VR headset handles the actual experience display

### VR Headset Display

All supported headsets meet the minimum display requirements:
- Minimum resolution: 1080x1200 per eye (HTC Vive)
- Recommended: 1440x1600 per eye or higher
- Refresh rate: 90 Hz minimum (some headsets support 120 Hz or higher)

## Performance Notes

### GPU Performance Tiers

**Entry Level** (GTX 970 / RX 290):
- Minimum playable performance
- May experience occasional frame drops in Scene 1
- Lower supersampling recommended

**Mid Range** (GTX 1060 / RX 580 / RTX 2060):
- Smooth performance in all scenes
- Can handle moderate supersampling
- Recommended for most users

**High End** (RTX 2070+ / RX 5700 XT+):
- Excellent performance with headroom
- Can maximize SteamVR render resolution
- Best for high-resolution headsets (Vive Pro 2, Valve Index)

### CPU Performance

- Scene loading is CPU-intensive
- Multi-core processors recommended for faster scene transitions
- Scene 1 loading may take 30-60 seconds on minimum spec systems

### Storage Performance

| Storage Type | Scene 1 Load Time (estimated) |
|--------------|-------------------------------|
| HDD (7200 RPM) | 60-90 seconds |
| SATA SSD | 15-30 seconds |
| NVMe SSD | 10-20 seconds |

**Recommendation**: Install on an SSD for the best experience.

## Play Space Requirements

### Room-Scale VR

**Minimum**: 2m x 1.5m (6.5ft x 5ft)
- Enough space to walk around the sarcophagus
- Clear of obstacles

**Recommended**: 3m x 3m (10ft x 10ft)
- Full freedom of movement
- Optimal for exploration

### Seated Mode

- Supported by some VR runtimes
- Limited mobility compared to room-scale
- Not recommended for full experience

## Accessibility Considerations

### Physical Requirements

- Ability to stand for 20-30 minute sessions
- Ability to turn 360 degrees
- Ability to look up/down and crouch (optional)

### Alternative Options

- Teleportation locomotion reduces motion sickness
- Can be experienced seated if necessary
- Pause functionality available

## Compatibility Notes

### Known Compatible Systems

- **Windows 10** (Version 1903 or later)
- **Windows 11** (All versions)

### Not Supported

- **macOS** - Unity build is Windows-only
- **Linux** - Not tested, may work with Proton but unsupported
- **VR Headsets**:
  - Mobile VR (Cardboard, Gear VR)
  - Non-PC VR (standalone Quest without Link)
  - Windows Mixed Reality (untested, may work)

### Unity Version

Built with **Unity 2018.3.14f1**
- This version may affect compatibility with very new VR headsets
- Most modern headsets maintain backward compatibility via OpenVR/SteamVR

## Testing Your System

Before installing, verify your system meets requirements:

1. **VR Ready Test**:
   - SteamVR Performance Test (free on Steam)
   - Oculus Compatibility Tool

2. **GPU Check**:
   - Open Device Manager → Display Adapters
   - Ensure you have a discrete GPU (not integrated graphics)

3. **Available Storage**:
   - Check drive where you plan to install has 2+ GB free

4. **USB Port Check**:
   - Ensure USB 3.0 ports available
   - Test with headset before installing application

## Performance Optimization

See [troubleshooting.md](troubleshooting.md) for performance optimization tips if you experience issues.

---

**For Installation Instructions**: See [installation-guide.md](installation-guide.md)
**For Usage Help**: See [user-manual.md](user-manual.md)

**Last Updated**: 2025
