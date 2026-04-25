# ============================================================
# BASIC RPG INTEGRATION
# ============================================================

status: draft
layer: integration
system: applications
category: game-app
application: BasicRPG
owner: Boss
prepared_by: Zero

integration_points:
- Persona-side identity/session linkage
- Supabase database and storage
- purchase channel receipt validation
- notification delivery
- CX22073 knowledge adapter
- optional ERP export for revenue/support summaries

cx22073_usage:
- lore encyclopedia retrieval
- glossary and terminology support
- quest hint knowledge
- balance note archive
- support FAQ knowledge surface
