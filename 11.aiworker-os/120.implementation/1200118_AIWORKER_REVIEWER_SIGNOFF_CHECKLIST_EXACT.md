# ============================================================
# AIWORKER REVIEWER SIGNOFF CHECKLIST EXACT
# ============================================================

status: reviewer-checklist
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the reviewer signoff checklist for implementation-ready status.

signoff_checklist:
- boundary check
  - worker truth remains in aiworker
  - BusinessOS boundary remains commercial-side only
  - cx22073jw remains external implementation dependency

- mutation path check
  - official intake required
  - controlled functions only
  - gate/approval/audit logic preserved

- payload check
  - lifecycle-distinct payload contracts preserved
  - replay lineage preserved
  - result payload nonleak preserved

- grant/RLS check
  - AI worker runtime raw-table access absent
  - execution roles separated
  - restricted/privileged reviewer separation preserved

- replay/recovery check
  - duplicate remutation prevented
  - redelivery-only path exists
  - runbook direction documented

- documentation check
  - integrated rebuild regenerated
  - unresolved gaps declared
  - contradiction check passed

reviewers:
- Boss
- Zero
- 佐藤(DB担当) for SQL-affecting execution material

hard_rules:
- signoff is checklist-based, not assumed
- DB-apply readiness is narrower than design-freeze readiness
