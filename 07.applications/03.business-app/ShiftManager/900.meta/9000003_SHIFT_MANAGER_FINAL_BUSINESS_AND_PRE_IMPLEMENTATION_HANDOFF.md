# ============================================================
# SHIFT MANAGER FINAL BUSINESS AND PRE-IMPLEMENTATION HANDOFF
# ============================================================

status: canonical-handoff
type: final-business-and-pre-implementation-handoff
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 0. CURRENT POSITION
# ============================================================

ShiftManager has reached a strong final pre-implementation state.

It is now fixed across:
- business positioning
- pricing / license / supported device policy
- subscription / trial / read-only model
- role / visibility model
- API / validation detail
- database / SQL pack detail
- generation / scheduled generation / PDF / notification detail
- additional competitive feature direction
- multilingual display/output direction
- Persona basic-set DB fit direction
- additional feature SQL exactification direction
- implementation-entry pack structure

It is appropriate to treat the next phase
as implementation-entry work.

# ============================================================
# 1. BUSINESS MODEL FIXED
# ============================================================

service_positioning:
- subscription-based application
- monthly-use application

pricing_model:
- 900 JPY per site / month
- unlimited users within site
- no initial fee
- initial 3-day trial

license_model:
- one site license covers supported devices used in the site context
- not per-user pricing
- not separate paid licenses by PC/mobile platform class

supported_devices:
- iphone
- android
- pc
- tablet

device_function_rule:
- iPhone / Android / PC / tablet share the same core feature set
- differences are limited to UI optimization
- business capability is not split by device type

# ============================================================
# 2. SUBSCRIPTION MODEL FIXED
# ============================================================

subscription_status:
- trial
- active
- grace
- inactive

inactive_policy:
- read-only mode
- self shift viewing allowed
- already visible published shift viewing allowed
- notification viewing allowed
- create/edit/generate/publish/share/export blocked

timer_relation:
- scheduled auto generation is allowed in trial/active/grace
- inactive skips scheduled execution

important_subscription_rule:
subscription gating remains app/service-side logic.
RLS preserves scope safety and does not replace feature-gate logic.

# ============================================================
# 3. CORE PRODUCT DECISIONS FIXED
# ============================================================

fixed_core_decisions:
- draft and publication are separated
- only published shifts may be shared
- only published shifts may be exported to ERP
- auto generation creates draft only
- scheduled generation creates draft only
- warnings/shortages remain visible
- publish remains human-controlled
- formal printable distribution should use publication_pdf
- same_day default = 1 hour before shift start

# ============================================================
# 4. ADDED COMPETITIVE FEATURES FIXED
# ============================================================

adopted_additions:
- headquarters site management dashboard
- shortage / difference / unconfirmed visualization
- requested day-off submission
- change confirmation flag
- lightweight multi-site analytics
- scheduled automatic draft generation

future_candidates:
- shift exchange request
- support request

# ============================================================
# 5. MULTILINGUAL SUPPORT FIXED
# ============================================================

multilingual_support:
- Japanese-first
- English-ready
- code-fixed internals
- localized display/output layer only

important_language_rules:
- do not localize API keys
- do not localize DB columns
- do not localize internal enum values
- do not localize feature codes
- do not localize error codes
- localize UI labels
- localize notification display text
- localize PDF visible labels
- localize validation/user-facing messages

# ============================================================
# 6. PERSONA BASIC-SET DB FIT FIXED
# ============================================================

db_alignment_position:
- Persona-side dump is treated as basic-set foundation reference
- ShiftManager additional tables are treated as additive app-owned tables
- confirmed reusable foundation axes are:
  - company_id
  - person_id
  - site_id

important_db_rule:
Do not pretend that the Persona basic-set dump proves
that all ShiftManager additional tables already exist.

db_fit_rule:
- reuse confirmed foundation identity axes
- keep ShiftManager operational behavior tables app-owned
- keep unresolved live-FK certainty explicitly pending where not proven

# ============================================================
# 7. ADDITIONAL FEATURE EXACTIFICATION FIXED
# ============================================================

additional_feature_exactification:
- API exact payloads fixed
- validation extensions fixed
- additional DTO inventory fixed
- screen navigation/responsibility extensions fixed
- physical DDL execution direction fixed
- authorization direction fixed
- RLS SQL pack direction fixed
- SQL review order fixed
- Persona basic-set fit aware SQL exactification fixed

# ============================================================
# 8. IMPLEMENTATION-FACING DETAIL STATUS
# ============================================================

