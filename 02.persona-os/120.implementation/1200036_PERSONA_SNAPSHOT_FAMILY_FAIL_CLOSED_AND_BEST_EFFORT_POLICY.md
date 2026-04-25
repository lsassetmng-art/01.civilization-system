# PERSONA SNAPSHOT FAMILY FAIL CLOSED AND BEST EFFORT POLICY

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_121843

purpose:
Fixes fail-closed versus best-effort policy for snapshot family behavior.

snapshot_issue_fail_closed:
- malformed release input
- missing release lineage
- signing or artifact generation failure when release policy requires signed output
- required storage persistence failure

snapshot_issue_best_effort_candidate:
- optional secondary notifications
- optional secondary mirrors
- optional non-authoritative publication refresh

snapshot_revoke_fail_closed:
- missing snapshot reference
- authorization failure
- revocation persistence failure

snapshot_verify_fail_closed:
- malformed verification request
- internal verification engine failure
- inaccessible required verification material under mandatory verification path

revocation_list_best_effort_candidate:
- optional publication cache refresh
- optional replication to non-authoritative mirror

policy_note:
A later policy may split snapshot-issue into stricter release classes, but this document
freezes the principle that authoritative artifact issuance is not best-effort.

