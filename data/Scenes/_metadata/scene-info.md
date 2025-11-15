# Return to the Tomb - Scene Information

## Scene Overview

This VR experience consists of 5 distinct scenes that guide users through a virtual exploration of the ancient Egyptian necropolis of Saqqara and the sarcophagus of Psamtek.

## Scene Details

### Scene 0: Introduction
**Folder**: `00-intro/`
**Files**: `level0`, `level0.resS`
**Size**: ~1.7 MB

**Purpose**: Welcome and orientation
- Application startup
- Introduction to controls
- User orientation and tutorial
- Setting the historical context

**Content**:
- Welcome screen
- Basic VR controls tutorial
- Introduction to Psamtek and Saqqara
- Navigation instructions

**Shared Assets**: `SharedAssets/scene0/` (~117 MB)
- UI elements
- Tutorial graphics
- Audio narration (if present)
- Base environment

---

### Scene 1: Tomb Exterior
**Folder**: `01-tomb-exterior/`
**Files**: `level1`, `level1.resS`
**Size**: ~34 MB ⚠️ **LARGEST SCENE**

**Purpose**: Approach to the necropolis
- Exterior environment of Saqqara
- Contextual setting
- Approach to the tomb entrance
- Environmental storytelling

**Content**:
- Outdoor desert environment
- Architectural elements of Saqqara
- Tomb entrance and surroundings
- Atmospheric lighting and ambience

**Shared Assets**: `SharedAssets/scene1/` (~39 MB)
- High-resolution textures for environment
- 3D models of architectural elements
- Terrain and landscape assets
- Environmental audio

**Performance Note**:
- This is the largest scene and may take 30-60 seconds to load
- Requires adequate GPU VRAM (4+ GB recommended)
- Loading time varies based on storage speed (SSD recommended)

**Lighting**: `Lighting/level0/` - Outdoor lighting baked for desert environment

---

### Scene 2: Sarcophagus Focus
**Folder**: `02-sarcophagus/`
**Files**: `level2`, `level2.resS`
**Size**: ~880 KB

**Purpose**: Close examination of the sarcophagus
- Primary focus on Psamtek's basalt sarcophagus
- Detailed view of hieroglyphics
- Interactive elements
- Educational content delivery

**Content**:
- High-fidelity photogrammetric model of sarcophagus
- Basalt material rendering
- Hieroglyphic inscriptions
- Interactive information points
- Close-up viewing angles

**Shared Assets**: `SharedAssets/scene2/` (~28 MB)
- Sarcophagus 3D model and textures
- High-resolution normal maps
- Hieroglyphic details
- UI overlays for information

**Lighting**: `Lighting/level2/` - Museum-style lighting to showcase artifact

**Educational Focus**:
- Sarcophagus construction and materials
- Hieroglyphic translations
- Historical context of Psamtek
- Late Period burial practices

---

### Scene 3: Interior Exploration
**Folder**: `03-interior/`
**Files**: `level3`, `level3.resS`
**Size**: ~904 KB

**Purpose**: Explore the tomb interior
- Interior chamber exploration
- Funerary context
- Architectural details
- Immersive historical experience

**Content**:
- Tomb interior architecture
- Wall decorations and reliefs
- Chamber layout
- Atmospheric tomb environment
- Additional artifacts (if present)

**Shared Assets**: `SharedAssets/scene3/` (~90 MB - Second largest)
- Interior textures and materials
- Wall relief models
- Tomb architecture
- Lighting and shadow maps
- Atmospheric effects

**Lighting**: `Lighting/level3/` - Interior tomb lighting with dramatic shadows

**Experience Notes**:
- Darker environment requiring torch/light mechanics (possibly)
- Emphasis on atmosphere and historical authenticity
- Room-scale VR recommended for full exploration

---

### Scene 4: Conclusion
**Folder**: `04-ending/`
**Files**: `level4`, `level4.resS`
**Size**: ~80 KB ⚡ **SMALLEST SCENE**

