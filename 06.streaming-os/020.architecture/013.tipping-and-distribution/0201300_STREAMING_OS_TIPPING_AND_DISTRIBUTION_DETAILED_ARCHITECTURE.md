# ============================================================
# STREAMING OS TIPPING AND DISTRIBUTION DETAILED ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: tipping-and-distribution
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the detailed architecture for
tipping and revenue distribution meaning in StreamingOS.

This document focuses on:
- tipping event meaning
- primary beneficiary meaning
- performer-linked optional attribution
- secondary distribution meaning
- corporate stream interpretation
- downstream linkage boundary

# ============================================================
# 2. DESIGN POSITION
# ============================================================

Tipping is a formal monetization event recorded in StreamingOS.

StreamingOS records:
- the existence of the tip
- which session it belongs to
- which principal it belongs to
- which beneficiary primarily receives it
- whether performer attribution exists
- whether secondary distribution reference exists

StreamingOS does not need to perform
final accounting execution by itself.

# ============================================================
# 3. TIPPING EVENT DEFINITION
# ============================================================

A tipping event is a monetary support action
attached to a stream session context.

A tipping event may optionally carry
message and performer-attribution meaning,
but it does not automatically alter
primary ownership of stream revenue.

# ============================================================
# 4. CORE TIPPING FIELDS
# ============================================================

Recommended tipping event fields:

- tip_event_id
- session_id
- channel_id
- program_id
- stream_principal_civilization_id
- stream_principal_type
- primary_revenue_beneficiary_civilization_id
- primary_revenue_beneficiary_type
- target_performer_participation_id
  nullable
- target_performer_civilization_id
  nullable
- target_persona_id
  nullable
- tip_amount
- tip_currency
- fee_amount
- net_amount
- tip_message
- tip_status
  one of:
  - initiated
  - authorized
  - captured
  - failed
  - refunded
  - partially_refunded
  - held
  - released
  - reversed
  - blocked

- hold_reason
- fraud_state
- payment_reference_id
- external_payment_channel_reference

# ============================================================
# 5. PRIMARY BENEFICIARY RULE
# ============================================================

Every tip must resolve to
one explicit primary revenue beneficiary.

Default rule:
primary_revenue_beneficiary_civilization_id
= session primary revenue beneficiary

Therefore:
- performer targeting does not automatically
  replace primary beneficiary
- message attribution does not automatically
  replace primary beneficiary
- visual display emphasis does not automatically
  replace primary beneficiary

# ============================================================
# 6. CORPORATE STREAM RULE
# ============================================================

For official corporate streams:

- stream principal = company
- primary revenue beneficiary = company
- tip primary beneficiary = company

Performer-directed expressions may still exist,
for example:
- tip for host
- tip for guest
- tip for singer
- tip for persona performer

But these remain attribution or secondary distribution inputs,
not primary ownership replacement.

# ============================================================
# 7. INDIVIDUAL / GROUP / AI(HUMAN) RULE
# ============================================================

For other ownership modes:

individual-owned:
- primary beneficiary = individual

group-owned:
- primary beneficiary = group

ai_human-owned:
- primary beneficiary = ai_human

Default tip beneficiary inherits
session primary revenue beneficiary.

# ============================================================
# 8. TARGET PERFORMER ATTRIBUTION RULE
# ============================================================

A tip may optionally indicate
a performer emphasis target.

Recommended meanings:
- appreciation target
- on-screen display target
- secondary distribution hint
- fan interaction meaning

This does not by itself create
primary ownership transfer.

# ============================================================
# 9. NET / FEE / HOLD INTERPRETATION
# ============================================================

StreamingOS should retain enough monetary meaning to distinguish:
- gross amount
- fee amount
- net amount
- hold amount if applicable
- refunded amount if applicable

This is necessary for:
- revenue explanation
- dashboarding
- anomaly interpretation
- downstream settlement linkage

# ============================================================
# 10. HOLD / FRAUD / BLOCK RULE
# ============================================================

Tipping may enter protective states.

Recommended protective meanings:
- held for review
- blocked for policy
- reversed for fraud
- refunded by dispute
- partially refunded

