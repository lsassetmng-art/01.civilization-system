# ============================================================
# PERSONA OS 130.INTEGRATION TO 140.INTEGRATION WORK SHEET
# ============================================================

status: canonical
layer: meta
domain: model-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the focused work sheet for absorbing
030.model/010.canonical/130.integration into 030.model/140.integration.

# ============================================================
# 1. CURRENT CANONICAL INTEGRATION FILES
# ============================================================

/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/140.integration/0301400001_PERSONA_INTEGRATION_MODEL_OVERVIEW.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/140.integration/0301400002_PERSONA_INTEGRATION_REQUEST_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/140.integration/030140000_PERSONA_INTEGRATION_MODEL_INDEX.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/140.integration/030140001_PERSONA_INTEGRATION_MODEL_OVERVIEW.md

# ============================================================
# 2. OLD 130.INTEGRATION FILES
# ============================================================

/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/130.integration/0301300001_persona_event_outbox.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/130.integration/0301300002_persona_sync_event_contract.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/130.integration/0301300003_persona_growth_request_inbox.md
/data/data/com.termux/files/home/01.civilization-system/02.persona-os/030.model/010.canonical/130.integration/0301300004_persona_growth_result_contract.md

# ============================================================
# 3. FIRST-PASS TARGET MAPPING
# ============================================================

| old_file | suggested_action | suggested_target | reason |
|---|---|---|---|
| 030.model/010.canonical/130.integration/0301300001_persona_event_outbox.md | merge_or_split | 030.model/140.integration or 030.model/170.operations-support | queue/transport concept may cross integration and ops support |
| 030.model/010.canonical/130.integration/0301300002_persona_sync_event_contract.md | merge_or_absorb | 030.model/140.integration | clear integration contract match |
| 030.model/010.canonical/130.integration/0301300003_persona_growth_request_inbox.md | merge_or_split | 030.model/140.integration or 030.model/050.growth | request inbox crosses integration and growth intake meaning |
| 030.model/010.canonical/130.integration/0301300004_persona_growth_result_contract.md | merge_or_absorb | 030.model/140.integration | clear integration result contract match |

# ============================================================
# 4. REVIEW TARGETS
# ============================================================

Open and compare these first:
- 030.model/140.integration/*
- 030.model/010.canonical/130.integration/0301300001_persona_event_outbox.md
- 030.model/010.canonical/130.integration/0301300002_persona_sync_event_contract.md
- 030.model/010.canonical/130.integration/0301300003_persona_growth_request_inbox.md
- 030.model/010.canonical/130.integration/0301300004_persona_growth_result_contract.md

# ============================================================
# 5. DECISION RULE
# ============================================================

- merge_or_absorb: old meaning should live under 140.integration
- merge_or_split: old meaning is valid but may need split with growth or operations-support
