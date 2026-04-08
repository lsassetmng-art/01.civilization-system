# ============================================================
# SHIFT MANAGER POLICY
# ============================================================

status: canonical
layer: policy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

policy_rules:
1. Only authorized roles may create or edit shift drafts.
2. Only authorized roles may publish schedules.
3. Sharing visibility shall be explicitly granted.
4. Visibility shall be revocable.
5. Permission expansion shall be auditable.
6. ERP linkage scope shall follow company policy, not arbitrary user preference.
