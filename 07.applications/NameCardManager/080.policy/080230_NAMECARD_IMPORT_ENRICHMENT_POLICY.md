# ============================================================
# NAMECARD IMPORT ENRICHMENT POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy for first-phase enrichment after import.

rules:
- normalization may be suggested automatically
- normalization must remain traceable
- source raw values should remain reviewable
- no silent semantic overwrite by default
- next action suggestions may be generated from rules

