# ============================================================
# APPROVED BUSINESS DECISIONS POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Records approved business decisions that close prior open issues.

approved_decisions:

- decision_code: IF-APPROVED-001
  topic: receipt numbering format
  decision:
  - RCT-YYYYMMDD-serial
  examples:
  - RCT-20260413-0001
  - RCT-20260413-0002

- decision_code: IF-APPROVED-002
  topic: invoice PDF authority footer
  decision:
  - FRONT_LOCAL invoice PDF includes authority note
  - ERP_MASTER invoice PDF does not require the same note by default

- decision_code: IF-APPROVED-003
  topic: bank integration launch strategy
  decision:
  - initial launch uses CSV/file import first
  - API integration is later-phase expansion

- decision_code: IF-APPROVED-004
  topic: customer master source of truth
  decision:
  - ERP contract present: ERP is customer master authority
  - ERP contract absent: BusinessOS/application-side customer operation is allowed

- decision_code: IF-APPROVED-005
  topic: default send channels
  decision:
  - email
  - manual handoff
  - share link is optional later expansion

- decision_code: IF-APPROVED-006
  topic: post-send correction policy
  decision:
  - core invoice facts are locked after send
  - monetary/detail/customer/due-date/currency/language changes require cancel and recreate
  - non-core memo-like fields may be corrected under policy

- decision_code: IF-APPROVED-007
  topic: receipt reissue display rule
  decision:
  - reissue creates a new receipt number
  - prior receipt linkage is mandatory
  - reissued receipts should remain distinguishable

- decision_code: IF-APPROVED-008
  topic: multicurrency aggregation rule
  decision:
  - no implicit cross-currency aggregation
  - summary visibility is currency-separated by default

- decision_code: IF-APPROVED-009
  topic: language default priority
  decision:
  - customer preferred language
  - actor preference
  - tenant default
  - system default

- decision_code: IF-APPROVED-010
  topic: receipt issuing authority interpretation
  decision:
  - FRONT_LOCAL receipt issuance is application-led
  - ERP_MASTER receipt interpretation follows ERP-side authority policy where relevant
