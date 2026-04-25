# ============================================================
# APPLICATION COMMON COMPONENT FOLDER MAP
# ============================================================

status: canonical
layer: application-common-components
domain: folder-map
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This document explains the role of each file
inside the application common-components folder.

It exists to:
- make the folder readable at a glance
- clarify which file is authoritative for what
- separate fixed canon from additive staging
- make future maintenance easier

# ============================================================
# 1. FOLDER ROLE
# ============================================================

folder_path:
07.applications/00.application-common-components/

folder_role:
Cross-application canonical workspace for:
- fixed common components
- additive candidate staging
- promotion governance
- evaluation templates
- reuse mapping

# ============================================================
# 2. FILE MAP
# ============================================================

## 2-1. Root Explanation Files

### 000_APPLICATION_COMMON_COMPONENTS_INDEX.md
role:
Top-level index for the folder.

use_when:
- checking what this folder contains
- understanding official root files
- onboarding into the folder

### 000_APPLICATION_COMMON_COMPONENTS_OVERVIEW.md
role:
Conceptual overview of the folder and its operating model.

use_when:
- understanding fixed vs additive
- understanding promotion flow
- understanding common vs app-specific boundary

## 2-2. Fixed Canon Files

### 00_APPLICATION_COMMON_COMPONENTS_INTEGRATED.md
role:
Integrated fixed common-component catalog.

use_when:
- checking what is already promoted and fixed
- reviewing official common-component definitions
- deciding whether a new candidate already exists in canon

### 001_APPLICATION_COMMON_COMPONENT_LEDGER_INDEX.md
role:
Index for the common-component ledger.

use_when:
- locating the ledger role
- understanding the ledger’s purpose

### 001_APPLICATION_COMMON_COMPONENT_LEDGER.md
role:
Operational ledger for fixed common components and promoted entries.

use_when:
- checking canonical owner
- checking maturity / status
- checking reused_by
- checking residual local responsibility

### 002_APPLICATION_COMMON_COMPONENT_REFERENCE_MATRIX_INDEX.md
role:
Index for the reference matrix.

use_when:
- locating cross-app reuse mapping documents

### 002_APPLICATION_COMMON_COMPONENT_REFERENCE_MATRIX.md
role:
Per-application reuse mapping matrix.

use_when:
- checking which app uses which common component
- checking current / planned / candidate usage
- spotting cross-app reuse opportunities

## 2-3. Additive Staging Files

### 003_APPLICATION_COMMON_COMPONENT_QUICKFORECAST_ADDITIVE_INDEX.md
role:
Index for QuickForecast-derived additive candidate set.

use_when:
- locating QuickForecast-originated additive files

### 003_APPLICATION_COMMON_COMPONENT_QUICKFORECAST_ADDITIVE.md
role:
QuickForecast-derived additive candidate ledger.

use_when:
- reviewing QuickForecast-originated reusable candidates
- checking forecast-originated drafting / preview / trace candidates

### 004_APPLICATION_COMMON_COMPONENTS_ADDITIVE_LEDGER_CANONICAL.md
role:
Consolidated additive ledger for newly discovered promotion candidates.

use_when:
- collecting reusable candidates before promotion
- reviewing promotion shortlist
- separating additive staging from fixed canon

## 2-4. Governance / Evaluation Files

### 005_APPLICATION_COMMON_COMPONENT_PROMOTION_RULE.md
role:
Promotion governance rule for evaluating candidates.

use_when:
- deciding promote / absorb / internal / mapping / keep local
- checking owner-side rules
- checking promotion tests

### 006_APPLICATION_COMMON_COMPONENT_EVALUATION_TEMPLATE.md
role:
Template for evaluating a newly discovered candidate.

use_when:
- assessing a new component brought into this chat
- standardizing evaluation output

### 007_APPLICATION_COMMON_COMPONENT_ADDITIVE_ENTRY_TEMPLATE.md
role:
Template for writing additive-ledger entries after evaluation.

use_when:
- converting evaluation results into additive-ledger form
- preparing later promotion work

## 2-5. Folder Administration File

### 008_APPLICATION_COMMON_COMPONENT_FOLDER_MAP.md
role:
This file.
Explains the role of all files in this folder.

use_when:
- understanding folder structure quickly
- checking what file should be updated next

# ============================================================
# 3. AUTHORITATIVE READING ORDER
# ============================================================

