# ============================================================
# PERSONA OS PRIORITY1 OLD CANONICAL RETIRE CANDIDATES
# ============================================================

status: canonical
layer: meta
domain: model-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines old canonical files that can be treated
as retire candidates after canonical meaning
has been preserved in the new domain structure.

# ============================================================
# 1. RETIRE CANDIDATES - 080.KNOWLEDGE
# ============================================================

| old_file | status | canonical_successor |
|---|---|---|
| 030.model/010.canonical/080.knowledge/0300800002_memory.md | retire_candidate | 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md |
| 030.model/010.canonical/080.knowledge/0300800008_persona_memory.md | retire_candidate | 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md |
| 030.model/010.canonical/080.knowledge/0300800015_memory_retrieval.md | retire_candidate | 030.model/040.memory/0300400003_PERSONA_MEMORY_RETRIEVAL_MODEL.md |
| 030.model/010.canonical/080.knowledge/0300800016_memory_decay.md | retire_candidate | 030.model/040.memory/0300400004_PERSONA_MEMORY_DECAY_MODEL.md |
| 030.model/010.canonical/080.knowledge/0300800003_experience.md | retire_candidate | 030.model/040.memory/0300400002_PERSONA_MEMORY_MODEL.md |
| 030.model/010.canonical/080.knowledge/0300800012_persona_experience.md | retire_candidate | 030.model/040.memory/0300400005_PERSONA_EXPERIENCE_MODEL.md |
| 030.model/010.canonical/080.knowledge/0300800010_persona_snapshot.md | retire_candidate | 030.model/090.snapshot/0300900002_PERSONA_SNAPSHOT_MODEL.md |
| 030.model/010.canonical/080.knowledge/0300800013_persona_growth.md | retire_candidate | 030.model/050.growth/0300500002_PERSONA_GROWTH_MODEL.md |
| 030.model/010.canonical/080.knowledge/0300800009_persona_event.md | retire_candidate_after_state_review | 030.model/030.state/0300300003_PERSONA_EVENT_MODEL.md |
| 030.model/010.canonical/080.knowledge/0300800011_persona_history.md | retire_candidate_after_state_review | 030.model/030.state/0300300004_PERSONA_HISTORY_MODEL.md |

# ============================================================
# 2. RETIRE CANDIDATES - 110.SECURITY
# ============================================================

| old_file | status | canonical_successor |
|---|---|---|
| 030.model/010.canonical/110.security/0301100001_security_identity.md | retire_candidate | 030.model/100.security/0301500003_PERSONA_SECURITY_IDENTITY_MODEL.md |
| 030.model/010.canonical/110.security/0301100002_access_policy.md | retire_candidate | 030.model/100.security/0301500004_PERSONA_ACCESS_POLICY_MODEL.md |
| 030.model/010.canonical/110.security/0301100003_credential.md | retire_candidate | 030.model/100.security/0301500005_PERSONA_CREDENTIAL_MODEL.md |
| 030.model/010.canonical/110.security/0301100004_persona_guardrail.md | retire_candidate | 030.model/100.security/0301500006_PERSONA_GUARDRAIL_MODEL.md |
| 030.model/010.canonical/110.security/0301100005_behavior_constraint.md | retire_candidate | 030.model/100.security/0301500007_PERSONA_BEHAVIOR_CONSTRAINT_MODEL.md |

# ============================================================
# 3. RETIRE CANDIDATES - 130.INTEGRATION
# ============================================================

| old_file | status | canonical_successor |
|---|---|---|
| 030.model/010.canonical/130.integration/0301300001_persona_event_outbox.md | retire_candidate | 030.model/170.operations-support/0301700003_PERSONA_EVENT_OUTBOX_MODEL.md |
| 030.model/010.canonical/130.integration/0301300002_persona_sync_event_contract.md | retire_candidate | 030.model/140.integration/0301400003_PERSONA_SYNC_EVENT_CONTRACT_MODEL.md |
| 030.model/010.canonical/130.integration/0301300003_persona_growth_request_inbox.md | retire_candidate | 030.model/140.integration/0301400004_PERSONA_GROWTH_REQUEST_INBOX_MODEL.md |
| 030.model/010.canonical/130.integration/0301300004_persona_growth_result_contract.md | retire_candidate | 030.model/140.integration/0301400005_PERSONA_GROWTH_RESULT_CONTRACT_MODEL.md |

# ============================================================
# 4. RETIRE CANDIDATES - 140.VISUAL
# ============================================================

| old_file | status | canonical_successor |
|---|---|---|
| 030.model/010.canonical/140.visual/0301400001_visual_avatar.md | retire_candidate | 030.model/070.visual/0300700003_PERSONA_VISUAL_AVATAR_MODEL.md |
| 030.model/010.canonical/140.visual/0301400002_visual_asset.md | retire_candidate | 030.model/070.visual/0300700004_PERSONA_VISUAL_ASSET_MODEL.md |
| 030.model/010.canonical/140.visual/0301400003_animation_profile.md | retire_candidate | 030.model/070.visual/0300700005_PERSONA_ANIMATION_PROFILE_MODEL.md |
| 030.model/010.canonical/140.visual/0301400004_visual_state.md | retire_candidate | 030.model/070.visual/0300700006_PERSONA_VISUAL_STATE_MODEL.md |
| 030.model/010.canonical/140.visual/0301400005_visual_expression.md | retire_candidate | 030.model/070.visual/0300700007_PERSONA_VISUAL_EXPRESSION_MODEL.md |

# ============================================================
# 5. RETIRE RULE
# ============================================================

retire_candidate:
old file meaning is preserved by a canonical successor
and can be retired from the old canonical tree after review

retire_candidate_after_state_review:
canonical successor exists, but state-side review should be confirmed first

# ============================================================
# 6. NEXT STEP
# ============================================================

Next work:
1. review duplicate/legacy files under 030.model root and 020.catalog
2. decide whether to physically retire old files now or later
3. regenerate canonical full after retirement or legacy relocation
