# Return to the Tomb - VR Controller Setup Guide

## Overview

Return to the Tomb includes pre-configured controller bindings for multiple VR platforms. These bindings are automatically loaded based on your connected VR hardware.

## Supported Controllers

The application includes bindings for:

1. **HTC Vive Controllers** (Wand controllers)
2. **HTC Vive Pro Controllers** (Wand controllers)
3. **Valve Index Knuckles Controllers**
4. **Oculus Touch Controllers** (Rift, Rift S)
5. **Windows Mixed Reality Controllers** (Holographic)
6. **Vive Tracker Camera** (Experimental)

## Configuration Files

Controller bindings are stored in:
```
config/vr-bindings/
├── actions.json                          # Master action definitions
├── vive/
│   ├── binding_vive.json                 # HTC Vive
│   ├── binding_vive_pro.json             # HTC Vive Pro
│   ├── bindings_vive_controller.json     # Detailed Vive mappings
│   └── binding_vive_tracker_camera.json  # Tracker support
├── oculus/
│   ├── binding_rift.json                 # Oculus Rift/Rift S
│   └── bindings_oculus_touch.json        # Touch controller mappings
├── valve/
│   └── bindings_knuckles.json            # Valve Index Knuckles
└── holographic/
    ├── binding_holographic_hmd.json      # WMR HMD
    └── bindings_holographic_controller.json  # WMR controllers
```

## Controller Layout by Platform

### HTC Vive / Vive Pro Controllers

```
        System Button (Top)
              ↑
    [Trackpad - Center Circle]
         ↙         ↘
   Menu          Grip
  Button       (Side)
    ↓              ↓
              Trigger
            (Underside)
```

**Controls**:
- **Trigger** (Index finger): Primary interaction, select, grab
- **Grip Button** (Side): Secondary grab, grip objects
- **Trackpad**: Navigation, menu selection
  - Press center: Confirm
  - Swipe: Directional input
- **Menu Button**: Open in-app menu
- **System Button**: SteamVR home (reserved by SteamVR)

### Valve Index Knuckles Controllers

```
        System Button
              ↑
    [Thumbstick]  [A/B Buttons]
         ↓              ↓
      Trigger      Grip Sensor
   (Graduated)    (Squeeze to grip)
```

**Controls**:
- **Trigger** (Index finger): Primary interaction, graduated pressure sensing
- **Grip Sensor**: Squeeze to grip objects (force sensing)
- **Thumbstick**: Navigation, movement
  - Press: Confirm action
  - Directional: Menu navigation
- **A/B Buttons**: Context-dependent actions
- **Menu Button**: Open in-app menu
- **System Button**: SteamVR home

**Index-Specific Features**:
- Finger tracking for natural hand presence
- Pressure-sensitive grip
- Individual finger tracking (if supported in-app)

### Oculus Touch Controllers

```
    Y/B Buttons (Top)
         ↑
    X/A Buttons
         ↓
    [Thumbstick]
         ↓
      Trigger      Grip
   (Index)       (Middle)
```

**Left Controller**:
- **X Button**: Secondary action
- **Y Button**: Menu/options
- **Thumbstick**: Navigation
- **Trigger**: Primary interaction
- **Grip**: Grab objects
- **Menu Button**: Oculus/App menu

**Right Controller**:
- **A Button**: Confirm
- **B Button**: Back/cancel
- **Thumbstick**: Navigation
- **Trigger**: Primary interaction
- **Grip**: Grab objects

### Windows Mixed Reality Controllers

```
    [Trackpad]
         ↑
   Menu      Windows
  Button     Button
    ↓          ↓
      Trigger
    (Underside)
```

**Controls**:
- **Trigger**: Primary interaction
- **Grip**: Grab objects (side button)
- **Trackpad**: Navigation
- **Menu Button**: In-app menu
- **Windows Button**: Windows Mixed Reality home
- **Thumbstick** (if available): Movement

## Common Actions

### Actions Mapped Across All Controllers

| Action | Purpose | Common Binding |
|--------|---------|----------------|
| **Teleport** | Move to a location | Trackpad/Thumbstick forward |
| **Grab** | Pick up objects | Trigger or Grip |
| **Interact** | Activate UI elements | Trigger |
| **Menu** | Open application menu | Menu button |
| **Turn** | Rotate view (snap turn) | Trackpad/Thumbstick left/right |
| **Reset View** | Re-center position | Click both sticks/pads |

### Interaction Types

1. **Point and Click**
   - Aim controller at object
   - Pull trigger to interact

