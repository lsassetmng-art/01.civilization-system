# ============================================================
# IMPLEMENTATION HANDOFF PACKAGE
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Provides a direct implementation handoff package
for a new chat or a new implementer.

# ============================================================
# 1. WHAT THIS APP IS
# ============================================================

app_definition:
InvoiceFlow is:
- invoice front
- payment confirmation front
- collection management front
- receipt issuance front
- ERP-aware operational front

core_boundary:
- FRONT_LOCAL is application-created and application-managed
- ERP_MASTER is ERP-mastered and only operationally handled here
- FRONT_LOCAL must never masquerade as ERP_MASTER
- ERP reflection is only for eligible ERP_MASTER paths

# ============================================================
# 2. FIRST FILES TO READ
# ============================================================

first_read_order:
1. 000_INVOICE_FLOW_OVERVIEW.md
2. 000_INVOICE_FLOW_INDEX.md
3. 020.architecture/020110_INVOICE_BOUNDARY_ARCHITECTURE.md
4. 030.model/030270_DB_PHYSICAL_OVERVIEW_MODEL.md
5. 050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md
6. 060.integration/060150_API_EXACT_PAYLOAD_OVERVIEW.md
7. 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md
8. 120.implementation/120110_IMPLEMENTATION_ROADMAP.md
9. 120.implementation/120270_PHASE_01_IMPLEMENTATION_INSTRUCTION.md
10. 00_INVOICE_FLOW_INTEGRATED.md

# ============================================================
# 3. IMPLEMENTATION ORDER
# ============================================================

implementation_order:
- IF-PHASE-01 Authority And Base Model
- IF-PHASE-02 Front Invoice Core
- IF-PHASE-03 Manual Payment Confirmation
- IF-PHASE-04 Receipt Issuance
- IF-PHASE-05 Collection Management
- IF-PHASE-06 Bank Match Flow
- IF-PHASE-07 ERP Reflection
- IF-PHASE-08 Refinement And Operator Optimization

# ============================================================
# 4. PHASE INSTRUCTION FILES
# ============================================================

phase_instruction_files:
- 120.implementation/120270_PHASE_01_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120280_PHASE_02_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120290_PHASE_03_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120300_PHASE_04_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120310_PHASE_05_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120320_PHASE_06_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120330_PHASE_07_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120340_PHASE_08_IMPLEMENTATION_INSTRUCTION.md

# ============================================================
# 5. DO NOT BREAK THESE
# ============================================================

critical_guardrails:
- never blur FRONT_LOCAL and ERP_MASTER
- never allow ERP reflection on non-eligible path
- never issue receipt without confirmed payment
- never hide authority badge or ERP eligibility warning
- never auto-finalize ambiguous bank match
- never destructively overwrite financial history when additive trace is required
- never bypass audit on elevated actions
- never lose company scope enforcement

# ============================================================
# 6. WHEN YOU RESTART LATER
# ============================================================

restart_rule:
If work resumes later,
do not reopen settled architectural meaning first.
Instead:
1. read 900.meta/900110_MASTER_RESTART_NOTE.md
2. read 900.meta/900170_IMPLEMENTATION_READY_NOTE.md
3. select current target phase
4. execute only that phase's instruction file
5. keep later phases queued, not mixed

# ============================================================
# 7. IF SOMETHING FEELS UNCLEAR
# ============================================================

clarity_rule:
Before changing meaning,
check these first:
- 080.policy/080110_INVOICE_AUTHORITY_POLICY.md
- 080.policy/080120_RECEIPT_POLICY.md
- 080.policy/080130_COLLECTION_PRIORITY_POLICY.md
- 080.policy/080140_FAIL_CLOSED_POLICY.md
- 080.policy/080180_SIMPLE_RECONCILIATION_POLICY.md

# ============================================================
# 8. OPEN DECISIONS
# ============================================================

open_decision_files:
- 900.meta/900020_OPEN_ISSUE_LEDGER.md
- 900.meta/900030_DECISION_REQUIRED_LEDGER.md

rule_for_open_decisions:
Open decisions are explicit business choices.
Do not silently choose in implementation if the choice changes meaning.

# ============================================================
# 9. FASTEST IMPLEMENTATION START PACKAGE
# ============================================================

fast_start_package:
- 020.architecture/020110_INVOICE_BOUNDARY_ARCHITECTURE.md
- 030.model/030280_INVOICE_CASE_PHYSICAL_MODEL.md
- 030.model/030290_PAYMENT_CONFIRMATION_PHYSICAL_MODEL.md
- 030.model/030300_RECEIPT_ISSUE_PHYSICAL_MODEL.md
- 050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md
- 060.integration/060180_CREATE_FRONT_INVOICE_EXACT_PAYLOAD.md
- 060.integration/060190_CONFIRM_MANUAL_PAYMENT_EXACT_PAYLOAD.md
- 060.integration/060210_ISSUE_RECEIPT_EXACT_PAYLOAD.md
- 120.implementation/120270_PHASE_01_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120280_PHASE_02_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120290_PHASE_03_IMPLEMENTATION_INSTRUCTION.md
- 120.implementation/120300_PHASE_04_IMPLEMENTATION_INSTRUCTION.md

# ============================================================
# 10. FINAL INTERPRETATION
# ============================================================

final_interpretation:
This handoff package means InvoiceFlow is ready for implementation
without reopening core design structure.
Remaining uncertainty is mostly business decision selection,
not missing architecture.
