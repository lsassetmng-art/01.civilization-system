# ============================================================
# STREAMING OS STREAMING PRINCIPAL DETAILED MODEL
# ============================================================

status: canonical-draft
system: streaming-os
domain: streaming-principal
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the detailed model of streaming principals
inside StreamingOS.

This document focuses on:
- principal identity
- performer identity
- corporate stream ownership
- subject linkage
- primary rights holder
- primary revenue beneficiary
- secondary distribution linkage

# ============================================================
# 2. MODEL OBJECTIVE
# ============================================================

StreamingOS must never confuse:
- who officially owns the stream
- who appears in the stream
- who primarily owns rights
- who primarily receives revenue
- who may receive secondary distribution

The detailed model therefore separates these meanings explicitly.

# ============================================================
# 3. CORE ENTITIES
# ============================================================

Core model concepts:

1. streaming_principal
The canonical subject that officially owns the stream.

2. performer_participation
A record of who appears or participates in the stream.

3. primary_rights_holder
The canonical subject that primarily owns publication
and reuse rights.

4. primary_revenue_beneficiary
The canonical subject that primarily receives stream revenue.

5. secondary_distribution_rule
A rule that defines downstream performer / employee /
department / partner distribution after primary ownership.

# ============================================================
# 4. STREAMING PRINCIPAL RULE
# ============================================================

A streaming principal must always be
a formal Civilization subject.

Allowed principal subject types:
- individual
- group
- company
- ai_human

Disallowed principal subject types:
- persona
- ai_robot
- anonymous
- external unregistered subject

# ============================================================
# 5. PRINCIPAL IDENTIFIER MODEL
# ============================================================

Recommended principal model fields:

- stream_principal_id
  internal primary identifier of the stream principal record

- stream_principal_civilization_id
  Civilization ID of the canonical principal subject

- stream_principal_type
  one of:
  - individual
  - group
  - company
  - ai_human

- stream_principal_status
  one of:
  - pending
  - active
  - suspended
  - banned
  - archived

- stream_principal_origin_type
  one of:
  - native
  - imported_existing
  - system_generated

- stream_principal_display_name
  canonical display name used in StreamingOS

# ============================================================
# 6. PRINCIPAL OWNERSHIP MEANING
# ============================================================

stream_principal_civilization_id answers:

- whose official stream is this
- under which canonical subject is this stream aggregated
- under which subject are rights and revenue primarily grouped
- which subject is treated as the principal for governance

This field must remain stable and explicit.

# ============================================================
# 7. PERFORMER MODEL
# ============================================================

A performer is a participant in stream expression,
not automatically the owner of the stream.

Recommended performer participation fields:

- performer_participation_id
- session_id
- performer_subject_kind
  one of:
  - individual
  - group
  - company_representative
  - ai_human
  - persona
  - ai_robot

- performer_civilization_id
  nullable for non-final-subject performers if needed,
  but preferred when an attached formal subject exists

- performer_persona_id
  nullable, used when performer is Persona

- performer_ai_robot_id
  nullable, used when performer is Ai(robot)

- performer_role
  one of:
  - host
  - co_host
  - guest
  - narrator
  - operator
  - singer
  - avatar_actor
  - support

- performer_affiliation_civilization_id
  company or group affiliation when relevant

- performer_participation_status
  one of:
  - scheduled
  - active
  - removed
  - blocked
  - completed

# ============================================================
# 8. PERFORMER BOUNDARY RULE
# ============================================================

Performer participation does not automatically change:
- stream ownership
- primary rights ownership
- primary revenue ownership

A performer may appear without becoming the principal.

This is especially important for:
- employee participation in company streams
- guest appearances
- Persona participation
- Ai(robot) participation

# ============================================================
# 9. CORPORATE STREAM MODEL
# ============================================================

For official company streams:

- stream_principal_type = company
- stream_principal_civilization_id = company Civilization ID
- primary_rights_holder_civilization_id = company Civilization ID
- primary_revenue_beneficiary_civilization_id = company Civilization ID

Company-affiliated participants are stored only
through performer participation records,
unless separately granted ownership roles.

# ============================================================
# 10. INDIVIDUAL STREAM MODEL
# ============================================================

For individual streams:

- stream_principal_type = individual
- stream_principal_civilization_id = individual Civilization ID
- primary_rights_holder_civilization_id = individual Civilization ID by default
- primary_revenue_beneficiary_civilization_id = individual Civilization ID by default

Affiliation may still exist as metadata,
but affiliation does not override ownership automatically.

# ============================================================
# 11. AI(HUMAN) STREAM MODEL
# ============================================================

For Ai(human)-owned streams:

