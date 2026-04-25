# ============================================================
# PERSONA VISUAL BACKGROUND RESOLUTION RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: visual-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines runtime execution rules
for background resolution.


# ============================================================
# 2. RESOLUTION PIPELINE
# ============================================================

Step 1:
check explicit runtime override

Step 2:
check surface-linked background request

Step 3:
check scene-level background directive

Step 4:
check persona visual profile default background

Step 5:
check host-approved default background

Step 6:
apply system-safe fallback background


# ============================================================
# 3. FIT MODES
# ============================================================

Canonical fit modes:

cover
contain
center
stretch

A surface profile must define which fit modes are allowed.


# ============================================================
# 4. FAILURE HANDLING
# ============================================================

If a candidate background fails:

mark candidate rejected
emit background fallback event
advance to next candidate
apply first valid candidate

If no candidate is valid:
apply system-safe fallback background


# ============================================================
# 5. INTERACTION WITH PERSONA RENDERING
# ============================================================

Background resolution must not block persona rendering
unless the surface profile explicitly requires
background presence before render completion.


# ============================================================
# 6. POCKETSECRETARY RULE
# ============================================================

PocketSecretary-facing surfaces should prefer
fast static-safe background resolution first,
and must not delay persona display indefinitely
for non-critical background loading.

# EXACT READY RUNTIME REINFORCEMENT

status_extension: author-reviewed-with-runtime-reinforcement
reinforced_at: 20260417_152041
domain: visual

minimum_runtime_requirements:
- define runtime entry condition
- define runtime execution boundary
- define runtime state update points
- define terminal conditions
- define retry or recovery handling where applicable

mandatory_runtime_controls:
- no hidden state mutation
- no silent failure path
- no unaudited terminal action
- explicit timeout or expiry handling where applicable

minimum_runtime_acceptance_targets:
- normal execution path
- blocked or reject path
- timeout or terminal path
- audit evidence path
