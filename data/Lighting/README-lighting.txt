Return to the Tomb - Baked Lighting Data
========================================

OVERVIEW
--------
This folder contains Unity's pre-computed Global Illumination (GI) lighting data for
all scenes in the VR experience. The lighting is "baked" at development time to
provide realistic illumination without the performance cost of real-time lighting
calculations.

WHAT IS BAKED LIGHTING?
-----------------------
Baked lighting is a technique where:
- Light bounces, shadows, and ambient occlusion are calculated in advance
- Results are stored as lightmaps and probe data
- At runtime, these pre-calculated values are applied to the scene
- This provides realistic lighting at minimal runtime performance cost
- Essential for VR applications that require high frame rates (90+ FPS)

FOLDER STRUCTURE
----------------
The folder uses Unity's GI hash-based organization:

Lighting/
├── level0/     (Scene 0 and Scene 1 lighting)
│   ├── 0f/     (Hash subfolder)
│   │   ├── [hash].caw        - Composited Ambient Wave
│   │   ├── [hash].ecm        - Environment Cubemap
│   │   ├── [hash].iws.sse    - Irradiance/Light probe data (SSE optimized)
│   │   ├── [hash].rgb        - RGB lightmap
│   │   ├── [hash].rsc.sse    - Resource data (SSE optimized)
│   │   └── [hash].vis        - Visibility/occlusion data
│   └── b6/     (Hash subfolder)
│       └── [6 similar files]
│
├── level2/     (Scene 2 lighting - Sarcophagus)
│   ├── [hash1]/
│   │   └── [6 lighting files]
│   └── [hash2]/
│       └── [6 lighting files]
│
├── level3/     (Scene 3 lighting - Interior)
│   ├── [hash1]/
│   │   └── [6 lighting files]
│   └── [hash2]/
│       └── [6 lighting files]
│
└── level4/     (Scene 4 lighting - Conclusion)
    ├── [hash1]/
    │   └── [6 lighting files]
    └── [hash2]/
        └── [6 lighting files]

HASH ORGANIZATION
-----------------
Unity organizes GI data into hash-based subfolders (e.g., "0f", "b6"):
- Hashes are derived from scene content and lighting settings
- Allows Unity to cache and reuse lighting data efficiently
- Multiple hash folders indicate different lighting scenarios or LODs
- DO NOT rename or reorganize - Unity relies on this exact structure

FILE TYPE DESCRIPTIONS
----------------------

.caw (Composited Ambient Wave)
    - Ambient lighting contribution data
    - Used for skylight and ambient occlusion

.ecm (Environment Cubemap)
    - 360-degree environment reflection data
    - Used for reflective surfaces and skybox lighting

.iws.sse (Irradiance/Light Probe Data - SSE)
    - Light probe irradiance values
    - SSE = SIMD optimized for faster CPU processing
    - Provides lighting for dynamic objects

.rgb (RGB Lightmap)
    - Full-color lightmap textures
    - Applied to static geometry surfaces
    - Contains baked direct and indirect lighting

.rsc.sse (Resource Data - SSE)
    - Additional lighting resources
    - SSE optimized for performance

.vis (Visibility Data)
    - Occlusion and visibility information
    - Determines which lights affect which surfaces
    - Used for optimizing light calculations

LIGHTING SCENARIOS BY SCENE
----------------------------

LEVEL 0 (Intro & Exterior):
    Environment: Desert daytime / Tutorial space
    Lighting: Bright directional sun, blue sky ambient
    Characteristics: High contrast, warm tones, outdoor lighting
    Size: ~8-12 MB of lighting data

LEVEL 2 (Sarcophagus):
    Environment: Museum-style display
    Lighting: Spotlights focused on sarcophagus, neutral ambient
    Characteristics: Dramatic shadows, emphasizes artifact details
    Size: ~8-12 MB of lighting data

LEVEL 3 (Interior):
    Environment: Ancient tomb chamber
    Lighting: Atmospheric, dim ambient, possibly torch-lit
    Characteristics: Moody, dramatic shadows, warm/orange tones
    Size: ~8-12 MB of lighting data (most complex)

LEVEL 4 (Conclusion):
    Environment: Simple UI background
    Lighting: Minimal, neutral illumination
    Characteristics: Flat lighting for text readability
    Size: ~8-12 MB of lighting data

TOTAL SIZE
----------
Approximately 50 MB of baked lighting data across all scenes

TECHNICAL DETAILS
-----------------

Unity Version: 2018.3.14f1
GI Backend: Progressive Lightmapper
Lightmap Format: RGB (no directional maps in this build)
Compression: Default Unity compression
Light Probe Resolution: Standard density
Baked Settings:
    - Indirect intensity: Adjusted per scene
    - Ambient occlusion: Enabled
    - Final gather: Enabled for smooth indirect lighting
    - Skylight: Enabled for outdoor scenes

WHY BAKED LIGHTING FOR VR?
---------------------------

1. PERFORMANCE:
   - Real-time global illumination is too expensive for VR's 90+ FPS requirement
   - Baked lighting has near-zero runtime cost
   - Allows complex lighting scenarios without frame drops

2. QUALITY:
   - More accurate light bounces than real-time approximations
   - Better soft shadows and ambient occlusion
   - Realistic indirect lighting effects

3. CONSISTENCY:
   - Lighting looks identical every time the scene loads
   - No runtime lighting artifacts or fluctuations
   - Predictable performance across different GPUs

LIMITATIONS
-----------

- Lighting is static - cannot change in real-time
- Moving objects use light probes (lower quality than lightmaps)
- Scene must be re-baked if lighting design changes
- Requires storage space for lightmap data

DO NOT MODIFY
-------------

⚠️ WARNING: Do not delete, rename, or modify files in this folder!

- Unity expects this exact folder structure and file naming
- Missing or corrupted lighting files will result in:
    * Completely black scenes
    * Pink/magenta "missing texture" artifacts
    * Application crashes during scene loading
- Lightmap hashes are tied to scene content - manual changes break this link

TROUBLESHOOTING
---------------

Scene is completely black:
    → Lighting data is missing or corrupted
    → Re-extract/re-download the application
    → Verify all files in Lighting/ folder are present

Pink/magenta artifacts on surfaces:
    → Lightmap files are corrupted
    → Check file sizes match expected (~1-3 MB per file)
    → Reinstall application

Scene loads but lighting looks wrong:
    → May be using fallback/default lighting
    → Verify hash folder names match exactly (case-sensitive)
    → Ensure no extra files or folders were added

"Lightmap not found" errors in logs:
    → Verify .rgb files exist in hash folders
    → Check that scene files reference correct lighting hash
    → Reinstall if files are missing

TECHNICAL REFERENCE
-------------------

For more information on Unity's GI system:
- Unity Manual: "Global Illumination"
- Unity Manual: "Progressive Lightmapper"
- Unity API: "Lightmapping" class

For scene-specific lighting information:
- See: data/Scenes/_metadata/scene-info.md

---

Last Updated: 2025
Unity Version: 2018.3.14f1
Project: Return to the Tomb - UC Berkeley & UC Santa Cruz
