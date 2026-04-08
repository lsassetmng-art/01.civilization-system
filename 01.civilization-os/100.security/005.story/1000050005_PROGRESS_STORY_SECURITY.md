# ============================================================
# PROGRESS STORY SECURITY
# ============================================================

status: canonical
layer: security
domain: story
subdomain: progress-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines security rules for progress-focused stories.

scope:
Covers current milestone access,
bounded branch access,
completion-state replay,
and protection of internal milestone logic.

security_focus:
- current versus historical milestone separation
- bounded milestone visibility
- replay-only chain protection
- prevention of internal milestone-chain leakage to public consumers

actor_matrix:
- self_consumer -> own safe current progress where allowed
- internal_consumer -> internal milestone detail where authorized
- restricted_operator -> restricted milestone logic where authorized
- auditor -> historical chain and traces where authorized

decision_table:
- self_consumer + current summary -> allow where applicable
- public_consumer + internal milestone chain -> block
- internal_consumer + current milestone detail -> allow where authorized
- auditor + replay chain -> allow via audit/history authorization only

validation_rules:
- milestone chain ref is required.
- replay/historical chain must be labeled and separately authorized.
- historical chains must not be disclosed as current live progress.
- bounded branch visibility must be enforced for branch-specific milestones.

failure_codes:
- PROGRESS_STORY_SEC_CHAIN_REF_MISSING
- PROGRESS_STORY_SEC_INTERNAL_CHAIN_DENIED
- PROGRESS_STORY_SEC_BRANCH_VISIBILITY_DENIED
- PROGRESS_STORY_SEC_REPLAY_ACCESS_DENIED
- PROGRESS_STORY_SEC_LIVE_HISTORY_CONFUSION

example_scenarios:
- A participant may see the next milestone, but not the full internal branch tree.
