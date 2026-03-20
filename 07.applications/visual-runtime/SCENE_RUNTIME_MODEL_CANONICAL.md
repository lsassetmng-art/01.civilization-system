# ============================================================
# SCENE RUNTIME MODEL
# ============================================================

status: canonical
system: Civilization
component: scene-runtime


PURPOSE

Define scene structure used by visual-runtime.


SCENE STRUCTURE

scene
 ├ background
 ├ persona
 ├ objects
 ├ effects
 └ overlay


RENDER ORDER

BACKGROUND
PERSONA_BASE
PERSONA_PART
CLOTHING
EFFECT
OVERLAY


SCENE OUTPUT

PNG
bitmap frame
future animation frames

