# ============================================================
# BUSINESS LEGAL SUPPORT FULL DESIGN INTEGRATED
# ============================================================

status: canonical-integrated-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
owner: Boss
prepared_by: Zero

# 1. PURPOSE
This document is the integrated top-level design summary for
BusinessLegalSupport.
It does not replace the detailed layer files, but it provides one
readable source that explains the whole application at once.

# 2. POSITIONING
BusinessLegalSupport is a LifeOS-side business legal support app for:
- sole proprietors
- small business operators
- owner-led representatives

It is intentionally:
- lightweight
- owner-driven
- consultation-preparation oriented
- separated from BusinessOS / ERP official legal truth

It is NOT:
- a law firm replacement
- a formal legal opinion generator
- an enterprise legal control system
- a direct ERP legal processing app

# 3. CORE VALUE
The app exists to reduce disorder before formal consultation.

Main value:
- organize issues
- keep contract and deadline visibility together
- prepare consultation notes and question lists
- track risks
- organize counterparties
- allow explicit read-only sharing
- prepare explicit BusinessOS handoff drafts when needed

# 4. PRIMARY DOMAIN BOUNDARY
Primary schema:
- life

Boundary rules:
- BusinessLegalSupport owns lightweight owner-side legal issue organization
- BusinessOS owns formal company-side legal operating structure when needed
- ERP is out of direct scope for this app
- source data remains life-side unless a later explicit bridge is performed

# 5. MAIN DATA AGGREGATION MODEL
The app is issue-centric.

Main root:
- legal_issue

Main children:
- contract_item
- deadline_record
- counterparty
- risk_note
- consultation_record
- attached_document
- legal_checklist
- trouble_timeline
- advisor_share_record

Core design rule:
- everything meaningful is gathered around issue_id
- counterparty is reusable
- attachments may belong to issue root or specific child objects
- share never transfers ownership

# 6. MAIN USER FLOWS
A. contract management flow
- create issue
- add contract
- add counterparty
- add deadlines
- review renewal risk
- prepare consultation summary

B. trouble handling flow
- create issue
- add timeline
- attach evidence
- add risk note
- prepare consultation memo
- generate summary output

C. advisor sharing flow
- generate summary
- choose share scope
- create read-only share
- optionally revoke later

D. BusinessOS bridge flow
- identify need for formal company-side treatment
- generate handoff draft
- do not write directly to ERP

# 7. STATUS DESIGN
Issue statuses:
- draft
- active
- waiting_external_reply
- waiting_owner_action
- completed
- archived

Contract statuses:
- draft
- signed
- active
- expiring
- ended
- canceled

Deadline state:
- pending
- completed

Share lifecycle:
- active_share
- revoked_share

Important rule:
- deadline completion must not auto-close issue
- archive and delete are separate concepts
- re-share should be a new share record, not a revoked share reversal

# 8. API / PAYLOAD DIRECTION
Base path:
- /api/life/business-legal-support/v1

Design principle:
- payloads are explicit and stable
- uuid string ids
- date and datetime clearly separated
- list endpoints return items arrays
- write endpoints return saved resource views
- ERP direct API is not defined here

Main endpoint groups:
- legal-issues
- contracts
- deadlines
- counterparties
- risk-notes
- consultations
- checklists
- timeline-events
- summaries
- shares
- handoffs/businessos-draft

# 9. SCREEN DESIGN DIRECTION
Main screens:
- dashboard
- legal_issue_list
- legal_issue_detail
- contract_list
- contract_detail
- deadline_list
- counterparty_list
- consultation_prep
- summary_output
- advisor_share_view
- settings

Main UI rule:
- issue detail is the main hub
- dashboard shows urgency, not full text
- consultation surfaces must preserve disclaimer visibility
- share/export stays secondary, not the default primary action

# 10. SECURITY / ACCESS MODEL
Owner:
- full create/update/archive/soft-delete over owned records
- full summary/export/share control

Advisor_viewer:
- read-only only
- visible only when explicit share exists
- never gains edit authority
- never becomes source owner

Security rule highlights:
- deleted rows hidden from default reads
- revoked shares remove future visibility
- highly sensitive attachments should not be shared by default
- attachment access can be narrower than issue visibility

# 11. POLICY / DISCLAIMER
This app must always preserve:
- "This app is not a substitute for legal advice."
- "Final judgment must be made by the user or a qualified professional."

The app may support:
- issue summarization
- contract review viewpoints
- question drafting
- checklist support
- deadline awareness

The app may NOT:
- state final legal conclusions
- impersonate a lawyer
- claim lawful/unlawful finality
- give litigation odds

# 12. PRICING DIRECTION
Billing model:
- monthly-use application

Plan structure:
- free
- standard: 500 JPY / month
- bridge: 900 JPY / month

Commercial stance:
- free = entry
- standard = main paid plan
- bridge = stronger share / bridge usage
- no human legal support included
- support remains AI-chat only

# 13. DDL / SQL READINESS
Design-ready items already defined:
- logical table catalog
- logical table definitions
- column standard
- key and constraint policy
- timestamp / soft delete policy
- index guidance
- access-control readiness
- API contract readiness

Not yet implemented:
- exact CREATE TABLE SQL
- exact CREATE INDEX SQL
- exact RLS SQL
- actual backend implementation
- actual client implementation

# 14. CURRENT DESIGN JUDGMENT
BusinessLegalSupport is already structured enough to move into
implementation planning later.

At the current stage, the design is:
- app-scope consistent
- schema-boundary consistent
- payload-ready
- screen-field-ready
- access-control-ready
- DDL-readiness-ready

The major unresolved area is implementation detail, not product design.
