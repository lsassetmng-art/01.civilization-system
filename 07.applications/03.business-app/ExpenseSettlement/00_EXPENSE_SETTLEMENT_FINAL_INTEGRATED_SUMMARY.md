# ============================================================
# EXPENSE SETTLEMENT FINAL INTEGRATED SUMMARY
# ============================================================

status: canonical
system: applications
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Provides a single integrated summary of the current ExpenseSettlement design set.

# ============================================================
# 1. APPLICATION POSITIONING
# ============================================================

application_positioning:
ExpenseSettlement is a BusinessOS-side lightweight but serious expense front application.
It supports employee entry, approval, finance review, evidence handling,
and explicit ERP publication while keeping ERP as the accounting source of truth.

key_differentiation:
- PocketSecretary-assisted candidate intake
- ERP source-of-truth separation
- multilingual support from the beginning
- multi currency support from the beginning
- iphone / android / pc / tablet support from the beginning
- lightweight UX with strong control/audit meaning

# ============================================================
# 2. TOP-LEVEL FIXED REQUIREMENTS
# ============================================================

top_level_fixed_requirements:
- multilingual support
- multi currency support
- iphone support
- android support
- pc support
- tablet support

# ============================================================
# 3. INITIAL RELEASE SHAPE
# ============================================================

initial_release_shape:
Initial release includes both MUST and SHOULD scope together.

included_capability_examples:
- draft creation and persistence
- receipt attachment
- submit / return / reject / resubmit
- multi-step approval
- finance review
- ERP publication request/result
- ERP failure handling
- duplicate suspicion handling
- business trip support
- advance settlement support
- corporate card support
- templates
- candidate inbox
- allocation support
- export/reminder support
- audit/history support

# ============================================================
# 4. MAIN OBJECTS
# ============================================================

main_objects:
- expense_report
- expense_item
- expense_receipt
- expense_approval_record
- expense_finance_action_record
- expense_erp_submission_request
- expense_erp_submission_result
- expense_candidate_link
- expense_validation_snapshot
- expense_pending_operation

# ============================================================
# 5. MOST IMPORTANT SEPARATIONS
# ============================================================

most_important_separations:
- submit_state != approval_state
- approval_state != finance_state
- finance_state != erp_state
- erp_state != settlement_state
- candidate != template
- candidate != formal expense object
- file acceptance != evidence acceptance
- correction != deletion
- return != rejection
- retry != overwrite

# ============================================================
# 6. CURRENT DESIGN AREAS FIXED
# ============================================================

current_design_areas_fixed:
- application definition
- rival comparison
- feature scope
- screen map/navigation
- exact payload contract
- physical data model meaning
- state transition design
- authority/access design
- notification design
- multi currency policy
- multilingual design
- audit/history/evidence design
- exception/correction/cancellation policy
- policy exception/admin operation rule
- approval route detail
- finance review detail
- category master policy
- evidence requirement matrix
- template master policy
- candidate inbox source policy
- allocation policy detail
- settlement business rule detail
- export policy detail
- reminder policy detail
- receipt/attachment file policy
- initial master catalog bundle

# ============================================================
# 7. REMAINING WORK TYPE
# ============================================================

remaining_work_type:
Mostly company-specific parameter tuning, such as:
- exact category labels per language
- exact department/project route matrix
- exact finance reason code catalogs
- exact evidence mismatch tolerance rules
- exact template visibility narrowing
- exact settlement confirmation source catalog
- exact export masking matrix

# ============================================================
# 8. IMPLEMENTATION STATUS
# ============================================================

implementation_status:
- no implementation fixed
- no DDL fixed
- no code fixed
- no runtime deployment fixed

important_rule:
The current state is strong design,
not implementation authorization.

# ============================================================
# 9. CURRENT OVERALL JUDGEMENT
# ============================================================

current_overall_judgement:
ExpenseSettlement has reached a strong canonical design checkpoint.
Further work should be narrow, parameterized, and governance-driven,
not broad conceptual redesign.

