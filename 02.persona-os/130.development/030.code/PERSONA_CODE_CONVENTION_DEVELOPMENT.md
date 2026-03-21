# ============================================================
# PERSONA CODE CONVENTION
# ============================================================

status: canonical
layer: development

# LANGUAGE

Java
Kotlin
Edge Functions

# RULES

Explicit state transition
No hidden mutation
Event based interaction
Deterministic behavior

# LOGGING

All critical operations must log:

operation_id
persona_id
timestamp
result
