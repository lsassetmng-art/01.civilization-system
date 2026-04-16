# ============================================================
# EXPENSE CURRENT STATUS SUMMARY
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Provides a concise but structured summary of the current design state
for fast review and restart.

# ============================================================
# 1. APPLICATION POSITION
# ============================================================

application_position:
ExpenseSettlement is positioned as a BusinessOS-side lightweight but serious
expense front application.
ERP remains the accounting source of truth.
PocketSecretary linkage is a key differentiator.

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
Initial release includes MUST + SHOULD together.
It is not a minimum-only MVP.

included_shape_examples:
- draft / submit / resubmit
- approval / return / reject
- finance review
- ERP publication request/result
- ERP failure visibility
- receipt handling
- duplicate handling
- business trip support
- advance settlement support
- corporate card support
- templates
- candidate inbox
- allocation support
- notification support
- auditability support

# ============================================================
# 4. MAJOR DESIGN LAYERS ALREADY FIXED
# ============================================================

major_design_layers_already_fixed:
- constitution
- architecture
- model
- runtime
- flow
- integration
- operations
- policy
- interface
- security
- development/meta support

# ============================================================
# 5. MOST IMPORTANT DESIGN SEPARATIONS
# ============================================================

most_important_design_separations:
- approval != finance review
- finance review != ERP confirmation
- ERP confirmation != settlement completion
- candidate != template
- candidate != formal expense object
- file acceptance != evidence acceptance
- correction != deletion
- return != rejection
- retry != overwrite

# ============================================================
# 6. CURRENT REMAINING WORK TYPE
# ============================================================

current_remaining_work_type:
Remaining work is mostly:
- company-specific parameter tuning
- catalog refinement
- label/matrix/detail governance
not broad structural redesign.

# ============================================================
# 7. IMPLEMENTATION STATUS
# ============================================================

implementation_status:
- no DDL fixed
- no code fixed
- no framework implementation fixed
- no runtime deployment fixed

important_rule:
This remains design work only.

