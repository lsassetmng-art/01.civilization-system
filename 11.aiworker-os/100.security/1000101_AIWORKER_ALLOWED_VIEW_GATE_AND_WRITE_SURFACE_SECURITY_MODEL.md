# ============================================================
# AIWORKER ALLOWED VIEW GATE AND WRITE SURFACE SECURITY MODEL
# ============================================================

status: exact-security
system: AiworkerOS
layer: 100.security
owner: Boss
prepared_by: Zero

purpose:
Freeze the security rules for read family gating and write-surface control.

security_principles:
- least read
- no raw worker truth exposure to AI workers
- no raw business truth exposure to AI workers
- explicit gate before privileged read family
- explicit gate before official apply
- audit requirement precedes destructive or authority-like mutation
- style never changes authority

gate_families:
- GATE_STANDARD
- GATE_RESTRICTED
- GATE_PRIVILEGED
- GATE_APPROVAL_REQUIRED
- GATE_AUDIT_REQUIRED
- GATE_REPAIR
- GATE_REBUILD

write_surface_authority:
- command row: always non-canonical
- draft row: always non-canonical
- staging row: always non-canonical
- official intake: mutation request only
- controlled function: only canonical mutation executor

hard_rule:
No worker rank, role, or style may independently unlock forbidden write surfaces.
