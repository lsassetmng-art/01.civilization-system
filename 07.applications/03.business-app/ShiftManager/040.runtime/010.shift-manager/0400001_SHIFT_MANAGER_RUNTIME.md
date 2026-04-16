# ============================================================
# SHIFT MANAGER RUNTIME
# ============================================================

status: canonical
layer: runtime
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

runtime_states:
schedule_status:
- DRAFT
- PUBLISHED
- SUPERSEDED
- CLOSED

runtime_rules:
1. Only published schedules are share-visible.
2. Draft schedules are editable by authorized creators only.
3. A publication event must invalidate older public views for the same active scope when replaced.
4. Visibility must be reevaluated when share rules change.
5. Mobile clients must fetch the latest published data allowed by scope.
6. ERP export shall use publication-based data, not arbitrary draft data.

realtime_behavior:
- after publication, the new version becomes visible
- after correction publication, clients receive latest publish state
- unauthorized cached visibility must not survive permission revocation
