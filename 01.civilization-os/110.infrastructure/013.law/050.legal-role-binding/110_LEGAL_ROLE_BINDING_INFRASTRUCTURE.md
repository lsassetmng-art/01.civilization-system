# ============================================================
# LEGAL ROLE BINDING
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for legal role bindings.

# 2. INFRASTRUCTURE SCOPE

- role-definition storage
- binding persistence
- status persistence
- legal-role audit sink

# 3. INFRASTRUCTURE RULES

- subject and jurisdiction scope must be durably resolvable
- binding reason and status must persist before downstream handoff
- active/suspended state must remain durable
- infrastructure ambiguity must fail closed

