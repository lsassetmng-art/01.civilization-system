# ============================================================
# VISUAL RUNTIME ANDROID RENDER SURFACE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: visual-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the Android-side
implementation guidance for render surfaces.


# ============================================================
# 2. IMPLEMENTATION CONSTRAINTS
# ============================================================

Android implementation must preserve:

canonical surface contract
deterministic lifecycle
explicit disposal
event observability


# ============================================================
# 3. RECOMMENDED STRUCTURE
# ============================================================

Host Screen
  -> Host Adapter
    -> Visual Runtime Session
      -> Android Render Surface Container

Recommended responsibilities:

Host Screen:
screen-level UX and lifecycle

Host Adapter:
runtime interface translation

Runtime Session:
canonical visual execution

Render Surface Container:
platform-specific drawing attachment point


# ============================================================
# 4. FAILURE GUIDANCE
# ============================================================

If background loading is slow:
show persona-first output

If container detaches unexpectedly:
dispose session and re-create only through host lifecycle

If terminal runtime error occurs:
host may replace container with error UI,
but must preserve runtime error event visibility
