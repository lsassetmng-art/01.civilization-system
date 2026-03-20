# ============================================================
# VISUAL RUNTIME ARCHITECTURE
# ============================================================

status: canonical
system: Civilization
component: visual-runtime

owner: Boss
prepared_by: Zero


PURPOSE

Define the architecture of the shared
visual rendering runtime.


ROLE

visual-runtime is the shared rendering engine for

PocketSecretary
Streaming
Game
Creator


RUNTIME PIPELINE

Scene Request
↓
Manifest Parse
↓
Layer Resolve
↓
Asset Fetch
↓
Bitmap Decode
↓
Layer Compose
↓
Frame Render
↓
Output


MAIN MODULES

api
compose
manifest
render
anim
rig
source
cache
model
error
util


PRINCIPLE

Runtime must remain independent from applications.

Applications host the runtime.
Runtime performs rendering.

