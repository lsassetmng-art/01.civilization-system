# ============================================================
# BUSINESS OS DEPENDENCY RULE
# ============================================================

status: canonical
system_id: 03
layer: architecture

owner: Boss
prepared_by: Zero


# RULE

Applications may depend on:

business-os
persona-os

Applications must not implicitly
depend on ERP.

