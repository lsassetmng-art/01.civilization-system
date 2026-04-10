# ============================================================
# NAMECARD IMPORT REVIEW POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy for import review and migration safety.

rules:
- import should prefer preview before commit
- destructive merge is not default
- duplicate review must remain user-reviewable
- ambiguous company grouping must remain reviewable
- migration should preserve source traceability

