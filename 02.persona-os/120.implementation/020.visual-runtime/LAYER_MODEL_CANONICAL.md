# ============================================================
# LAYER MODEL
# ============================================================

status: canonical
system: Civilization
component: layer-model


PURPOSE

Define layer representation.


LAYER TYPES

BACKGROUND
PERSONA_BASE
PERSONA_PART
CLOTHING
EFFECT
OVERLAY


ATTRIBUTES

layer_id
layer_type
bucket
path
z
x
y
scale
rotation
alpha
blend


RULE

All visual elements must be represented as layers.

Background is handled as layer with lowest z.

