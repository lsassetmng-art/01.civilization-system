# ============================================================
# IMPLEMENTATION ROADMAP
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the recommended implementation roadmap for InvoiceFlow.

roadmap_principles:
- implement authority boundary first
- implement state-bearing core tables before UI polish
- implement FRONT_LOCAL flow before ERP reflection edge cases
- implement manual confirmation before bank-linked confirmation automation
- implement receipt issuance after payment confirmation is stable
- implement collection management as first-class, not as last-minute add-on
- keep multilingual, multicurrency, and multi-device assumptions from phase start

implementation_order:
1. authority and base persistence
2. front invoice core flow
3. manual payment confirmation
4. receipt issuance
5. collection dashboard and collection actions
6. bank transaction import and bank match review
7. ERP payment reflection
8. advanced refinement and operator optimization
