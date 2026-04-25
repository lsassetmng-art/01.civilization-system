# ============================================================
# AIWORKER OS SECURITY BOUNDARY
# ============================================================

status: canonical
system: AiworkerOS
layer: 100.security
owner: Boss
prepared_by: Zero

security_principles:
- separate raw truth from worker-readable surfaces
- separate read planes from write planes
- separate commercial truth from worker truth
- separate style behavior from authority
- separate rank from destructive permission

hard_controls:
- AI workers do not directly read aiworker raw tables
- AI workers do not directly read business raw tables
- AI workers use cx22073jw safe families only
- privileged and restricted contexts require explicit gating
- all controlled writes must be auditable

final_rule:
Security in AiworkerOS is architecture,
not a late-stage patch.
