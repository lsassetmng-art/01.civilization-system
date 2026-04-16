# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION AND LIFECYCLE REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for lifecycle and classification handling
without entering implementation code.

# ============================================================
# 1. REQUIRED DISPLAY CAPABILITIES
# ============================================================

required_display_capabilities:
- show lifecycle_stage in portfolio list
- show current_classification_code in portfolio list
- show lifecycle and classification together in product detail
- show classification history in history surfaces
- support filtering by lifecycle and classification
- support comparison views across lifecycle/classification combinations

# ============================================================
# 2. REQUIRED EDITING CAPABILITIES
# ============================================================

required_editing_capabilities:
- create classification draft
- update classification draft while allowed
- submit classification draft
- finalize classification where policy permits
- keep lifecycle updates and classification changes as separate actions

# ============================================================
# 3. REQUIRED EXPLANATION CAPABILITIES
# ============================================================

required_explanation_capabilities:
- explain lifecycle as product-phase meaning
- explain classification as strategy meaning
- avoid implying they are the same field
- show reason and support context for classification changes where relevant

# ============================================================
# 4. REQUIRED HISTORY CAPABILITIES
# ============================================================

required_history_capabilities:
- show previous approved classifications
- show current approved classification
- distinguish draft from approved meaning
- preserve before/after comparison for classification changes

# ============================================================
# 5. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready labels for lifecycle and classification
- cross-device consistent meaning
- no hidden classification changes during score refresh
- no collapse of lifecycle and classification into one display concept

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must present lifecycle and classification
as distinct but related judgment surfaces,
with clear explanation, filtering, and history behavior.