fixed_detail_layers:
- API request/response exact payload spec
- endpoint validation matrix
- generation condition JSON spec
- generation algorithm refinement
- notification template fixed set
- screen input item definition table
- additional screen input extension
- PDF export specification
- physical DDL execution design
- additional DDL execution extension
- exact execution SQL pack
- RLS SQL pack
- additional RLS SQL pack direction
- subscription API / feature gate spec
- site subscription model
- subscription authorization policy
- supported device policy
- multilingual support policy
- multilingual implementation note
- additional feature architecture/model/runtime/flow/screen docs
- Persona basic-set DB fit docs
- additional feature SQL exactification docs

# ============================================================
# 9. HIGH-VALUE FILES
# ============================================================

high_value_files:
- 00_SHIFT_MANAGER_INTEGRATED.md
- 0300003_SHIFT_MANAGER_PHYSICAL_DDL_EXECUTION_DESIGN.md
- 0300004_SHIFT_MANAGER_SITE_SUBSCRIPTION_MODEL.md
- 0300005_SHIFT_MANAGER_ADDITIONAL_FEATURE_MODEL_EXTENSION.md
- 0300006_SHIFT_MANAGER_ADDITIONAL_FEATURE_PHYSICAL_DDL_EXECUTION_EXTENSION.md
- 0300007_SHIFT_MANAGER_PERSONA_BASIC_SET_DB_FIT_AND_ADDITIVE_PLACEMENT.md
- 0300008_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_EXACTIFICATION_WITH_PERSONA_BASIC_SET.md
- 0400003_SHIFT_MANAGER_TIMER_BASED_AUTO_GENERATION_RUNTIME.md
- 0600003_SHIFT_MANAGER_PDF_EXPORT_SPECIFICATION.md
- 0800003_SHIFT_MANAGER_SUBSCRIPTION_AND_TRIAL_POLICY.md
- 0800004_SHIFT_MANAGER_LICENSE_AND_DEVICE_POLICY.md
- 0800005_SHIFT_MANAGER_DEVICE_FUNCTION_POLICY.md
- 0800006_SHIFT_MANAGER_MULTILINGUAL_SUPPORT_POLICY.md
- 0800007_SHIFT_MANAGER_SUPPORTED_DEVICE_POLICY.md
- 1000002_SHIFT_MANAGER_RLS_AND_AUTHORIZATION_DDL_POLICY.md
- 1000003_SHIFT_MANAGER_SUBSCRIPTION_AUTHORIZATION_POLICY.md
- 1000004_SHIFT_MANAGER_ADDITIONAL_FEATURE_AUTHORIZATION_EXTENSION.md
- 1000005_SHIFT_MANAGER_ADDITIONAL_FEATURE_RLS_SQL_PACK_NOTE.md
- 1200007_SHIFT_MANAGER_API_REQUEST_RESPONSE_EXACT_PAYLOAD_SPEC.md
- 1200010_SHIFT_MANAGER_ENDPOINT_VALIDATION_MATRIX.md
- 1200011_SHIFT_MANAGER_SUBSCRIPTION_API_AND_FEATURE_GATE_SPEC.md
- 1200012_SHIFT_MANAGER_COMPETITOR_ANALYSIS_AND_ADDITIONAL_FEATURE_PROPOSAL.md
- 1200013_SHIFT_MANAGER_MULTILINGUAL_SUPPORT_IMPLEMENTATION_NOTE.md
- 1200014_SHIFT_MANAGER_ADDITIONAL_FEATURE_API_EXACT_PAYLOAD_SPEC.md
- 1200015_SHIFT_MANAGER_ADDITIONAL_FEATURE_VALIDATION_MATRIX_EXTENSION.md
- 1200016_SHIFT_MANAGER_ADDITIONAL_FEATURE_DTO_INVENTORY_EXTENSION.md
- 1200017_SHIFT_MANAGER_ADDITIONAL_FEATURE_EXACT_REFERENCE_MAP.md
- 1200018_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_REVIEW_PACK_NOTE.md
- 1300003_SHIFT_MANAGER_FULL_GENERATION_INPUT_FORMAT.md
- 1300005_SHIFT_MANAGER_PHASE_IMPLEMENTATION_STRATEGY.md
- 1300006_SHIFT_MANAGER_MULTILINGUAL_DEVELOPMENT_GUIDE.md
- 1300007_SHIFT_MANAGER_SUBSCRIPTION_AND_LICENSE_DEVELOPMENT_GUIDE.md
- 1300008_SHIFT_MANAGER_COMPETITIVE_FEATURE_DEVELOPMENT_ROADMAP.md
- 1300009_SHIFT_MANAGER_ADDITIONAL_FEATURE_DEVELOPMENT_READING_ORDER.md
- 1300010_SHIFT_MANAGER_PERSONA_BASIC_SET_DB_REVIEW_GUIDE.md
- 1300011_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_EXACTIFICATION_GUIDE.md
- 9000004_SHIFT_MANAGER_IMPLEMENTATION_START_PACKAGE.md
- 9000005_SHIFT_MANAGER_IMPLEMENTATION_PHASE_TASK_BREAKDOWN.md
- 9000006_SHIFT_MANAGER_PHASE1_DETAILED_TASK_BREAKDOWN.md
- 9000007_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_ENTRY_PACK.md
- 9000008_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_STARTER_PACK.md
- 9000009_SHIFT_MANAGER_PHASE2_IMPLEMENTATION_ENTRY_PACK.md
- 9000010_SHIFT_MANAGER_PHASE3_4_IMPLEMENTATION_ENTRY_PACK.md
- 9000011_SHIFT_MANAGER_PHASE5_PDF_NOTIFICATION_ERP_ENTRY_PACK.md
- 9000012_SHIFT_MANAGER_IMPLEMENTATION_MASTER_INDEX.md
- 9000013_SHIFT_MANAGER_PHASE1_IMPLEMENTATION_FILE_RESPONSIBILITY_PACK.md
- 9000014_SHIFT_MANAGER_ADDITIONAL_FEATURE_DESIGN_STRENGTHENING_SUMMARY.md
- 9000015_SHIFT_MANAGER_PERSONA_BASIC_SET_DB_ALIGNMENT_SUMMARY.md
- 9000016_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_EXACTIFICATION_SUMMARY.md

