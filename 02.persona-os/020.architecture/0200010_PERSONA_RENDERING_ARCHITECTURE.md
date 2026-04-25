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
# RENDER AUTHORITY BOUNDARY AND NON-AUTHORITATIVE OUTPUT
# ============================================================

Persona rendering inside PersonaOS shall preserve a strict authority
boundary between canonical visual truth and execution-stage rendering.

Canonical visual truth remains upstream from rendering.
It includes the authoritative visual inputs, canonical visual selectors,
composition meaning, and other canonical visual decisions
owned by PersonaOS.

Rendering architecture consumes those canonical inputs and resolves
execution-stage behavior such as:

- layer composition order
- anchor interpretation
- XY offset application
- autocenter and layout behavior
- rig and expression parameter application
- render-plan realization
- output generation

These execution-stage results are render artifacts,
not canonical visual truth.

Rendered output, intermediate layout state,
runtime adjustment state, runtime fallback behavior,
preview images, and display-ready visual products
must not silently replace canonical visual truth.

A successful render does not imply canonical mutation.
A displayed result does not imply authoritative truth.
A locally corrected render result does not become canonical visual truth
unless a separate canonical adoption path explicitly states so.

# ============================================================
# EXECUTION-STAGE RENDER SEMANTICS
# ============================================================

The rendering layer may resolve anchor points,
autocenter behavior, offset corrections,
layer composition instructions,
and other display-side realization behavior,
but these remain execution-stage semantics
under canonical input authority.

PersonaOS rendering must therefore explicitly distinguish:

- canonical visual input reference
- render plan resolution
- runtime render session state
- rendered output artifact
- diagnostics, performance, and support traces

The rendering layer may emit usable and correct outputs for runtime use,
but those outputs remain non-authoritative by default.

# ============================================================
# PROHIBITED AUTHORITY PROMOTION
# ============================================================

The following interpretations are prohibited:

- rendered output = canonical visual truth
- preview success = canonical mutation
- local fallback rendering = canonical correctness
- display success = committed truth
- runtime correction = authority update
- render-local identifiers = Persona identity authority
- appearance deltas = committed growth truth
- cache or export artifacts = canonical snapshot authority

Rendering behavior may reflect canonical truth,
but it must not silently become canonical truth.

# ============================================================
# FIXED RENDERING STATEMENT
# ============================================================

PersonaOS rendering architecture is an execution architecture
under canonical visual authority.
It may resolve, compose, layout, and emit render artifacts,
but it must not silently convert render-time outputs,
runtime corrections, or display success into canonical truth.
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


# EXACT READY ARCHITECTURE REINFORCEMENT

status_extension: author-reviewed-with-architecture-reinforcement
reinforced_at: 20260417_150617
reinforcement_scope:
- component boundary clarification
- flow boundary clarification
- persistence edge clarification
- failure path clarification

domain: generic

minimum_architecture_requirements:
- define entry component
- define coordination or orchestration component
- define persistence or state boundary
- define outbound interface or integration boundary
- define reject, retry, and terminal failure path where applicable

mandatory_flow_requirements:
- happy path
- reject or block path
- retry or recovery path where applicable
- dead-letter or terminal failure path where applicable

mandatory_boundary_requirements:
- no hidden write path
- no shortcut around validation or policy
- no silent external effect
- no terminal action without observable evidence

architecture_ready_note:
This reinforcement does not replace the authored architectural content above.
It marks the minimum exact-ready architectural items that must be explicit
before implementation contract fixation is considered complete.
