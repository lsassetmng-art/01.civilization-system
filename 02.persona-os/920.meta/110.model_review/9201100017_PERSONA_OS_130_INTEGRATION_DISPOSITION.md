# ============================================================
# PERSONA OS 130.INTEGRATION DISPOSITION
# ============================================================

status: canonical
layer: meta
domain: model-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the final disposition
for reviewed 130.integration old canonical models.

# ============================================================
# 1. DISPOSITION
# ============================================================

| old_file | disposition | canonical_target | reason |
|---|---|---|---|
| 030.model/010.canonical/130.integration/0301300001_persona_event_outbox.md | reassign_to_operations_support_domain | 030.model/170.operations-support/0301700003_PERSONA_EVENT_OUTBOX_MODEL.md | queue/retry/dispatch tracking is operational delivery state |
| 030.model/010.canonical/130.integration/0301300002_persona_sync_event_contract.md | add_as_new_canonical_submodel | 030.model/140.integration/0301400003_PERSONA_SYNC_EVENT_CONTRACT_MODEL.md | explicit sync event contract belongs directly to integration domain |
| 030.model/010.canonical/130.integration/0301300003_persona_growth_request_inbox.md | add_as_new_canonical_submodel | 030.model/140.integration/0301400004_PERSONA_GROWTH_REQUEST_INBOX_MODEL.md | inbound request intake is integration-side contract state |
| 030.model/010.canonical/130.integration/0301300004_persona_growth_result_contract.md | add_as_new_canonical_submodel | 030.model/140.integration/0301400005_PERSONA_GROWTH_RESULT_CONTRACT_MODEL.md | growth result payload is integration-side result contract |

# ============================================================
# 2. DECISION RULE
# ============================================================

add_as_new_canonical_submodel:
old file contributes a valid missing canonical integration concept

reassign_to_operations_support_domain:
old file is primarily operational delivery state rather than contract authority
