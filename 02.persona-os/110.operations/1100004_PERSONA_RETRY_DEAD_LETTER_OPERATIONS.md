# PERSONA RETRY DEAD LETTER OPERATIONS

status: implementation-ready-followup

operator_steps:
1. inspect failure family
2. confirm retry-safe semantics
3. confirm target recovery or defect fix
4. approve replay or terminal closure
5. preserve evidence and operator identity

forbidden:
- replay without cause classification
- dead-letter deletion without audit reason