A held or blocked tip is still a formal event,
but not yet fully releasable for downstream settlement.

# ============================================================
# 11. SECONDARY DISTRIBUTION POSITION
# ============================================================

Secondary distribution means:
downstream splitting of value after primary beneficiary resolution.

Possible secondary targets:
- performer
- employee
- department
- partner
- incentive pool
- rights-sharing participant

StreamingOS may store:
- secondary_distribution_rule_id
- performer attribution reference
- distribution applicability status

StreamingOS does not need to execute
full payroll or accounting settlement itself.

# ============================================================
# 12. SECONDARY DISTRIBUTION FIELDS
# ============================================================

Recommended fields:

- secondary_distribution_rule_id
- secondary_distribution_mode
  one of:
  - none
  - performer_based
  - employee_based
  - department_based
  - partner_based
  - custom

- secondary_distribution_status
  one of:
  - none
  - pending
  - applicable
  - partially_processed
  - completed
  - cancelled

- secondary_distribution_note

# ============================================================
# 13. PERFORMER-LINKED TIPPING INTERPRETATION
# ============================================================

Performer-linked tipping should be interpreted carefully.

It may mean:
- user wanted to support a specific performer
- UI should highlight that performer
- downstream performer reward may apply
- analytics should count performer affinity

It should not mean:
- performer became stream owner
- performer became primary revenue beneficiary
- stream ownership changed retroactively

# ============================================================
# 14. DASHBOARD / ANALYTICS REQUIREMENT
# ============================================================

StreamingOS should support explanation views such as:
- total tips by session
- total tips by channel
- total tips by principal
- total tips by performer attribution
- held tips
- refunded tips
- net realized tips
- secondary distribution pending tips

This is why tipping meaning must remain explicit.

# ============================================================
# 15. DOWNSTREAM LINKAGE BOUNDARY
# ============================================================

StreamingOS canonical responsibility:
- tip event recording
- beneficiary meaning
- performer attribution meaning
- hold / refund / fraud interpretation
- distribution reference meaning

BusinessOS canonical responsibility:
- company-side operational distribution handling
- internal reward workflow
- contract-linked distribution operations

ERP canonical responsibility:
- formal accounting recognition
- payable / receivable treatment
- financial posting
- settlement completion records

# ============================================================
# 16. REFUND / REVERSAL INTERPRETATION
# ============================================================

Refund and reversal do not erase tip history.

They change financial interpretation state.

Therefore:
- captured then refunded
- held then released
- authorized then failed
- captured then reversed

must remain historically distinguishable.

# ============================================================
# 17. RIGHTS / TIPPING RELATION
# ============================================================

Tipping belongs primarily to revenue interpretation,
not directly to rights ownership.

However,
rights rules may still affect tip usage when:
- stream is blocked
- performer was not authorized
- monetization is restricted
- external platform policy imposes restrictions

Therefore,
rights state may gate realization,
but does not redefine tip event existence.

# ============================================================
# 18. CANONICAL FIXED STATEMENT
# ============================================================

Tipping is a formal monetization event in StreamingOS.

Every tip must resolve to one explicit primary revenue beneficiary.
By default,
the tip beneficiary inherits the session primary revenue beneficiary.

For official corporate streams,
the primary tip beneficiary shall be the company.

Performer-directed or performer-attributed tipping
may exist for UI, analytics, and downstream distribution purposes,
but it shall not automatically replace
primary revenue ownership.

Secondary distribution may be referenced in StreamingOS,
while downstream operational and accounting execution
may be delegated to BusinessOS and ERP.

# ============================================================
# 19. CURRENT SCOPE CLOSURE
# ============================================================

This document fixes:
- tipping event meaning
- primary beneficiary meaning
- corporate stream tipping interpretation
- performer attribution meaning
- hold / refund / fraud meaning
- secondary distribution positioning
- downstream boundary

The following remain outside this scope:
- exact payment gateway contract
- exact anti-fraud implementation
- exact settlement engine design
- exact ERP posting format
- exact UI detail
