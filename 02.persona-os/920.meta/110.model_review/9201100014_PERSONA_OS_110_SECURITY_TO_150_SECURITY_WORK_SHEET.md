# ============================================================
# PERSONA OS 110.SECURITY TO 150.SECURITY WORK SHEET
# ============================================================

status: canonical
layer: meta
domain: model-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the focused work sheet for absorbing
030.model/010.canonical/110.security into 030.model/100.security.

# ============================================================
# 1. CURRENT CANONICAL SECURITY FILES
# ============================================================

/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/100.security/0301500001_PERSONA_SECURITY_MODEL_OVERVIEW.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/100.security/030150000_PERSONA_SECURITY_MODEL_INDEX.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/100.security/030150001_PERSONA_SECURITY_MODEL_OVERVIEW.md

# ============================================================
# 2. OLD 110.SECURITY FILES
# ============================================================

/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/110.security/0301100001_security_identity.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/110.security/0301100002_access_policy.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/110.security/0301100003_credential.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/110.security/0301100004_persona_guardrail.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/110.security/0301100005_behavior_constraint.md

# ============================================================
# 3. FIRST-PASS TARGET MAPPING
# ============================================================

| old_file | suggested_action | suggested_target | reason |
|---|---|---|---|
| 030.model/010.canonical/110.security/0301100001_security_identity.md | merge_or_split | 030.model/100.security plus possible 020.identity boundary review | security-identity crosses security and identity |
| 030.model/010.canonical/110.security/0301100002_access_policy.md | merge_or_absorb | 030.model/100.security | clear security family match |
| 030.model/010.canonical/110.security/0301100003_credential.md | merge_or_absorb | 030.model/100.security | clear security family match |
| 030.model/010.canonical/110.security/0301100004_persona_guardrail.md | merge_or_absorb | 030.model/100.security | clear security family match |
| 030.model/010.canonical/110.security/0301100005_behavior_constraint.md | merge_or_absorb | 030.model/100.security | clear security family match |

# ============================================================
# 4. REVIEW TARGETS
# ============================================================

Open and compare these first:
- 030.model/100.security/0301500002_PERSONA_SECURITY_STATE_MODEL.md
- 030.model/010.canonical/110.security/0301100001_security_identity.md
- 030.model/010.canonical/110.security/0301100002_access_policy.md
- 030.model/010.canonical/110.security/0301100003_credential.md
- 030.model/010.canonical/110.security/0301100004_persona_guardrail.md
- 030.model/010.canonical/110.security/0301100005_behavior_constraint.md

# ============================================================
# 5. DECISION RULE
# ============================================================

- merge_or_absorb: old meaning is already covered or should live under 100.security
- merge_or_split: security meaning is valid but may need identity-bound separation
- if target domain lacks the concept, add new canonical submodel
