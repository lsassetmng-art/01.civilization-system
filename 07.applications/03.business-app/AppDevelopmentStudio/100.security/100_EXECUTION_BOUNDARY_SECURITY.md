# ============================================================
# EXECUTION BOUNDARY SECURITY
# ============================================================

status: canonical-draft
layer: security
application: App Development Studio

boundary_scope:
- file target boundaries
- SQL target boundaries
- Git target boundaries
- build target boundaries
- remote execution boundaries

principles:
- unsupported targets should not be executed
- out-of-scope targets should not be silently included