2. **Grab and Hold**
   - Point at object
   - Pull and hold trigger/grip
   - Release to drop

3. **UI Interaction**
   - Point at UI elements
   - Trigger to select
   - Trackpad/stick to scroll

## Customizing Controller Bindings

### Via SteamVR (for Vive, Index, and compatible headsets)

1. **Access Bindings**:
   - Open SteamVR Dashboard (system button)
   - Settings → Controller Settings
   - Click "Show Old Binding UI" or "Manage Controller Bindings"

2. **Customize**:
   - Find "Return to the Tomb"
   - Click "Edit"
   - Customize actions as desired
   - Save as new binding

3. **Restore Defaults**:
   - Select "Return to the Tomb" from binding list
   - Choose official binding from list
   - Click "Activate"

### Via Oculus Software (for Rift, Quest Link)

1. **Access Bindings**:
   - Open Oculus app on PC
   - Devices → Configure Rift/Quest
   - Controller settings

2. **Note**: Oculus bindings are typically less customizable than SteamVR
   - Some apps allow in-game customization
   - Check application settings menu

## Troubleshooting Controller Issues

### Controllers Not Detected

**SteamVR**:
1. Check controller status in SteamVR dashboard
2. Ensure controllers are powered on (green light)
3. Re-pair controllers:
   - Turn off controller
   - Hold system + trigger until LED blinks
   - Follow on-screen pairing instructions

**Oculus**:
1. Check battery level in Oculus app
2. Re-pair in Oculus app: Devices → Configure Rift → Pair Controller

### Controller Bindings Not Working

1. **Verify binding loaded**:
   - SteamVR: Check binding in controller settings
   - Look for "Return to the Tomb" active binding

2. **Reset to default**:
   - Delete custom bindings
   - Restart application
   - Should load default binding from `config/vr-bindings/`

3. **Check configuration files**:
   - Verify JSON files in `config/vr-bindings/` are intact
   - Re-download application if files are corrupted

### Wrong Controller Model Detected

If SteamVR loads the wrong binding:

1. Check which controllers are active in SteamVR
2. Manually select correct binding:
   - SteamVR → Controller Settings → Manage Controller Bindings
   - Find "Return to the Tomb"
   - Select correct controller type
3. Disable unused controller dongles

## Advanced Configuration

### Action Manifest (actions.json)

Located at: `config/vr-bindings/actions.json`

This file defines all available actions in the application:
- Input actions (trigger, grip, buttons)
- Output actions (haptic feedback)
- Pose actions (controller position/rotation)

**Warning**: Modifying this file may break controller functionality. Edit only if you understand JSON and SteamVR action system.

### Creating Custom Bindings

1. Use SteamVR binding UI to create custom layout
2. Test thoroughly in application
3. Export binding from SteamVR
4. Share with community if desired

## Platform-Specific Notes

### HTC Vive Cosmos

- Uses inside-out tracking (no base stations)
- Controllers similar to Vive but with different ergonomics
- Bindings automatically use Vive controller configuration

### Meta Quest 2 via Link

- Uses Oculus Touch controller bindings
- Ensure Oculus Link is active before launching
- Hand tracking not supported (controller required)

### Valve Index

- Full finger tracking supported
- Graduated trigger pull may enable pressure-sensitive actions
- Knuckles straps allow "letting go" of controllers while playing

## Controller Comfort Tips

1. **Wrist Straps**: Always use wrist straps to prevent throwing controllers
2. **Battery Life**: Keep spare batteries for wireless controllers
3. **Grip**: Don't squeeze controllers too hard - use natural grip
4. **Breaks**: Rest your hands every 20-30 minutes
5. **Calibration**: Recalibrate controller offset if pointing feels off

## Haptic Feedback

All supported controllers provide haptic (vibration) feedback:
- **Object pickup**: Short pulse
- **UI interaction**: Light tap
- **Collision**: Varying intensity based on impact
- **Notifications**: Distinct patterns

Haptic intensity can usually be adjusted in VR runtime settings.

## Accessibility

### One-Handed Play

The application can potentially be played with one controller:
- Primary interaction uses one controller at a time
- Both controllers recommended for full experience

### Reduced Mobility

- Seated play possible with teleportation
- Turn/rotation can use snap turns instead of physical rotation
- Reach requirements minimal

---

**For General Setup**: See [installation-guide.md](installation-guide.md)
**For Troubleshooting**: See [troubleshooting.md](troubleshooting.md)
**For Usage**: See [user-manual.md](user-manual.md)

**Last Updated**: 2025