recommended_reading_order:
1. 000_APPLICATION_COMMON_COMPONENTS_INDEX.md
2. 000_APPLICATION_COMMON_COMPONENTS_OVERVIEW.md
3. 00_APPLICATION_COMMON_COMPONENTS_INTEGRATED.md
4. 001_APPLICATION_COMMON_COMPONENT_LEDGER.md
5. 002_APPLICATION_COMMON_COMPONENT_REFERENCE_MATRIX.md
6. 004_APPLICATION_COMMON_COMPONENTS_ADDITIVE_LEDGER_CANONICAL.md
7. 005_APPLICATION_COMMON_COMPONENT_PROMOTION_RULE.md
8. 006_APPLICATION_COMMON_COMPONENT_EVALUATION_TEMPLATE.md
9. 007_APPLICATION_COMMON_COMPONENT_ADDITIVE_ENTRY_TEMPLATE.md

# ============================================================
# 4. UPDATE RULE
# ============================================================

update_rule:
When a new reusable candidate is discovered:

1. evaluate it with:
   - 006_APPLICATION_COMMON_COMPONENT_EVALUATION_TEMPLATE.md

2. register it in additive form with:
   - 007_APPLICATION_COMMON_COMPONENT_ADDITIVE_ENTRY_TEMPLATE.md

3. store / consolidate it in:
   - 004_APPLICATION_COMMON_COMPONENTS_ADDITIVE_LEDGER_CANONICAL.md

4. if promoted, reflect it into:
   - 00_APPLICATION_COMMON_COMPONENTS_INTEGRATED.md
   - 001_APPLICATION_COMMON_COMPONENT_LEDGER.md
   - 002_APPLICATION_COMMON_COMPONENT_REFERENCE_MATRIX.md

5. if needed, update governance understanding in:
   - 005_APPLICATION_COMMON_COMPONENT_PROMOTION_RULE.md

# ============================================================
# 5. STABILITY RULE
# ============================================================

stability_rule:
The fixed common set should remain smaller and cleaner
than the additive candidate set.

This folder is designed so that:
- discovery can continue freely
- fixed canon remains stable
- overlap can be resolved before promotion
- app-specific noise does not pollute common canon

# ============================================================
# 6. CONCLUSION
# ============================================================

This folder now has a complete working structure for:
- fixed common component canon
- additive discovery and staging
- promotion governance
- evaluation workflow
- cross-application reuse mapping

# ============================================================

# ============================================================
# 7. MASTER REGISTRY FILE
# ============================================================

### 011_APPLICATION_COMMON_COMPONENT_MASTER_REGISTRY.md
role:
Consolidated master inventory of all fixed components,
additive candidates, absorbed subfamilies,
OS-internal groups, family notes, and source-application registrations.

use_when:
- checking the full current registration state
- orienting a new chat quickly
- avoiding duplicate registration work
- reviewing family-level status before detailed edits


### 012_APPLICATION_COMMON_COMPONENT_NEXT_CHAT_HANDOFF.md
role:
Next-chat handoff summary for fixed components,
strongest additive families,
recommended next promotion waves,
and startup reading order.

use_when:
- starting the next chat quickly
- handing off current registration status
- deciding the next promotion wave
- avoiding re-discovery of already grouped families


### 013_APPLICATION_COMMON_COMPONENT_COMPLETE_HANDOFF.md
role:
Full handoff summary across fixed canon,
additive groups, strongest non-fixed families,
promotion waves, and next-chat start rules.

use_when:
- starting a new chat from the latest full state
- handing off the whole workspace without replaying history
- checking strongest additive families and next promotion order
- reviewing fixed canon vs backlog/core/framework/media families


### 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
role:
Current official operating ledger for the whole workspace,
summarizing fixed canon, additive family registry,
highest-priority non-fixed candidates,
official promotion waves, and interpretation rules.

use_when:
- starting work from the current official state
- choosing the next promotion wave
- checking the current official fixed/additive split
- avoiding re-reading every detailed ledger first


### 015_EXPENSESETTLEMENT_FORMAL_REVIEW_LEDGER.md
role:
Formal review ledger for ExpenseSettlement-derived candidates,
recording adopt / hold / reject / absorb judgments
before any promotion into fixed or detailed ledgers.

use_when:
- starting formal review from source-group candidates
- deciding which candidates should really move forward
- avoiding duplicate promotion of already-covered families


### 016_ORDERFLOW_FORMAL_REVIEW_LEDGER.md
role:
Formal review ledger for OrderFlow-derived candidates,
recording adopt / hold / reject / absorb judgments.

use_when:
- reviewing OrderFlow source-group candidates
- deciding which OrderFlow items really advance
- avoiding duplicate promotion of already-covered families

### 017_TALENTGROWTH_FORMAL_REVIEW_LEDGER.md
role:
Formal review ledger for TalentGrowth-derived candidates,
recording adopt / hold / reject / absorb judgments.

