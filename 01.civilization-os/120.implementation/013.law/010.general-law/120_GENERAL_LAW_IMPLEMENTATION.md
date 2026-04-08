# ============================================================
# GENERAL LAW
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for general law structures.

# 2. IMPLEMENTATION TARGETS

- law-code handling
- article/scope handling
- revision-state handling
- publication control
- audit publication

# 3. DATA / STATE

Canonical structures:
- law_code
- law_article
- law_scope
- law_status

# 4. EXECUTION

- resolve explicit law identity and jurisdiction scope
- bind article set before publication
- require revision state before legal mutation publication
- reject hidden law mutation path

# 5. VALIDATION

- reject missing jurisdiction scope
- reject invalid article binding
- reject hidden law mutation without revision state

# 6. OBSERVABILITY

- law audit
- article/scope visibility
- revision-state visibility

