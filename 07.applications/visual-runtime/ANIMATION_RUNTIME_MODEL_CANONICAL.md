# ============================================================
# ANIMATION RUNTIME MODEL
# ============================================================

status: canonical
system: Civilization
component: animation-runtime

owner: Boss
prepared_by: Zero


PURPOSE

Define the animation runtime model used by visual-runtime.

The animation runtime extends static layer composition
into time-based rendering.


ROLE

Animation runtime controls

frame progression
expression resolution
parametric state update
rig application
frame rendering


MAIN FLOW

Animation Request
↓
Frame Loop
↓
Expression Resolve
↓
Parametric State Update
↓
Rig Solve
↓
Layer Transform Apply
↓
Frame Render
↓
Output Frame


CORE COMPONENTS

FrameLoop
ExpressionResolver
ParametricController
RigSolver
FrameRenderEngine
RigFrameRenderEngine
AudioAmplitudeProvider
LayersJsonProvider


FRAME LOOP

FrameLoop controls time progression.

Responsibilities

tick progression
frame timing
loop control
playback state


EXPRESSION RESOLVER

ExpressionResolver selects visual state
for the current moment.

Examples

idle
blink
talk
reaction
emotion expression


PARAMETRIC STATE

Parametric state represents runtime values
used for animation and rigging.

Examples

head angle
eye openness
mouth openness
emotion intensity
body sway


RIG SOLVER

RigSolver transforms parametric state
into layer transforms.

Output

translation
scale
rotation
alpha adjustment


LAYER TRANSFORM

Animation runtime applies transforms
to each layer before final rendering.


FRAME RENDER ENGINE

FrameRenderEngine renders per-frame output
using the standard compose pipeline.

Responsibilities

frame composition
layer application
bitmap output


RIG FRAME RENDER ENGINE

RigFrameRenderEngine is the animation path
that includes rig solving before rendering.


AUDIO REACTION

AudioAmplitudeProvider may influence animation.

Examples

mouth movement
voice sync
talk animation


ANIMATION TYPES

idle animation
blink animation
talk animation
reaction animation
emotion animation


OUTPUT

single bitmap frame
frame sequence
future animated stream


DESIGN PRINCIPLE

Animation runtime must remain compatible
with the standard visual-runtime layer model.

Static rendering and animated rendering
must share the same asset and layer structure.


APPLICATION USAGE

PocketSecretary
Streaming
Game
Creator tools


SUMMARY

Animation runtime turns visual-runtime
from a static compositor into a
time-based scene animation engine.

