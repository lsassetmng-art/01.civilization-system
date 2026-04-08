# ============================================================
# EXPENSE SETTLEMENT OVERVIEW
# ============================================================

status: canonical
system: applications
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
ExpenseSettlement is a BusinessOS-side lightweight expense reimbursement
front application for draft, submission, approval, receipt handling,
and ERP-connected settlement publication.

positioning:
- BusinessOS simplified ERP front
- ERP is the accounting source of truth
- local draft / review / retry are app responsibilities
- formal accounting posting / payment / ledger finalization belong to ERP

core_principles:
- fast field input
- explicit submit only
- explicit ERP publication only
- offline-safe drafting
- receipt-first evidence handling
- approval state and ERP state are separated
- fail-closed on policy / authority / integrity uncertainty

primary_scope:
- expense draft
- expense item entry
- receipt attachment
- submit / withdraw / resubmit
- approval / rejection / return
- ERP publication request / result
- retry / pending operation management
- secretary-assisted candidate intake

non_goals:
- direct ERP DB write
- final accounting authority inside app
- silent automatic posting to ERP
- bypass of approval or policy checks
