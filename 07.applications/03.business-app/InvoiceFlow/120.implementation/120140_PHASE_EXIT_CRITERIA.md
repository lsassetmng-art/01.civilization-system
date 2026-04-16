# ============================================================
# PHASE EXIT CRITERIA
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines completion conditions for each phase.

exit_criteria:

- phase_code: IF-PHASE-01
  done_when:
  - invoice authority fields are persisted
  - company scope is enforced
  - core statuses are readable and writable
  - FRONT_LOCAL and ERP_MASTER are distinguishable in API and UI

- phase_code: IF-PHASE-02
  done_when:
  - operator can create and edit FRONT_LOCAL invoice
  - invoice PDF can be generated
  - invoice list and detail are usable on phone and PC
  - send request can be recorded

- phase_code: IF-PHASE-03
  done_when:
  - operator can confirm manual payment
  - partial and difference states are reflected
  - invoice status updates correctly

- phase_code: IF-PHASE-04
  done_when:
  - confirmed payment can issue receipt
  - receipt detail and reissue audit are visible
  - receipt PDF is generated

- phase_code: IF-PHASE-05
  done_when:
  - overdue items appear in collection queue
  - collection action history can be recorded
  - next action date and promise date are visible
  - customer outstanding summary is visible

- phase_code: IF-PHASE-06
  done_when:
  - bank transactions are stored
  - candidates are listed
  - ambiguous matches require operator decision
  - confirmed bank matches update payment state

- phase_code: IF-PHASE-07
  done_when:
  - ERP_MASTER invoice reference works
  - eligible payment reflection can be requested
  - result status can be retrieved
  - retries and failures are visible and audited

- phase_code: IF-PHASE-08
  done_when:
  - saved filters work
  - top operational screens are optimized for iphone, android, tablet, and pc
  - multilingual and multicurrency review issues are closed