- stream_principal_type = ai_human
- stream_principal_civilization_id = Ai(human) Civilization ID
- primary_rights_holder_civilization_id = Ai(human) Civilization ID by default
- primary_revenue_beneficiary_civilization_id = Ai(human) Civilization ID by default

Ai(human) is treated as a formal Civilization subject,
not as a secondary technical resource.

# ============================================================
# 12. GROUP STREAM MODEL
# ============================================================

For group-owned streams:

- stream_principal_type = group
- stream_principal_civilization_id = group Civilization ID
- primary_rights_holder_civilization_id = group Civilization ID by default
- primary_revenue_beneficiary_civilization_id = group Civilization ID by default

Internal member split is not the primary concern of StreamingOS.
It is handled by secondary distribution rules.

# ============================================================
# 13. RIGHTS HOLDER MODEL
# ============================================================

Recommended fields:

- primary_rights_holder_civilization_id
- rights_holder_type
  one of:
  - individual
  - group
  - company
  - ai_human

- rights_holder_override_reason
  used when primary rights holder differs from stream principal

Default rule:
primary_rights_holder_civilization_id
= stream_principal_civilization_id

Override is allowed only by explicit policy.

# ============================================================
# 14. PRIMARY REVENUE BENEFICIARY MODEL
# ============================================================

Recommended fields:

- primary_revenue_beneficiary_civilization_id
- primary_revenue_beneficiary_type
  one of:
  - individual
  - group
  - company
  - ai_human

- revenue_beneficiary_override_reason
  used when primary revenue beneficiary differs from stream principal

Default rule:
primary_revenue_beneficiary_civilization_id
= stream_principal_civilization_id

Override is allowed only by explicit policy.

# ============================================================
# 15. SECONDARY DISTRIBUTION MODEL
# ============================================================

StreamingOS may record secondary distribution reference,
but does not need to execute final accounting itself.

Recommended fields:

- secondary_distribution_rule_id
- secondary_distribution_exists
- secondary_distribution_status
  one of:
  - none
  - planned
  - active
  - closed

Possible downstream secondary distribution targets:
- performer
- employee
- department
- partner subject
- incentive pool

Downstream business execution may be delegated to:
- BusinessOS
- ERP

# ============================================================
# 16. RECOMMENDED SESSION OWNERSHIP FIELDS
# ============================================================

At session level, StreamingOS should keep at least:

- session_id
- channel_id
- program_id
- stream_principal_civilization_id
- stream_principal_type
- primary_rights_holder_civilization_id
- primary_revenue_beneficiary_civilization_id
- secondary_distribution_rule_id
- corporate_stream_flag
- individual_stream_flag
- affiliated_company_civilization_id
- ownership_mode
  one of:
  - corporate_official
  - individual_owned
  - group_owned
  - ai_human_owned

# ============================================================
# 17. DEFAULT OWNERSHIP RULES
# ============================================================

Default rule A:
If ownership_mode = corporate_official,
then:
- principal = company
- primary rights holder = company
- primary revenue beneficiary = company

Default rule B:
If ownership_mode = individual_owned,
then:
- principal = individual
- primary rights holder = individual
- primary revenue beneficiary = individual

Default rule C:
If ownership_mode = group_owned,
then:
- principal = group
- primary rights holder = group
- primary revenue beneficiary = group

Default rule D:
If ownership_mode = ai_human_owned,
then:
- principal = ai_human
- primary rights holder = ai_human
- primary revenue beneficiary = ai_human

# ============================================================
# 18. PERSONA / AI(ROBOT) ATTACHMENT RULE
# ============================================================

Persona and Ai(robot) may be attached only through
performer or expression participation structures.

They do not become standalone final principals.

Therefore:
- Persona may be a host-like performer
- Ai(robot) may be a performer or operator-like participant
- but principal / primary rights / primary revenue
  must remain assigned to a formal Civilization subject

# ============================================================
# 19. GOVERNANCE INTERPRETATION RULE
# ============================================================

When a dispute, suspension, or audit event occurs,
StreamingOS governance must first resolve:

- who is the stream principal
- who is the primary rights holder
- who is the primary revenue beneficiary
- who merely performed

This rule prevents confusion between appearance and ownership.

# ============================================================
# 20. CANONICAL FIXED STATEMENT
# ============================================================

StreamingOS shall explicitly separate stream principal,
performer,
primary rights holder,
and primary revenue beneficiary.

A stream principal must always be a formal Civilization subject
with a valid Civilization ID.

Persona and Ai(robot) may participate as performers,
but they shall not become standalone final stream principals.

For official company streams,
the company Civilization ID shall be used as:
- stream principal
- primary rights holder
- primary revenue beneficiary

Performer participation by company members or other actors
shall not automatically override stream ownership.

Secondary performer or employee distribution may be recorded,
but downstream execution may be delegated to BusinessOS and ERP.
