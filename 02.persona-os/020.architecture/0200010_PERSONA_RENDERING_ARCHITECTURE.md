# ============================================================
# PERSONA RENDERING SPECIFICATION
# PersonaOS Visual Runtime Canonical Spec v2.3
# ============================================================

status: canonical
component: persona-visual-runtime
scope: persona.rendering
owner: Boss
prepared_by: Zero
version: 2.3


# ============================================================
# DESIGN PHILOSOPHY
# ============================================================

PersonaOS uses an Anchor-centric compositing engine.

Goals:

• Do not require strict trimming from users  
• Preserve high resolution source images  
• Perform center correction at runtime  
• Remain compatible with future Rig / Live2D expansion  

Layered responsibility model:

DB = original asset storage  
Generation apps = segmentation / cutting layer  
Rendering engine = automatic correction layer


# ============================================================
# LAYER TYPES
# ============================================================

Two rendering modes exist:

1. Anchor Mode (canonical)
2. XY Mode (compatibility)

Anchor mode is always preferred.


# ============================================================
# ANCHOR MODE
# ============================================================

Final center is calculated as:

finalCenter =
    anchor_position
  + slot_offset
  + view_delta
  + rig_delta

AnchorPoint exists in canvas coordinate space.


# ============================================================
# AUTOCENTER SPECIFICATION
# ============================================================

Previous behaviour:

Image center (width/2, height/2) used as origin.

Problem:

Full canvas PNG or margin space shifts the center.

Solution:

Use centroid of non-transparent pixels.


# ============================================================
# AUTOCENTER ALGORITHM
# ============================================================

1. Decode bitmap
2. Extract pixels where Alpha > 16
3. Compute average (x,y)
4. Use result as part center

Fallback rule:

If count == 0

Use image center.


# ============================================================
# IMPLEMENTATION LOCATION
# ============================================================

Inside BitmapComposer:

computeAlphaCentroid(Bitmap bmp)

Before drawing:

m.postTranslate(-centerX, -centerY)


# ============================================================
# RENDERING FLOW
# ============================================================

for each layer:

    decode bitmap
    compute centroid
    build matrix:

        translate(-centroid)
        scale
        rotate
        translate(finalCenter)

    drawBitmap


# ============================================================
# USER BURDEN POLICY
# ============================================================

✔ Perfect trimming is not required  
✔ Full canvas PNG is allowed  
✔ Rough cropping is acceptable  
✔ Anchor design stabilizes placement  

User requirement:

"Part roughly centered"


# ============================================================
# SUPPORTED CREATION PATHS
# ============================================================

Four supported asset pipelines:

1. AI generation
    Edge auto segmentation
    Runtime AutoCenter correction

2. Asset provided
    Pre-cut assets

3. Vtuber upload
    Original art preserved
    Runtime correction applied

4. Local segmentation
    User editable
    AutoCenter compensates


# ============================================================
# SCALE MODEL
# ============================================================

Database stores high resolution originals.

High quality = high resolution assets

High quality ≠ full canvas PNG.

Scaling is applied at rendering time.


# ============================================================
# PERFORMANCE POLICY
# ============================================================

• Alpha scan uses single pass  
• 1125x1371 resolution acceptable  
• Future centroid cache possible  
• Recompute only during recomposition


# ============================================================
# FUTURE EXTENSIONS
# ============================================================

Phase 2

Bounding box crop

Phase 3

Semantic segmentation

Phase 4

Rig / Bone support


# ============================================================
# CURRENT CANONICAL STATUS
# ============================================================

✔ Anchor centered compositing  
✔ ViewDelta supported  
✔ RigDelta supported  
✔ AutoCenter implemented  
✔ Strict trimming not required


# ============================================================
# END OF SPECIFICATION
# ============================================================

