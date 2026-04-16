# ============================================================
# GAME OS RUNTIME OVERVIEW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: runtime
document_type: overview
owner: Boss
prepared_by: Zero

summary:
The runtime layer covers Persona-enabled gameplay runtime and high-control gambling runtime.

official_runtime_families:
- visual novel runtime
- dating simulation runtime
- rpg runtime
- puzzle runtime
- strategy runtime
- action game runtime
- adventure game runtime
- 2d fighting runtime
- gambling runtime

notes:
- action game runtime includes side-scrolling action runtime and survival action runtime
- survival action is not limited to horror
- gambling runtime is separate from ordinary genre runtime families

multi_device_runtime_premise:
- GameOS runtime must support iPhone
- GameOS runtime must support Android
- GameOS runtime must support PC
- GameOS runtime must support tablet devices

runtime_design_implications:
- input handling must not assume one device class only
- layout assumptions must not assume phone-only screens
- runtime delivery must tolerate mobile and desktop interaction patterns

principles:
- runtime behavior must follow architecture boundaries
- gambling runtime must remain separated from ordinary runtime
- runtime must not own canonical Persona truth or wallet truth
