# ============================================================
# STREAMER AGENCY ANNOUNCEMENT BINDING
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 012.integration

# 1. PURPOSE

Defines binding between streamer agency state and announcement surfaces.

# 2. STORAGE

- announcement_binding_id
- source_type
- source_ref
- announcement_surface_code
- visibility_rule
- active_flag

# 3. EXECUTION

1. resolve source event/state
2. resolve eligible announcement surface
3. apply visibility and moderation rules
4. publish or suppress

# 4. FAILURE HANDLING

Fail closed on unresolved source, forbidden surface, or moderation uncertainty.
