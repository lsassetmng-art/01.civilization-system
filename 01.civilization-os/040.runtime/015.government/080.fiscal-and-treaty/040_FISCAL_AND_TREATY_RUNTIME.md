# ============================================================
# FISCAL AND TREATY
# RUNTIME
# ============================================================

status: draft
layer: runtime
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines runtime control for fiscal plans and treaties.

# 2. RUNTIME STATE

- active fiscal-plan state
- fiscal-commitment validation state
- treaty/treaty-party resolution state
- ratification/publication state

# 3. EXECUTION RULES

- fiscal commitments must resolve before fiscal publication
- treaty parties must be explicit before signing or ratification publication
- treaty mutation must preserve treaty identity and party scope
- hidden treaty mutation is prohibited

# 4. FAILURE HANDLING

- invalid fiscal scope -> reject
- missing treaty party state -> reject
- hidden treaty mutation -> fail closed