**Purpose**: Closing and reflection
- Conclusion of the experience
- Summary of key points
- Credits and acknowledgments
- Exit and replay options

**Content**:
- Summary screen
- Key takeaways
- Credits display
- Return to menu or exit options

**Shared Assets**: `SharedAssets/scene4/` (~13 KB - Minimal)
- UI elements only
- Text and graphics for credits
- Simple background

**Performance Note**:
- Minimal scene, loads very quickly
- Primarily UI-based

---

## Scene Loading Sequence

The scenes are designed to be experienced in order:

```
Start → Scene 0 (Intro)
          ↓
      Scene 1 (Exterior) ⏱️ Longest load
          ↓
      Scene 2 (Sarcophagus) 🎯 Main focus
          ↓
      Scene 3 (Interior)
          ↓
      Scene 4 (Conclusion)
          ↓
        Exit / Replay
```

## Scene Transition

Scenes are loaded sequentially:
- Previous scene is unloaded before loading next
- Loading screen displayed during transitions
- Progress indicator shown for longer loads (especially Scene 1)

## Global Scene Files

Located in `data/Scenes/`:
- **boot.config**: Unity boot configuration
- **globalgamemanagers**: Global project settings
- **globalgamemanagers.assets**: Shared project data

These files are shared across all scenes and must be present for the application to function.

## Shared Assets Organization

Each scene has corresponding shared assets:

| Scene | Folder | Size | Contents |
|-------|--------|------|----------|
| 0 | `SharedAssets/scene0/` | 117 MB | UI, tutorial, base environment |
| 1 | `SharedAssets/scene1/` | 39 MB | Exterior environment textures |
| 2 | `SharedAssets/scene2/` | 28 MB | Sarcophagus model and details |
| 3 | `SharedAssets/scene3/` | 90 MB | Interior architecture and effects |
| 4 | `SharedAssets/scene4/` | 13 KB | Minimal UI for conclusion |

**Total Shared Assets**: ~274 MB

## Baked Lighting

Scenes use Unity's baked Global Illumination (GI) for realistic lighting:

- **Scene 0**: `Lighting/level0/` - Tutorial lighting
- **Scene 1**: `Lighting/level0/` - Desert/exterior lighting (reused)
- **Scene 2**: `Lighting/level2/` - Museum spotlight lighting
- **Scene 3**: `Lighting/level3/` - Atmospheric tomb lighting
- **Scene 4**: `Lighting/level4/` - Simple UI lighting

For details on the lighting structure, see `data/Lighting/README-lighting.txt`

## Performance Optimization Tips

### For Scene 1 (Largest Scene)

If experiencing performance issues:
1. Close background applications before loading
2. Ensure at least 4 GB RAM available
3. Lower SteamVR render resolution
4. Install on SSD for faster loading

### General Tips

- Scenes are optimized for 90 FPS minimum
- GPU with 4+ GB VRAM recommended
- Baked lighting reduces runtime performance cost
- LOD (Level of Detail) may be implemented for distant objects

## File Format Reference

- **.level files**: Unity scene serialized data
- **.resS files**: Unity resource files (textures, meshes, audio)
- **.assets files**: Unity asset bundles
- **.resS extension**: "resource Serialized" - externalized asset data

## Troubleshooting Scene Issues

### Scene Won't Load

1. Verify scene files exist in correct folders
2. Check shared assets are present
3. Verify global scene files exist
4. Check application logs for errors

### Scene Loads But Is Empty

1. Check shared assets folder size matches expected
2. Verify lighting data exists
3. Reinstall or re-extract application

### Scene Loading Takes Very Long

- This is expected for Scene 1 (30-60 seconds)
- Install on SSD to improve load times
- Ensure sufficient RAM available
- Check no background apps are using disk heavily

---

**For Installation**: See [docs/installation-guide.md](../../../docs/installation-guide.md)
**For Usage**: See [docs/user-manual.md](../../../docs/user-manual.md)
**For Troubleshooting**: See [docs/troubleshooting.md](../../../docs/troubleshooting.md)

**Last Updated**: 2025
