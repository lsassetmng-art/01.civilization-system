# ============================================================
# POCKET SECRETARY CONSULT MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents bounded consult sessions, consult prompts,
and related local interaction history.

fields:
- consult_id
- user_id
- consult_type
- title
- summary
- state_code
- last_interaction_at
- created_at
- updated_at

rules:
- consult state is local interaction state unless explicitly linked outward
- consult history must not be treated as authority-bearing approval
- consult summaries and underlying action approval remain distinct
