# ============================================================
# POCKET SECRETARY PERSONA RENDER BOUNDARY SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines security constraints for consuming shared PersonaOS VisualRuntime results.

rules:
- render output must be treated as presentation output only
- presentation output must not alter permission or authority state
- failed or fallback render must not be masked as normal success if distinction matters
