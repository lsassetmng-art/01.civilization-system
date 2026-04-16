# ============================================================
# SHIFT MANAGER ADDITIONAL FEATURE SQL EXACTIFICATION
# WITH PERSONA BASIC SET
# ============================================================

status: design-extension
type: additional-feature-sql-exactification-with-persona-basic-set
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes how the additional feature SQL pack
should be exactified
while the Persona-side DB dump is treated as a basic-set foundation reference.

This is not live-schema proof.
This is safe exactification direction.

# ============================================================
# 2. BASIC POSITION
# ============================================================

basic_position:
- Persona-side dump is a foundation reference only
- ShiftManager additional feature tables are additive
- SQL exactification should align to confirmed foundation axes
- unresolved foundation details should remain explicitly marked

foundation_axes_to_reuse:
- company_id
- person_id
- site_id

possible_foundation_axes_to_reuse_if_confirmed_later:
- office_id
- department_id
- team_id
- affiliation/user/account linkage axes

# ============================================================
# 3. EXACTIFICATION TARGET SQL FILES
# ============================================================

target_sql_files:
- 015_shift_manager_additional_feature_tables.sql
- 022_shift_manager_additional_feature_indexes.sql
- 109_shift_manager_rls_requested_day_off.sql
- 110_shift_manager_rls_additional_generation.sql
- 111_shift_manager_rls_difference_confirmation.sql
- 112_shift_manager_rls_headquarters_summary.sql

# ============================================================
# 4. CONFIRMED EXACTIFICATION RULES
# ============================================================

confirmed_rules:
- use company_id as the minimum company boundary
- use person_id for person-scoped ownership or confirmation
- use site_id where the business object is site/store scoped
- keep application-owned behavior tables inside app_shift_manager
- keep enum-like values as checked text until stronger foundation evidence is required
- keep created_at/updated_at timestamptz
- keep scheduled generation definition and execution separated
- keep publication difference rows publication-based
- keep dashboard/analytics rows lightweight snapshots

# ============================================================
# 5. NOT-YET-FINALIZED ITEMS
# ============================================================

not_yet_finalized_items:
- exact live foreign key targets for company_id/person_id/site_id
- whether office_id / department_id / team_id are foundation-owned or app-side copied references
- exact nullability for some future scope references
- whether headquarters_operator role is foundation-mapped or application-mapped
- exact UUID generation strategy
- exact view/helper dependency set in final SQL execution environment

rule_for_unfinalized_items:
Do not pretend these are fully live-confirmed.
Mark them as:
- foundation-fit expected
- final FK target pending foundation confirmation

# ============================================================
# 6. TABLE-BY-TABLE FIT DIRECTION
# ============================================================

shift_requested_day_off:
confirmed_fit:
- company_id required
- site_id required
- person_id required
reason:
request belongs to one person inside one site/company scope

shift_publication_difference:
confirmed_fit:
- company_id required
- publication IDs remain app-owned references
- affected_person_id optional but foundation-aligned
reason:
difference is app-owned but affected person should align to foundation person axis

shift_change_confirmation:
confirmed_fit:
- company_id required
- publication_difference_id / publication_id remain app-owned references
- target_person_id required and foundation-aligned
reason:
confirmation is person-specific and publication-follow-up-side

shift_auto_generation_schedule:
confirmed_fit:
- company_id required
- site_license_id app-owned
- target_scope_id app-owned reference direction, but must align logically to site/department/team scope meaning
- generation_rule_id app-owned
reason:
schedule definition is app-owned but company/site meaning must fit foundation

shift_auto_generation_execution:
confirmed_fit:
- company_id required
- auto_generation_schedule_id app-owned
- generated_schedule_id / generation_result_id app-owned
reason:
execution is fully app-owned history with company boundary

shift_site_dashboard_snapshot:
confirmed_fit:
- company_id required
- site_id required
reason:
snapshot is company/site summary row

shift_site_analytics_snapshot:
confirmed_fit:
- company_id required
- site_id required
reason:
analytics is lightweight site summary row

# ============================================================
# 7. INDEX EXACTIFICATION RULES
# ============================================================

index_rules:
- index by company boundary where business lookup is company-scoped
- index by person_id for self/request/confirmation lookup
- index by site_id for site dashboard/analytics lookup
- index by schedule/execution timestamps for timer history
- avoid speculative indexes for not-yet-implemented heavy BI reads

# ============================================================
# 8. RLS EXACTIFICATION RULES
# ============================================================

rls_rules:
- RLS should rely on confirmed company/person scope first
- requested day-off = self-first + manager scope
- scheduled generation = manager-side only
- difference/confirmation = affected person or manager-side summary
- headquarters snapshot/analytics = headquarters/enterprise summary scope
- inactive subscription blocking remains app/service gate, not RLS replacement

# ============================================================
# 9. SQL COMMENTING RULE FOR UNRESOLVED FOUNDATION FIT
# ============================================================

recommended_sql_comment_rule:
For any future FK-style line not yet foundation-confirmed,
use comments such as:
- foundation-fit expected
- final FK target pending Persona basic-set confirmation
- app-owned reference retained for now

# ============================================================
# 10. PRACTICAL EXACTIFICATION OUTCOME
# ============================================================

practical_outcome:
At this stage,
the SQL pack should be treated as:
- structurally exact enough for design
- aligned to confirmed foundation axes
- honest about unresolved FK certainty
- safe for later final execution review

# ============================================================
# 11. CONCLUSION
# ============================================================

Additional feature SQL exactification should proceed
by reusing confirmed Persona basic-set identity axes,
while keeping unresolved live-FK certainty explicitly pending.

