# ============================================================
# COMPETITIVE INTERFACE REQUIREMENTS
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines interface requirements derived from competitive positioning.

# ============================================================
# 1. VISIBILITY REQUIREMENTS
# ============================================================

visibility_requirements:
- invoice authority badge must be large and obvious
- ERP non-eligible front invoice must be clearly marked
- overdue state must be visible without entering detail screens
- collection priority must be visible in list and dashboard contexts
- payment confirmation route must be visible in history

# ============================================================
# 2. ACTION REQUIREMENTS
# ============================================================

action_requirements:
- invoice detail must allow direct transition to payment confirmation
- unpaid invoice detail must allow direct transition to collection handling
- confirmed payment detail must allow direct transition to receipt issuance
- operator must not need deep navigation to understand next action

# ============================================================
# 3. DASHBOARD REQUIREMENTS
# ============================================================

dashboard_requirements:
- dashboard must show unpaid and overdue workload
- dashboard must show priority collection queue
- dashboard must show pending bank-match review
- dashboard must show recent receipt issuance activity
- dashboard must work on smartphone, tablet, and PC layouts

# ============================================================
# 4. LIST REQUIREMENTS
# ============================================================

list_requirements:
- invoice list must show authority type
- invoice list must show ERP reflection eligibility
- invoice list must show overdue days
- invoice list must show outstanding amount
- collection list must show next action date
- collection list must show priority reason or priority rank

# ============================================================
# 5. DOCUMENT REQUIREMENTS
# ============================================================

document_requirements:
- invoice PDF actions must be easy to locate
- receipt PDF actions must be easy to locate
- multilingual expansion must not collapse key controls
- multicurrency display must remain unambiguous