# ============================================================
# 10. SQL PACK STATUS
# ============================================================

model_sql_pack:
- 001_shift_manager_schema.sql
- 010_shift_manager_core_tables.sql
- 011_shift_manager_generation_tables.sql
- 012_shift_manager_history_audit_tables.sql
- 013_shift_manager_pdf_export_tables.sql
- 014_shift_manager_site_subscription_tables.sql
- 015_shift_manager_additional_feature_tables.sql
- 020_shift_manager_indexes.sql
- 021_shift_manager_subscription_indexes.sql
- 022_shift_manager_additional_feature_indexes.sql
- 030_shift_manager_updated_at_triggers.sql
- 040_shift_manager_views.sql
- 050_shift_manager_helper_functions.sql
- 051_shift_manager_subscription_helper_functions.sql

security_sql_pack:
- 100_shift_manager_rls_enable.sql
- 101_shift_manager_rls_helpers.sql
- 102_shift_manager_rls_draft.sql
- 103_shift_manager_rls_publication.sql
- 104_shift_manager_rls_share.sql
- 105_shift_manager_rls_notification.sql
- 106_shift_manager_rls_erp.sql
- 107_shift_manager_rls_generation.sql
- 108_shift_manager_rls_subscription_reference.sql
- 109_shift_manager_rls_requested_day_off.sql
- 110_shift_manager_rls_additional_generation.sql
- 111_shift_manager_rls_difference_confirmation.sql
- 112_shift_manager_rls_headquarters_summary.sql

# ============================================================
# 11. OPEN ITEMS THAT REMAIN INTENTIONALLY NON-FINAL
# ============================================================

non_final_items:
- exact live foreign key targets beyond confirmed basic-set axes
- UUID generation final choice
- schedule_code issuance implementation
- exact print rendering engine
- exact push provider
- ERP transport detail
- future exchange/support behavior
- advanced optimization tuning
- final visual styling tokens

# ============================================================
# 12. RECOMMENDED NEXT STEPS
# ============================================================

recommended_next_steps:
1. keep this as final design/handoff baseline
2. use 9000012 implementation master index as execution navigation
3. start implementation only from the approved implementation-entry packs
4. review SQL pack in execution-review mode before any real DB application
5. keep Persona basic-set fit assumptions explicit during later SQL approval

# ============================================================
# 13. CONCLUSION
# ============================================================

ShiftManager is now ready to be treated as:
- design complete
- pre-implementation detail substantially complete
- business model fixed
- supported device policy fixed
- multilingual support fixed in direction
- additional competitive extensions fixed in direction
- Persona basic-set DB fit fixed in direction
- additional feature exactification substantially complete
- implementation-entry ready

