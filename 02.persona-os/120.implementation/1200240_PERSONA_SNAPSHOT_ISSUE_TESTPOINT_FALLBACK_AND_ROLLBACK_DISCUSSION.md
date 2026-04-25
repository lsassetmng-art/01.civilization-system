# PERSONA SNAPSHOT ISSUE TESTPOINT FALLBACK AND ROLLBACK DISCUSSION

status: no-code-implementation-entry
system: PersonaOS
layer: implementation
confirmed_at: 20260419_105833

purpose:
Defines the test-point, fallback, and rollback discussion outputs for snapshot-issue.

discussion_testpoints:
- missing_required path
- authority_or_policy_rejected path
- invalid_or_unresolvable_lineage path
- invalid_or_unresolvable_release_subject path
- scope_resolution_rejected path
- signing_support_required_but_unavailable path
- issue_failed operational path
- issue_succeeded standard path
- issue_succeeded with downstream verify-readiness expectation
- issue_succeeded with downstream revoke-readiness expectation

fallback_discussion_rules:
- fallback is discussion-only and must not become hidden issuance semantics
- issue_rejected remains a first-class terminal, not fallback success
- issue_failed remains a first-class terminal, not silent retry success
- signing support dependency behavior must remain explicit when required by policy

rollback_discussion_rules:
- rollback discussion here means release and operational rollback planning only
- it does not authorize DB rollback scripts
- it does not authorize deploy rollback procedures
- it may define which upstream issuance precondition would be revisited if later implementation fails

discussion_outputs_expected:
- canonical test checklist
- canonical terminal expectation table
- canonical fallback notes
- canonical rollback-precondition notes
