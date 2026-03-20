# ============================================================
# MULTI WORLD ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Multi-world architecture supports multiple world contexts
without collapsing actor identity or state integrity.

purpose:
- isolate world contexts
- preserve actor continuity rules
- support parallel simulation boundaries

rules:
- cross-world state mutation is forbidden
- world transitions require explicit routing logic
- history and identity must remain world-aware

constitution_alignment:
- explicit boundary enforcement
- no hidden cross-context mutation

final_rule:
Each world context must remain isolated unless an explicit,
audited bridge rule exists.