use_when:
- reviewing TalentGrowth source-group candidates
- deciding which TalentGrowth items really advance
- separating ERP/common/UI family ownership carefully


### 018_INVOICEFLOW_FORMAL_REVIEW_LEDGER.md
role:
Formal review ledger for InvoiceFlow-derived candidates,
recording adopt / hold / reject / absorb judgments.

use_when:
- reviewing InvoiceFlow source-group candidates
- deciding which InvoiceFlow items really advance
- separating document/finance/reflection families carefully

### 019_PRODUCTPORTFOLIOMANAGER_FORMAL_REVIEW_LEDGER.md
role:
Formal review ledger for ProductPortfolioManager-derived candidates,
recording adopt / hold / reject / absorb judgments.

use_when:
- reviewing ProductPortfolioManager source-group candidates
- deciding which comparison/workflow/source-boundary items really advance
- avoiding overlap with existing timeline/comment/multilingual families


### 020_MBO_FORMAL_REVIEW_LEDGER.md
role:
Formal review ledger for Mbo-derived candidates,
recording adopt / hold / reject / absorb judgments.

use_when:
- reviewing Mbo source-group candidates
- deciding which template/export/reference/session items advance
- separating Mbo-specific semantics from reusable surfaces

### 021_KNOWLEDGE_PORTAL_SCENARIO_WORKER_FORMAL_REVIEW_LEDGER.md
role:
Formal review ledger for Knowledge / Portal / Scenario / Worker candidates,
recording adopt / hold / reject / absorb judgments.

use_when:
- reviewing knowledge-platform and portal candidate families
- deciding which knowledge access/governance/navigation/scenario bridge items advance
- separating knowledge governance from app-local presentation details


### 022_APPLICATION_COMMON_COMPONENT_FORMAL_REVIEW_MASTER_SUMMARY.md
role:
Master summary of completed source-group formal reviews,
showing adopted outputs, interpretation rules,
and the transition to reconciliation / fixed-promotion planning.

use_when:
- checking whether source-group formal review is complete
- choosing the next reconciliation family cluster
- preparing the next fixed-promotion planning wave


### 023_APPLICATION_COMMON_COMPONENT_RECONCILIATION_WAVE_1_PLAN.md
role:
Formal reconciliation plan for the first post-review cluster,
covering tier_1 strengthening candidates and their merge targets.

use_when:
- starting reconciliation wave 1
- choosing merged family names
- deciding absorbed names before fixed-promotion planning


### 024_APPLICATION_COMMON_COMPONENT_RECONCILIATION_WAVE_1_RESULT.md
role:
Formal result record for reconciliation wave 1,
showing merged family names, absorbed names,
retained subfamilies, and the wave 1b fixed-promotion subset.

use_when:
- starting wave 1b fixed-promotion subset selection
- checking which names survived reconciliation
- avoiding promotion of absorbed old names


### 025_APPLICATION_COMMON_COMPONENT_WAVE_1B_FIXED_PROMOTION_SELECTION.md
role:
Formal selection record for the wave 1b reduced subset
that is allowed to move toward limited fixed-canon reflection.

use_when:
- starting limited integrated-canon reflection
- confirming which reconciled names survived selection
- excluding absorbed old names from promotion


### 026_APPLICATION_COMMON_COMPONENT_WAVE_1B_LIMITED_FIXED_REFLECTION.md
role:
Formal record of the limited fixed reflection
for the four wave 1b selected reconciled family names.

use_when:
- checking which reconciled names entered limited fixed reflection
- continuing from wave 1b into the next promotion decision
- avoiding revival of absorbed old names


### 027_APPLICATION_COMMON_COMPONENT_CURRENT_STATE_SUMMARY.md
role:
Primary current-state summary for the workspace
after formal review completion, reconciliation wave 1,
wave 1b subset selection, and limited fixed reflection.

use_when:
- starting from the latest stable state
- deciding the next family-based work
- avoiding replay of the entire promotion history


### 028_APPLICATION_COMMON_COMPONENT_RECONCILIATION_WAVE_2_PLAN.md
role:
Formal reconciliation plan for the second post-wave-1b cluster,
covering the next strengthening candidates and their merge targets.

use_when:
- starting reconciliation wave 2
- choosing merged family names
- deciding retained child subfamilies before wave_2b subset selection


### 029_APPLICATION_COMMON_COMPONENT_RECONCILIATION_WAVE_2_RESULT.md
role:
Formal result record for reconciliation wave 2,
showing merged family names, retained child subfamilies,
and the wave 2b fixed-promotion subset.

