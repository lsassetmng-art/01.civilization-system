# ============================================================
# LICENSE AND BOUNDARY
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines infrastructure concerns for license and boundary control.

# 2. INFRASTRUCTURE SCOPE

- license storage
- grant/rule registry
- boundary-decision persistence
- boundary audit sink

# 3. INFRASTRUCTURE RULES

- valid license state must be durably resolvable
- grant/rule lookup must preserve provenance
- boundary decision must persist before publication
- infrastructure ambiguity must fail closed

