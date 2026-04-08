# ============================================================
# REUSE-FIRST GENERATION RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines how generation prefers reusable parts before generating new ones.

runtime_steps:
1. inspect target need
2. query reusable component catalog
3. filter by environment/language compatibility
4. exclude forbidden or deprecated components
5. choose preferred reusable candidate
6. generate new artifact only if reuse insufficient
