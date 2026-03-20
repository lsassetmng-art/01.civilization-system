# ============================================================
# DEPENDENCY MODEL
# ============================================================

status: canonical
version: 1.0
compatibility: STRICT
scope: civilization.meta.dependency
component: dependency-model
document_id: CIV-META-024
owner: Boss
prepared_by: Zero
last_updated: 2026-03-10


# DEPENDENCY RULE

Design dependencies must follow
the defined layer order.


# ALLOWED DEPENDENCIES

architecture → constitution  
runtime → architecture  
flow → runtime  
model → architecture  
operations → runtime  
policy → model


# PROHIBITED DEPENDENCIES

Lower layers may not redefine
higher layer rules.
