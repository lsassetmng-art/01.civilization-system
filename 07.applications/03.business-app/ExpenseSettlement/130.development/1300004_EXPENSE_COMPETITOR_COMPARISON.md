# ============================================================
# EXPENSE COMPETITOR COMPARISON
# ============================================================

status: canonical
layer: development
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
This document compares major expense reimbursement competitors
to define realistic baseline requirements and differentiation points
for ExpenseSettlement.

comparison_targets:
- Rakuraku Seisan
- Jobcan Expense Reimbursement
- Money Forward Cloud Expense
- TOKIUM Expense
- freee-related accounting-adjacent expense workflow

# ============================================================
# 1. COMPARISON AXES
# ============================================================

comparison_axes:
- employee input ease
- approver usability
- receipt / evidence handling
- multilingual support
- multi currency support
- iphone support
- android support
- pc support
- tablet support
- accounting / ERP integration
- accounting operations absorption
- duplicate prevention
- workflow flexibility
- secretary linkage potential
- ERP source-of-truth separation fitness

# ============================================================
# 2. RIVAL SUMMARY
# ============================================================

rivals:

  - rival_name: Rakuraku Seisan
    category: broad full-function expense platform
    strengths:
      - multilingual support is visible
      - foreign currency processing is visible
      - smartphone application support is visible
      - AI-OCR receipt intake is visible
      - duplicate application check is visible
      - approval route flexibility is visible
      - accounting software linkage is visible
    risk_to_us:
      - strong default baseline
      - difficult to beat by simple feature-count competition
    design_implication:
      - our app must not enter market without multilingual, multi currency,
        smartphone, receipt, duplicate-check, and approval baseline

  - rival_name: Jobcan Expense Reimbursement
    category: workflow-oriented practical expense platform
    strengths:
      - smartphone submit / approve support is visible
      - multilingual switching is visible
      - foreign currency reimbursement is visible
      - template / form customization is visible
      - workflow ecosystem affinity is strong
    risk_to_us:
      - strong when customer sees expense inside broader internal workflow
    design_implication:
      - our approval and routing surface must feel light but serious
      - our shared application workflow model must remain extensible

  - rival_name: Money Forward Cloud Expense
    category: accounting-connected cloud expense platform
    strengths:
      - foreign currency entry and JPY conversion are visible
      - English UI switching is visible
      - smartphone registration / submit / approve is visible
      - allocation support is visible
      - chat notification linkage is visible
      - accounting adjacency is strong
    risk_to_us:
      - strong when customer wants accounting-near operational flow
    design_implication:
      - our ERP boundary must be clear
      - our accounting handoff, allocation expansion, and notification model
        should be visible early

  - rival_name: TOKIUM Expense
    category: operations-absorbing expense platform
    strengths:
      - smartphone-based submit / approve is visible
      - AI-OCR plus operator-assisted data conversion is visible
      - accounting linkage and operational support are visible
      - strong back-office burden reduction positioning
    risk_to_us:
      - hard to beat if customer values outsourced operational relief
    design_implication:
      - we should not compete as operation outsourcing
      - we should compete as lightweight front + strong control + ERP clarity

  - rival_name: freee-related expense workflow
    category: accounting-near integrated expense style
    strengths:
      - accounting proximity is naturally strong
      - foreign currency handling is visible in adjacent support materials
      - OCR-led expense input is visible in related flows
    risk_to_us:
      - strong when customer wants accounting and expense tightly fused
    design_implication:
      - our product story must emphasize BusinessOS front usability
      - ERP remains strict source of truth

# ============================================================
# 3. WHAT MARKET BASELINE NOW REQUIRES
# ============================================================

baseline_requirements:
- multilingual support must exist from the beginning
- multi currency support must exist from the beginning
- iphone support must exist
- android support must exist
- pc support must exist
- tablet support must exist
- receipt capture strength is mandatory
- approval flow must be explicit and practical
- duplicate / suspicious re-use detection must exist
- accounting / ERP handoff visibility must exist

note:
These are not luxury differentiators.
They are market-entry baseline requirements.

# ============================================================
# 4. OUR NATURAL WIN POSITION
# ============================================================

our_natural_win_position:
- PocketSecretary-assisted expense candidate generation
- explicit BusinessOS front usability
- ERP source-of-truth separation clarity
- lightweight but audit-strong operation
- clear distinction between approval state and ERP state
- strong retry / failure visibility
- all-device support with same business meaning
- multilingual and multi currency by design, not as later patch

# ============================================================
# 5. WHERE NOT TO FIGHT DIRECTLY
# ============================================================

avoid_direct_fight:
- pure feature-count battle against full-suite incumbents
- outsourced back-office operations competition with TOKIUM style positioning
- accounting-monolith competition where ERP/source-of-truth clarity is lost

# ============================================================
# 6. IMMEDIATE DESIGN CONSEQUENCES
# ============================================================

immediate_design_consequences:
- keep multilingual and multi currency in root requirements
- add duplicate-check as explicit canonical object / state
- add receipt OCR or OCR-ready boundary
- keep approval state separate from ERP state
- design finance failure queue from the beginning
- show secretary linkage as a first-class differentiator
- show ERP publication request/result as explicit architecture objects
- preserve consistent behavior across iphone, android, pc, and tablet

# ============================================================
# 7. PRODUCT MESSAGE DRAFT
# ============================================================

product_message_draft:
ExpenseSettlement is not trying to be a heavy accounting monolith.
It is a lightweight but control-safe BusinessOS expense front that works
across iphone, android, pc, and tablet, supports multilingual and
multi currency operation, accepts secretary-assisted candidate intake,
and publishes only explicit, auditable results into ERP as the
accounting source of truth.

