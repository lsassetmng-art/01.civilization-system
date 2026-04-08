# ============================================================
# POCKET SECRETARY SECRETARY WORDING RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for secretary-specific wording resolution.

runtime sequence:
1. determine secretary_id
2. determine message_type
3. resolve template_key
4. inject runtime variables
5. render final wording

rules:
- missing secretary-specific entry falls back to standard secretary wording
- wording resolution must not change authority meaning
- company_ai wording remains reserved until future activation
