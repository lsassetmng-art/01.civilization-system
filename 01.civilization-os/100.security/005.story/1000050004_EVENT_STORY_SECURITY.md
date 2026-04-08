# ============================================================
# EVENT STORY SECURITY
# ============================================================

status: canonical
layer: security
domain: story
subdomain: event-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines security rules for event-linked stories.

scope:
Covers live event-story security,
public-safe campaign summary,
restricted internal event narratives,
and replay access control.

security_focus:
- separation of public campaign summary from internal event-response detail
- replay labeling and access control
- prevention of live/current inference from historical traces

actor_matrix:
- public_consumer -> public-safe event-story summary only
- internal_consumer -> internal event-story detail where authorized
- restricted_operator -> restricted response narrative where authorized
- auditor -> historical replay and audit trace where authorized

decision_table:
- public_consumer + live event summary -> allow where safe
- public_consumer + restricted event narrative -> block
- internal_consumer + internal detail -> allow where authorized
- auditor + historical replay -> allow via history/audit authorization only

validation_rules:
- event_ref or cluster_ref is required.
- replay access requires labeled replay/history path.
- public event-story output must not expose internal response steps, controls, or sensitive operational causes.

failure_codes:
- EVENT_STORY_SEC_REF_MISSING
- EVENT_STORY_SEC_PUBLIC_DETAIL_DENIED
- EVENT_STORY_SEC_REPLAY_LABEL_REQUIRED
- EVENT_STORY_SEC_REPLAY_ACCESS_DENIED

example_scenarios:
- A completed public campaign can be replayed historically, but only for authorized viewers if the trace contains restricted internal detail.
