# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE SQL EXACTIFICATION GUIDE
# ============================================================

status: development-extension
type: additional-feature-sql-exactification-guide
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide fixes how developers should read and refine
the additional feature SQL pack
under the Persona basic-set assumption.

# ============================================================
# 2. READING / REVIEW ORDER
# ============================================================

review_order:
1. 0300007_SHIFT_MANAGER_PERSONA_BASIC_SET_DB_FIT_AND_ADDITIVE_PLACEMENT.md
2. 0300008_SHIFT_MANAGER_ADDITIONAL_FEATURE_SQL_EXACTIFICATION_WITH_PERSONA_BASIC_SET.md
3. 015_shift_manager_additional_feature_tables.sql
4. 022_shift_manager_additional_feature_indexes.sql
5. 1000004_SHIFT_MANAGER_ADDITIONAL_FEATURE_AUTHORIZATION_EXTENSION.md
6. 1000005_SHIFT_MANAGER_ADDITIONAL_FEATURE_RLS_SQL_PACK_NOTE.md
7. 109_shift_manager_rls_requested_day_off.sql
8. 110_shift_manager_rls_additional_generation.sql
9. 111_shift_manager_rls_difference_confirmation.sql
10. 112_shift_manager_rls_headquarters_summary.sql

# ============================================================
# 3. DEVELOPMENT RULES
# ============================================================

development_rules:
- confirm company/person/site axis reuse first
- keep unresolved FK certainty explicitly pending
- do not convert app-owned tables into fake foundation tables
- do not tighten optional scope fields without foundation evidence
- prefer honest comments over invented certainty

# ============================================================
# 4. OUTPUT EXPECTATION
# ============================================================

output_expectation:
The result should be:
- design-exact
- foundation-aligned
- additive
- execution-review-ready later

# ============================================================
# 5. CONCLUSION
# ============================================================

Additional feature SQL should be refined carefully,
but without claiming certainty that the Persona basic-set dump does not provide.

