# PERSONA SNAPSHOT DEVELOPMENT GUIDE

status: implementation-ready-followup

snapshot_rules:
- issued from a known draft version
- content hash fixed at issuance
- immutable after issuance
- lineage to source draft and publish request must remain queryable

required_tests:
- same draft content produces deterministic hash
- changed draft content produces changed snapshot hash
- issued snapshot cannot be mutated in place
