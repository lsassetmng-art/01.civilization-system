# ============================================================
# SAVE CHECKPOINT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: story

# ============================================================
# DEFINITION
# ============================================================

Saving is allowed only at predefined checkpoint scenes.

# ============================================================
# RULE
# ============================================================

- only scenes with checkpoint=true can be saved
- automatic save on checkpoint arrival
- no manual save allowed

# ============================================================
# SAVE MODEL
# ============================================================

Save includes:

- snapshot_id
- checkpoint_scene_id

# ============================================================
# LOAD
# ============================================================

- resume from last checkpoint

# ============================================================
# PURPOSE
# ============================================================

- ensure story consistency
- prevent branching corruption
- simplify state management

# ============================================================
# FINAL RULE
# ============================================================

Checkpoint-based saving is mandatory.

