# ============================================================
# INVOICEFLOW FORMAL REVIEW LEDGER
# ============================================================

status: formal-review
layer: application-common-components
domain: source-group-formal-review
source_group: InvoiceFlow
owner: Boss
prepared_by: Zero

judgment_types:
- adopt
- hold
- reject
- absorb_into_existing_family

# ============================================================
# 1. FORMAL REVIEW RESULTS
# ============================================================

review_entries:

  - candidate_name: Document PDF Generation Core
    preliminary_owner: BusinessOS common
    judgment: adopt
    target_family:
      - document-pdf-generation family
    reason:
      Strong reusable document-output core
      across invoice/receipt/estimate/document apps.
    next_action:
      promote to detailed ledger/matrix/official adopted section

  - candidate_name: Document Send Request / Delivery Tracking Core
    preliminary_owner: BusinessOS common
    judgment: hold
    target_family:
      - document-send/delivery-tracking family
    reason:
      Strong candidate, but overlaps with publication/send families.
    next_action:
      hold for later reconciliation

  - candidate_name: Bank Transaction Import / Match Candidate Core
    preliminary_owner: ERP common
    judgment: adopt
    target_family:
      - bank-transaction-match family
    reason:
      Reusable bank-import and candidate-matching responsibility
      with strong finance/ERP reuse.
    next_action:
      promote to detailed ledger/matrix/official adopted section

  - candidate_name: Manual Payment / Receipt Confirmation Core
    preliminary_owner: BusinessOS common
    judgment: adopt
    target_family:
      - manual-payment-receipt-confirmation family
    reason:
      Reusable exception/manual confirmation surface
      beyond invoice-only scenarios.
    next_action:
      promote to detailed ledger/matrix/official adopted section

  - candidate_name: Simple Reconciliation Core
    preliminary_owner: ERP common
    judgment: hold
    target_family:
      - reconciliation family
    reason:
      Valuable but needs tighter boundary against ERP master reconciliation.
    next_action:
      hold for later reconciliation

  - candidate_name: Receipt Issuance Core
    preliminary_owner: BusinessOS common
    judgment: adopt
    target_family:
      - receipt-issuance family
    reason:
      Clear reusable document issuance family
      beyond InvoiceFlow.
    next_action:
      promote to detailed ledger/matrix/official adopted section

  - candidate_name: Collection Action / Follow-up History Core
    preliminary_owner: BusinessOS common
    judgment: adopt
    target_family:
      - collection-followup-history family
    reason:
      Reusable follow-up/action-history family
      beyond receivables only.
    next_action:
      promote to detailed ledger/matrix/official adopted section

  - candidate_name: Priority Queue / Work Ranking Core
    preliminary_owner: application common
    judgment: adopt
    target_family:
      - priority-queue-work-ranking family
    reason:
      Reusable priority queue structure
      for ranked work handling across apps.
    next_action:
      promote to detailed ledger/matrix/official adopted section

  - candidate_name: Customer Outstanding Summary Core
    preliminary_owner: ERP common
    judgment: hold
    target_family:
      - customer-outstanding-summary family
    reason:
      Strong ERP-facing candidate, but semantics need tighter company-scope review.
    next_action:
      hold for later reconciliation

  - candidate_name: Shared ERP Reflection Request Core
    preliminary_owner: BusinessOS common
    judgment: adopt
    target_family:
      - ERP-reflection-request family
    reason:
      Strong reusable request/result boundary
      for ERP-linked apps.
    next_action:
      promote to detailed ledger/matrix/official adopted section

  - candidate_name: Authority Badge / Master Boundary Display Core
    preliminary_owner: BusinessOS common
    judgment: adopt
    target_family:
      - master-boundary-display family
    reason:
      Reusable boundary-visibility family
      for FRONT_LOCAL / ERP_MASTER-like distinctions.
    next_action:
      promote to detailed ledger/matrix/official adopted section

  - candidate_name: Multi-language / Multi-currency Document Display Core
    preliminary_owner: Civilization common
    judgment: absorb_into_existing_family
    target_family:
      - multilingual family
      - multicurrency family
      - document-display family
    reason:
      Strong but already broadly represented
      by multilingual/multicurrency families.
    next_action:
      keep as reinforcing evidence only

summary_counts:
  adopt: 8
  hold: 3
  reject: 0
  absorb_into_existing_family: 1

adopted_candidates:
- Document PDF Generation Core
- Bank Transaction Import / Match Candidate Core
- Manual Payment / Receipt Confirmation Core
- Receipt Issuance Core
- Collection Action / Follow-up History Core
- Priority Queue / Work Ranking Core
- Shared ERP Reflection Request Core
- Authority Badge / Master Boundary Display Core

held_candidates:
- Document Send Request / Delivery Tracking Core
- Simple Reconciliation Core
- Customer Outstanding Summary Core

absorbed_candidates:
- Multi-language / Multi-currency Document Display Core

final_judgment:
InvoiceFlow formal review is complete at the first-pass level.

# ============================================================
