# ============================================================
# SHARED UI COMPONENT LEDGER INITIAL TABLE PLAN
# ============================================================

status: canonical-ledger
layer: application-common-components
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This ledger records the initial recommended table plan for the shared UI foundation
and the `app_common` schema.

The purpose of this ledger is planning clarity.
This document does not force immediate physical creation of all tables.
It defines the recommended initial rollout order.

# ============================================================
# 1. ROLLOUT POLICY
# ============================================================

rollout_policy:
- phase 1: minimum shared token and locale base
- phase 2: component catalog and variants
- phase 3: templates and offline/sync policy
- phase 4: accessibility and capability extensions

# ============================================================
# 2. INITIAL TABLE LEDGER
# ============================================================

| no | table_name | priority | phase | purpose | must_have_now | notes |
|----|------------|----------|-------|---------|---------------|-------|
| 1 | app_common.theme_registry | highest | phase_1 | Canonical shared themes | yes | default theme registry |
| 2 | app_common.design_token_set | highest | phase_1 | Versioned token groups | yes | token family header |
| 3 | app_common.design_token_value | highest | phase_1 | Token key/value storage | yes | spacing/color/type/etc |
| 4 | app_common.locale_key | highest | phase_1 | Shared message keys | yes | stable key registry |
| 5 | app_common.locale_translation | highest | phase_1 | Translations by locale | yes | multilingual baseline |
| 6 | app_common.component_catalog | high | phase_2 | Shared component master | yes | button/input/list/etc |
| 7 | app_common.component_variant_catalog | high | phase_2 | Variant master | yes | primary/destructive/dense |
| 8 | app_common.component_slot_rule | medium | phase_2 | Structured slot metadata | no | useful for advanced composition |
| 9 | app_common.screen_template | high | phase_3 | Shared screen template registry | yes | list/detail/approval/offline |
| 10 | app_common.form_definition_metadata | medium | phase_3 | Shared form presentation metadata | no | not domain submission canon |
| 11 | app_common.notification_template | medium | phase_3 | Shared notification copy template | no | title/body presentation |
| 12 | app_common.export_template | medium | phase_3 | Shared export presentation templates | no | csv/pdf/ui export layout |
| 13 | app_common.help_template | medium | phase_3 | Shared help/explanation template | no | guided help surfaces |
| 14 | app_common.sync_policy | high | phase_3 | Offline-first sync behavior metadata | yes | launch/resume/online/manual |
| 15 | app_common.retry_policy | high | phase_3 | Retry presentation metadata | yes | backoff display rules |
| 16 | app_common.queue_visual_rule | high | phase_3 | Queue state presentation rules | yes | pending/failed/conflict badges |
| 17 | app_common.feature_presentation_rule | medium | phase_3 | Shared feature display metadata | no | not entitlement logic |
| 18 | app_common.accessibility_preset | medium | phase_4 | Accessibility presentation preset | no | high-contrast/large touch/etc |
| 19 | app_common.attachment_policy | medium | phase_4 | Shared attachment UI policy | no | extension/count/size display |
| 20 | app_common.client_capability_registry | medium | phase_4 | Client capability metadata | no | pwa/mobile/desktop features |

# ============================================================
# 3. MINIMUM PHASE-1 SET
# ============================================================

minimum_phase_1_set:
- app_common.theme_registry
- app_common.design_token_set
- app_common.design_token_value
- app_common.locale_key
- app_common.locale_translation

why_phase_1_first:
- shared visual canon cannot stabilize without tokens
- multilingual shared UI cannot stabilize without locale keys/translations
- every later component depends on this base

# ============================================================
# 4. MINIMUM PHASE-2 SET
# ============================================================

minimum_phase_2_set:
- app_common.component_catalog
- app_common.component_variant_catalog

why_phase_2_first:
- button and input standardization requires component master data
- ERP dense variants and mobile variants should be controlled as variants, not isolated local components

# ============================================================
# 5. MINIMUM PHASE-3 SET
# ============================================================

minimum_phase_3_set:
- app_common.screen_template
- app_common.sync_policy
- app_common.retry_policy
- app_common.queue_visual_rule

why_phase_3_first:
- offline-first UI requires explicit sync and retry presentation metadata
- shared app shell and shared workspace screens benefit from template canon

# ============================================================
# 6. ERP RELEVANCE
# ============================================================

erp_high_value_tables:
- app_common.design_token_value
- app_common.component_variant_catalog
- app_common.screen_template
- app_common.sync_policy
- app_common.queue_visual_rule

erp_reasoning:
ERP benefits strongly from dense input variants, standard approval screens,
standard queue states, and stable token-driven layout behavior.

# ============================================================
# 7. OFFLINE-FIRST RELEVANCE
# ============================================================

offline_first_high_value_tables:
- app_common.sync_policy
- app_common.retry_policy
- app_common.queue_visual_rule
- app_common.client_capability_registry

offline_first_reasoning:
Offline-first apps need standard presentation of pending, retry, failed,
and conflict states across all OSs and ERP surfaces.

# ============================================================
# 8. EXPLICIT NON-GOALS
# ============================================================

non_goals:
- storing actual outbox business records
- storing ERP journal/voucher canon
- storing domain transaction payloads
- storing final entitlement logic
- storing pricing decision expressions
- storing AI orchestration internals

# ============================================================
# 9. FINAL STATEMENT
# ============================================================

final_statement:
The initial rollout shall begin with phase 1 token and locale tables,
then proceed to shared component catalogs,
then shared templates and offline/sync policy tables,
while keeping business canon outside app_common.
