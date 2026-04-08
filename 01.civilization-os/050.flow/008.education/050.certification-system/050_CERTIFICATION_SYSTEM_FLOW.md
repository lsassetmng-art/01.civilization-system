# ============================================================
# CERTIFICATION SYSTEM
# FLOW
# ============================================================

status: draft
layer: flow
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for certification system handling.

# 2. TRIGGER

- certification definition update
- requirement update
- certification award request
- revocation/state update

# 3. MAIN FLOW

1. create or resolve certification_definition
2. bind certification_requirement set
3. validate recipient and requirement satisfaction
4. create or update certification_award
5. persist certification_status
6. emit audit trace

# 4. FAILURE FLOW

- missing certification scope -> reject
- invalid requirement binding -> reject
- hidden revocation without status change -> fail closed

# 5. OUTPUT

- certification state
- award/status state
- audit record

