# PERSONA PUBLISH APPLY FINAL BOUNDARY AUTHORITY AND LINEAGE SUMMARY

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_211155

purpose:
Condenses boundary ownership, authority model, and lineage rules for publish_apply.

boundary_ownership_summary:
- publish_apply owns release application only
- publish_apply does not own governance decision
- publish_apply does not own approval request creation
- publish_apply does not own released listing publication
- publish_apply is not generic mutable truth owner by label alone

authority_summary:
- upstream approval or publish decision authority must already have been exercised
- publish_apply requires release application authority
- publish_apply must not invent approval state
- publish_apply must not bypass required governance paths

lineage_rules:
- release application must consume approved input only
- release application must preserve candidate-to-release lineage
- release lineage must remain distinct from work-state lineage
- release application result must be attributable to approval_source_reference and release_subject_reference
- lineage_reference is mandatory where policy requires traceability

hard_rules:
- pending input is forbidden
- rejected input is forbidden
- returned_for_revision input is forbidden
- unresolved lineage is forbidden where lineage is required

