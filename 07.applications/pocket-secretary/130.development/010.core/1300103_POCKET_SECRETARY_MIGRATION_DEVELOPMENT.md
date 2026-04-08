# ============================================================
# POCKET SECRETARY MIGRATION DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines migration guidance from archived or fragmented design materials
to the canonical PocketSecretary structure.

migration rules:
- canonical files in active layers are the current source of truth
- archived files remain reference material only
- when archived content conflicts with canonical files,
  canonical files take precedence
- migration should preserve useful implementation intent
  without reviving structural ambiguity

practical guidance:
- review old implementation ideas against current constitution
- re-adopt only content that fits current layer boundaries
- avoid copying archived ambiguity into canonical layers
