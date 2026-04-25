# PERSONA EXTERNAL RELEASE RUNTIME

status: implementation-ready-followup

release_runtime_boundary:
- no release without explicit scope
- no release from mutable draft
- no release without allow decision

runtime_sequence:
- resolve immutable release input
- verify rights and target
- dispatch payload
- persist result
- retry or dead-letter on downstream failure
