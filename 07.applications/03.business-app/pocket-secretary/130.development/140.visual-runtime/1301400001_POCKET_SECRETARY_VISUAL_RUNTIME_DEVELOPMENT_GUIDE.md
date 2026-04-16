# ============================================================
# POCKET SECRETARY VISUAL RUNTIME DEVELOPMENT GUIDE
# ============================================================

status: canonical
layer: development
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. DEVELOPMENT RULE
# ============================================================

Future PocketSecretary development must preserve:

canonical runtime integration
explicit session disposal
surface-based rendering selection
persona-first degraded rendering


# ============================================================
# 2. CHANGE TESTS
# ============================================================

Any host-side change should be checked against:

Does it still use canonical runtime inputs?
Does it still dispose sessions explicitly?
Does it still preserve fallback semantics?
Does it still avoid blank render on recoverable degradation?
