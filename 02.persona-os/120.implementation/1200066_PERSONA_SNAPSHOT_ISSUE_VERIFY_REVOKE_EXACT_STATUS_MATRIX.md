# PERSONA SNAPSHOT ISSUE VERIFY REVOKE EXACT STATUS MATRIX

status: tier-a-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_181922

purpose:
Fixes exact status semantics for snapshot family functions.

snapshot_issue_statuses:
- issue_succeeded
- issue_rejected
- issue_failed

snapshot_verify_statuses:
- verification_valid
- verification_invalid_signature
- verification_revoked
- verification_unknown_key
- verification_malformed
- verification_internal_error

snapshot_revoke_statuses:
- revoke_succeeded
- revoke_rejected
- revoke_failed

revocation_list_statuses:
- list_published
- list_empty
- list_failed

status_rules:
- verification_valid must remain distinct from verification_unknown_key
- verification_revoked must remain distinct from verification_invalid_signature
- issue_rejected must remain distinct from issue_failed
- revoke_rejected must remain distinct from revoke_failed
- list publication must remain distinct from revocation application

terminal_meanings:
- issue_succeeded = immutable release artifact exists
- verification_valid = trust check succeeded
- revoke_succeeded = invalidation state recorded
- list_published = revocation publication surface available