use_when:
- starting wave 2b fixed-promotion subset selection
- checking which names survived wave 2 reconciliation
- avoiding promotion of child subfamilies instead of parent families


### 030_APPLICATION_COMMON_COMPONENT_WAVE_2B_FIXED_PROMOTION_SELECTION.md
role:
Formal selection record for the wave 2b reduced subset
that is allowed to move toward limited fixed-canon reflection.

use_when:
- starting limited integrated-canon reflection for wave 2
- confirming which reconciled names survived selection
- excluding child/subfamily names from promotion


### 031_APPLICATION_COMMON_COMPONENT_WAVE_2B_LIMITED_FIXED_REFLECTION.md
role:
Formal record of the limited fixed reflection
for the four wave 2b selected reconciled family names.

use_when:
- checking which wave 2 parent families entered limited fixed reflection
- continuing from wave 2b into the next promotion decision
- avoiding promotion of child subfamilies instead of parent families


### 032_APPLICATION_COMMON_COMPONENT_CURRENT_STATE_SUMMARY_V2.md
role:
Primary current-state summary for the workspace
after wave 1b and wave 2b limited fixed reflection.

use_when:
- starting from the latest stable state
- deciding the next selective family-based work
- avoiding replay of the full promotion history


### 033_APPLICATION_COMMON_COMPONENT_RECONCILIATION_WAVE_3_PLAN.md
role:
Formal reconciliation plan for the third stabilized cluster,
covering approval/review, evidence/attachment, timeline/audit,
and analytics/comparison families.

use_when:
- starting reconciliation wave 3
- choosing merged family names
- deciding retained child subfamilies before wave_3b subset selection


### 034_APPLICATION_COMMON_COMPONENT_RECONCILIATION_WAVE_3_RESULT.md
role:
Formal result record for reconciliation wave 3,
showing merged family names, retained child subfamilies,
and the wave 3b fixed-promotion subset.

use_when:
- starting wave 3b fixed-promotion subset selection
- checking which names survived wave 3 reconciliation
- avoiding promotion of child subfamilies instead of parent families


### 035_APPLICATION_COMMON_COMPONENT_WAVE_3B_FIXED_PROMOTION_SELECTION.md
role:
Formal selection record for the wave 3b reduced subset
that is allowed to move toward limited fixed-canon reflection.

use_when:
- starting limited integrated-canon reflection for wave 3
- confirming which reconciled names survived selection
- excluding child/subfamily names from promotion


### 036_APPLICATION_COMMON_COMPONENT_WAVE_3B_LIMITED_FIXED_REFLECTION.md
role:
Formal record of the limited fixed reflection
for the four wave 3b selected reconciled family names.

use_when:
- checking which wave 3 parent families entered limited fixed reflection
- continuing from wave 3b into the next promotion decision
- avoiding promotion of child subfamilies instead of parent families


### 037_APPLICATION_COMMON_COMPONENT_CURRENT_STATE_SUMMARY_V3.md
role:
Primary current-state summary for the workspace
after wave 1b, wave 2b, and wave 3b limited fixed reflection.

use_when:
- starting from the latest stable state
- deciding the next selective family-based work
- avoiding replay of the full promotion history


### 038_APPLICATION_COMMON_COMPONENT_RECONCILIATION_WAVE_4_PLAN.md
role:
Formal reconciliation plan for the fourth stabilized cluster,
covering knowledge/portal/scenario,
ERP boundary/reflection/finance operation,
and people/employee/certification families.

use_when:
- starting reconciliation wave 4
- choosing merged family names
- deciding retained child subfamilies before wave_4b subset selection


### 039_APPLICATION_COMMON_COMPONENT_RECONCILIATION_WAVE_4_RESULT.md
role:
Formal result record for reconciliation wave 4,
showing merged family names, retained child subfamilies,
and the wave 4b fixed-promotion subset.

use_when:
- starting wave 4b fixed-promotion subset selection
- checking which names survived wave 4 reconciliation
- avoiding promotion of child subfamilies instead of parent families


### 040_APPLICATION_COMMON_COMPONENT_WAVE_4B_FIXED_PROMOTION_SELECTION.md
role:
Formal selection record for the wave 4b reduced subset
that is allowed to move toward limited fixed-canon reflection.

use_when:
- starting limited integrated-canon reflection for wave 4
- confirming which reconciled names survived selection
- excluding child/subfamily names from promotion


### 041_APPLICATION_COMMON_COMPONENT_WAVE_4B_LIMITED_FIXED_REFLECTION.md
role:
Formal record of the limited fixed reflection
for the three wave 4b selected reconciled family names.

