# ============================================================
# NATION BUILDER RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: government.nation_builder
document_id: 0401510001

owner: Boss
prepared_by: Zero

runtime_scope:
- nation template editing
- power structure editing
- zoning and market tier editing
- validation
- publishability transition

runtime_states:
- DRAFT
- EDITING
- VALIDATED
- PUBLISHABLE
- PUBLISHED
- REJECTED

runtime_rules:
- invalid template cannot enter PUBLISHABLE
- publish requires validation pass
- all structural edits must remain traceable
