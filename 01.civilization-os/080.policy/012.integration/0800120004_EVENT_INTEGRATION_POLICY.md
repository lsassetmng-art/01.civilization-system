# ============================================================
# EVENT INTEGRATION POLICY
# ============================================================

status: canonical
layer: policy
domain: integration
subdomain: event-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for event-driven integration contracts.

scope:
Covers live-event handoff,
replay-event handoff,
trace obligations,
and prohibition of unlabeled replay or live/replay confusion.

policy_focus:
- live versus replay separation
- mandatory replay labeling
- mandatory trace preservation
- prohibition of live-state misrepresentation

validation_rules:
- event contract ref is required.
- replay handoff requires replay or historical label.
- event trace is mandatory.
- live and replay modes must remain distinct in disclosure and storage.

failure_codes:
- EVENT_INTEGRATION_POLICY_CONTRACT_REF_MISSING
- EVENT_INTEGRATION_POLICY_REPLAY_LABEL_REQUIRED
- EVENT_INTEGRATION_POLICY_TRACE_REQUIRED
- EVENT_INTEGRATION_POLICY_MODE_CONFUSION_DENIED

example_scenarios:
- A historical replay feed must declare replay status and cannot masquerade as current live event flow.

required_behavior:
- keep live and replay event paths distinct
- require replay labeling
- preserve event trace retention

policy_rules:
- live and replay event paths must not be mixed
- replay outputs must remain labeled
- event traces must remain retained where required

authority_matrix:
- internal consumer -> live event path only where authorized
- auditor -> replay or audit trace where authorized

retention_matrix:
- live event contract trace -> operational retention
- replay event trace -> historical_required
- audit event trace -> audit_required

allowed_denied_matrix:
- labeled replay path -> allowed where authorized
- unlabeled replay output -> denied
- live path masquerading as replay or inverse -> denied
