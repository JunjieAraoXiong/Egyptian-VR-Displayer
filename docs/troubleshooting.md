# Return to the Tomb - Troubleshooting Guide

## Common Issues and Solutions

### Application Won't Start

#### Issue: Double-clicking ReturnToTheTomb.exe does nothing

**Solutions**:
1. Check that all required files are present:
   - Run `scripts\verify-installation.bat`
   - Ensure `bin/`, `data/`, `runtime/`, and `config/` folders exist

2. Verify Visual C++ Redistributables are installed:
   - Download and install [Microsoft Visual C++ Redistributable](https://support.microsoft.com/en-us/help/2977003/the-latest-supported-visual-c-downloads)
   - Restart your computer after installation

3. Check Windows permissions:
   - Right-click `bin\ReturnToTheTomb.exe` → Properties
   - Ensure "Unblock" checkbox is checked (if present)
   - Click "Apply"

#### Issue: "Missing DLL" error

**Solutions**:
- Ensure `bin/UnityPlayer.dll` exists
- Verify `runtime/MonoBleedingEdge/` folder is intact
- Re-download or re-extract the application

### VR Headset Issues

#### Issue: VR headset not detected

**Solutions**:

**For HTC Vive/Cosmos:**
1. Ensure SteamVR is running before launching the application
2. Verify headset is connected and shows as "Ready" in SteamVR
3. Check USB and DisplayPort/HDMI connections
4. Restart SteamVR

**For Meta Quest 2:**
1. Enable Oculus Link or Air Link in the headset
2. Verify Oculus software shows headset as connected
3. Grant USB debugging permissions on the headset
4. Try a different USB 3.0 port or cable

#### Issue: Controllers not working

**Solutions**:
1. Check controller batteries
2. Re-pair controllers with the VR runtime
3. Verify controller bindings in `config/vr-bindings/` folder
4. In SteamVR: Settings → Devices → Controller Settings → Show Old Binding UI
5. Select "Return to the Tomb" and choose the appropriate binding

### Performance Issues

#### Issue: Low framerate or stuttering

**Solutions**:
1. **Update GPU drivers**:
   - NVIDIA: GeForce Experience or nvidia.com
   - AMD: AMD Software or amd.com

2. **Close background applications**:
   - Close Chrome, Discord, and other resource-heavy apps
   - Disable Windows Game DVR

3. **Adjust VR settings**:
   - Lower SteamVR render resolution (SteamVR → Settings → Video)
   - Disable advanced features (motion smoothing, supersampling)

4. **Check system requirements**:
   - See [system-requirements.md](system-requirements.md)
   - Ensure your PC meets minimum specifications

#### Issue: Scene 1 takes very long to load

**Solution**:
- This is expected - Scene 1 (Tomb Exterior) is 34 MB and may take 30-60 seconds to load
- Ensure you have an SSD for faster loading times
- Be patient during the transition

### Visual Issues

#### Issue: Blurry or distorted visuals

**Solutions**:
1. Adjust headset position on your face
2. Adjust IPD (interpupillary distance) setting:
   - HTC Vive: Physical slider on headset
   - Quest 2: Settings → Device → IPD
3. Clean headset lenses with microfiber cloth
4. Increase render resolution in SteamVR settings

#### Issue: Black screen in headset

**Solutions**:
1. Check that the application is launching on the correct display
2. Ensure VR runtime (SteamVR/Oculus) is active
3. Try restarting the application
4. Check `UnityCrashHandler64.exe` logs in the installation directory

### Audio Issues

#### Issue: No audio in headset

**Solutions**:
1. **Windows Settings**:
   - Right-click volume icon → Open Sound Settings
   - Ensure VR headset is selected as output device

2. **SteamVR Settings**:
   - SteamVR → Settings → Audio
   - Set "Playback Device" to your VR headset

3. **Oculus Settings**:
   - Oculus app → Devices → Headset → Audio Output in VR
   - Select headset speakers or connected headphones

### Application Crashes

#### Issue: Application crashes on startup

**Solutions**:
1. Check crash logs:
   - Look for `output_log.txt` in the data folder
   - Check Windows Event Viewer for error details

2. Verify file integrity:
   - Run `scripts\verify-installation.bat`
   - Re-download if files are missing

3. Update dependencies:
   - Install latest Visual C++ Redistributable
   - Update .NET Framework to 4.7.2 or later

4. Check antivirus:
   - Add `bin\ReturnToTheTomb.exe` to antivirus exclusions
   - Temporarily disable antivirus to test

#### Issue: Application crashes during scene transitions

**Solutions**:
1. Free up system RAM (close background applications)
2. Ensure you have at least 4 GB of free RAM
3. Update GPU drivers
4. Verify GPU VRAM is sufficient (minimum 4 GB recommended)

### File Permission Issues

#### Issue: "Access Denied" or permission errors

**Solutions**:
1. Run as Administrator:
   - Right-click `bin\ReturnToTheTomb.exe`
   - Select "Run as administrator"

2. Check folder permissions:
   - Right-click installation folder → Properties → Security
   - Ensure your user account has "Full Control"

3. Move installation to a different location:
   - Avoid Program Files or system-protected folders
   - Use Desktop, Documents, or a dedicated Games folder

## Still Having Issues?

### Collect Diagnostic Information

1. System specifications (CPU, GPU, RAM)
2. VR headset model
3. Windows version
4. VR runtime version (SteamVR or Oculus)
5. Error messages or crash logs
6. Screenshots (if applicable)

### Report Issues

- Check the GitHub repository for known issues
- Create a new issue with diagnostic information
- Include the `output_log.txt` file from the data folder

## Advanced Troubleshooting

### Verify Scene Files

Scene files should exist in these locations:
```
data/Scenes/00-intro/level0, level0.resS
data/Scenes/01-tomb-exterior/level1, level1.resS  (largest)
data/Scenes/02-sarcophagus/level2, level2.resS
data/Scenes/03-interior/level3, level3.resS
data/Scenes/04-ending/level4, level4.resS
```

### Verify Shared Assets

Check that shared assets exist:
```
data/SharedAssets/scene0/  (117 MB)
data/SharedAssets/scene1/  (39 MB)
data/SharedAssets/scene2/  (28 MB)
data/SharedAssets/scene3/  (90 MB)
data/SharedAssets/scene4/  (small)
```

### Check VR Bindings

Verify VR configuration files exist:
```
config/vr-bindings/actions.json
config/vr-bindings/vive/
config/vr-bindings/oculus/
config/vr-bindings/valve/
config/vr-bindings/holographic/
```

---

**Last Updated**: 2025
**For Installation Help**: See [installation-guide.md](installation-guide.md)
**For General Usage**: See [user-manual.md](user-manual.md)
