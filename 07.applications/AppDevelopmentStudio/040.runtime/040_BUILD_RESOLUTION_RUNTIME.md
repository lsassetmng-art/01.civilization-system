# ============================================================
# BUILD RESOLUTION RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines how build behavior is resolved.

build_modes:
- disabled
- enabled
- if_available
- external_only

runtime_steps:
1. inspect build policy
2. inspect environment capability
3. decide executable build mode