use_when:
- checking which wave 4 parent families entered limited fixed reflection
- continuing from wave 4b into the next promotion decision
- avoiding promotion of child subfamilies instead of parent families


### 042_APPLICATION_COMMON_COMPONENT_CURRENT_STATE_SUMMARY_V4.md
role:
Primary current-state summary for the workspace
after wave 1b, wave 2b, wave 3b, and wave 4b limited fixed reflection.

use_when:
- starting from the latest stable state
- deciding the next selective family-based work
- avoiding replay of the full promotion history


### 043_APPLICATION_COMMON_COMPONENT_CHILD_FAMILY_RECONCILIATION_PLAN_1.md
role:
Formal selective child-family reconciliation plan
for knowledge, ERP, and people child-family sets
under already-stabilized parent families.

use_when:
- starting child-family refinement work
- avoiding another broad parent-family promotion wave
- organizing retained child families into smaller reusable clusters


### 044_APPLICATION_COMMON_COMPONENT_CHILD_FAMILY_RECONCILIATION_RESULT_1.md
role:
Formal result record for the first selective child-family reconciliation,
showing child clusters under stabilized knowledge, ERP, and people parent families.

use_when:
- deciding whether to stop at child-cluster organization
- choosing a tiny child-cluster subset for later limited reflection
- avoiding reopening broad parent-family promotion


### 046_APPLICATION_COMMON_COMPONENT_CAREERLAUNCH_SOURCE_REVIEW.md
role:
Formal review record for the CareerLaunch source-candidate block,
showing selected candidates, strengthening-only items,
and boundary-review-required items.

use_when:
- starting the CareerLaunch selected-subset reconciliation step
- excluding strengthening-only items from new parent promotion
- keeping persona/background work behind boundary review


### 047_APPLICATION_COMMON_COMPONENT_CAREERLAUNCH_SELECTED_SUBSET_RECONCILIATION_PLAN.md
role:
Formal reconciliation plan for the CareerLaunch selected subset,
showing which six reviewed candidates move forward
and how they should be reconciled against existing families.

use_when:
- starting CareerLaunch selected-subset reconciliation
- excluding strengthening-only items from the step
- keeping persona/background outside this step


### 048_APPLICATION_COMMON_COMPONENT_CAREERLAUNCH_SELECTED_SUBSET_RECONCILIATION_RESULT.md
role:
Formal reconciliation result for the CareerLaunch selected subset,
showing six reconciled branch families
and the reduced subset candidates for the next step.

use_when:
- starting CareerLaunch reduced subset selection
- checking which six selected candidates survived reconciliation
- excluding strengthening-only and boundary-review items


### 049_APPLICATION_COMMON_COMPONENT_CAREERLAUNCH_REDUCED_SUBSET_SELECTION.md
role:
Formal reduced subset selection record for the CareerLaunch reconciled branch families,
showing the four selected core candidates
and the two deferred candidates.

use_when:
- starting CareerLaunch limited reflection preparation
- excluding Export and Advisor Share from the next step
- keeping only the strongest four branch families in scope


### 050_APPLICATION_COMMON_COMPONENT_CAREERLAUNCH_LIMITED_REFLECTION.md
role:
Formal limited reflection record for the selected CareerLaunch reduced subset.

use_when:
- checking which CareerLaunch branch families were reflected
- confirming deferred CareerLaunch items
- continuing from CareerLaunch-specific reflection into the next decision


### 051_APPLICATION_COMMON_COMPONENT_CURRENT_STATE_SUMMARY_V5.md
role:
Primary current-state summary for the workspace
after wave 1b, wave 2b, wave 3b, wave 4b,
child-family reconciliation result 1,
and CareerLaunch limited reflection.

use_when:
- starting from the latest stable state
- deciding the next narrow follow-up work
- avoiding replay of the full promotion history


### 052_APPLICATION_COMMON_COMPONENT_CAREERLAUNCH_DEFERRED_ITEM_REVIEW.md
role:
Formal review record for the deferred CareerLaunch items,
showing which deferred candidates move forward
and which candidate still requires boundary review.

use_when:
- starting deferred-item reconciliation for CareerLaunch
- excluding persona/background from the next step
- narrowing follow-up work to Export and Advisor Share


### 053_APPLICATION_COMMON_COMPONENT_OFFICIAL_ADDITION_REVIEW_MEMO.md
role:
Formal review memo for the proposed official addition block,
showing the selected reconciliation subset
and the conditional hold items.

use_when:
- starting official-addition reconciliation
- excluding conditional hold items from the next step
- narrowing work to the strongest six candidates

