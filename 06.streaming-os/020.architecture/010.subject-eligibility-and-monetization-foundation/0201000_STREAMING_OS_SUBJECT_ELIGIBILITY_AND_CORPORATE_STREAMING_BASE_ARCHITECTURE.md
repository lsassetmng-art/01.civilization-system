# ============================================================
# STREAMING OS SUBJECT / ELIGIBILITY / CORPORATE STREAMING
# BASE ARCHITECTURE
# ============================================================

status: canonical-draft
system: streaming-os
domain: subject-eligibility-and-monetization-foundation
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the foundational design of StreamingOS
for:
- streaming subject qualification
- Civilization ID requirements
- company-based streaming ownership
- YouTube push positioning
- tipping positioning
- primary rights and primary revenue ownership

This document fixes the base rules only.
Detailed lifecycle, UI, audit flow, settlement detail,
and implementation detail are outside this scope.

# ============================================================
# 2. STREAMING OS DEFINITION
# ============================================================

StreamingOS is the canonical OS of streaming activities
performed by formally recognized subjects inside Civilization.

StreamingOS manages:
- channels
- programs
- streaming sessions
- performer participation
- audience events
- archive assets
- clip assets
- external video publication linkage
- tipping events
- streaming rights state
- streaming revenue state

StreamingOS is not only a live-stream execution layer.
It is also the canonical management layer for
post-stream archive handling,
external publication linkage,
and monetization event recording.

# ============================================================
# 3. CANONICAL SUBJECT RULE
# ============================================================

Only formal subjects that possess a Civilization ID
may become streaming principals in StreamingOS.

Eligible streaming principals:
- Civilization individual
- Civilization group subject
- Civilization company
- Civilization Ai(human)

Ineligible streaming principals:
- external non-registered subjects
- anonymous subjects
- temporary subjects without Civilization registration
- any existence without Civilization ID

The canonical qualification rule is:

streaming principal eligibility
= formal Civilization subject
+ valid Civilization ID
+ active subject status
+ no streaming suspension
+ required permission satisfaction

# ============================================================
# 4. CIVILIZATION ID PRINCIPLE
# ============================================================

All formal subjects acting inside Civilization
must possess a Civilization ID.

This includes:
- human
- Ai(human)
- existing company
- newly created company
- group subject

Civilization ID is a formal internal Civilization subject ID.
It is automatically assigned by the system
when formal registration is completed.

Assignment principle:
- human:
  automatically assigned at Civilization participation registration
- Ai(human):
  automatically assigned at system registration
- existing company:
  automatically assigned at Civilization onboarding registration
- newly created company:
  automatically assigned at company establishment completion
- group subject:
  automatically assigned at group formalization completion

# ============================================================
# 5. ENTREPRENEURSHIP RULE
# ============================================================

To establish a company inside Civilization,
the founding subject must already be
a formal subject with a Civilization ID.

Eligible founders:
- human
- Ai(human)

After establishment,
the company becomes an independent Civilization subject
and receives its own Civilization ID.

This allows the system to track:
- who founded the company
- which company exists as an independent subject
- who acts as representative
- which subject becomes the streaming principal
- which subject becomes the primary revenue beneficiary
- which subject becomes the primary rights holder

# ============================================================
# 6. EXISTING COMPANY / AI(HUMAN) REGISTRATION RULE
# ============================================================

Existing companies and Ai(human) are treated as
formal Civilization subjects after registration.

Principles:
- an existing company may pre-exist outside Civilization
- once onboarded into Civilization,
  it becomes a formal internal subject
- at formal onboarding completion,
  the system automatically assigns a Civilization ID

- an Ai(human) may be created or introduced by system processes
- once formally registered,
  it becomes a formal internal subject
- at formal registration completion,
  the system automatically assigns a Civilization ID

Civilization ID assignment is automatic,
but subject activation status may still be controlled separately.

# ============================================================
# 7. SUBJECT ROLE SEPARATION
# ============================================================

StreamingOS must separate at least
the following four meanings:

1. streaming principal
Who owns the stream as the official broadcasting subject.

2. performer
Who appears, speaks, acts, or participates in the stream.

3. primary rights holder
Who primarily owns publication,
archive,
clip,
and reuse rights.

4. primary revenue beneficiary
Who primarily receives tipping,
video-related revenue,
or stream-related monetary result.

These four meanings do not need to be the same subject.

# ============================================================
# 8. PERSONA / AI(ROBOT) POSITION
# ============================================================

Persona and Ai(robot) may participate as performers,
but they are not treated as stand-alone final streaming principals.

Formal final principal layer:
- human
- Ai(human)
- company
- group subject

Performer-only or dependent-expression layer:
- Persona
- Ai(robot)

Therefore:
- Persona may appear in streams
- Ai(robot) may appear in streams
- but legal, economic, governance, and suspension responsibility
  must remain attached to a formal Civilization subject

This rule stabilizes:
- rights attribution
- revenue attribution
- auditability
- suspension control
- company affiliation rules

# ============================================================
# 9. CORPORATE STREAMING PRINCIPLE
# ============================================================

When streaming is performed as a company-affiliated stream,
the streaming principal Civilization ID
must be the company Civilization ID.

Corporate official stream principle:
- streaming principal = company
- primary revenue beneficiary = company
- primary rights holder = company
- performers = affiliated humans / affiliated Ai(human) /
               permitted Persona / permitted Ai(robot)

This makes the stream easier to understand operationally because:
- naming becomes clear
- aggregation becomes easy
- revenue becomes easy to calculate
- rights organization becomes easier
- downstream linkage to BusinessOS and ERP becomes stable

# ============================================================
# 10. COMPANY STREAM VS INDIVIDUAL STREAM
# ============================================================

Company affiliation and stream ownership are separate meanings.

Case A:
Corporate official stream
- principal = company Civilization ID
- performer = company member or permitted participant
- primary revenue beneficiary = company
- primary rights holder = company

Case B:
Individual stream by a company-affiliated member
- principal = individual Civilization ID
- performer = the same individual or invited participants
- primary revenue beneficiary = individual
- rights holder = individual or separately defined holder
- company affiliation may be retained as an attribute,
  but ownership does not automatically become corporate

Therefore,
"appears as company member"
and
"streams under company ownership"
must remain separate design meanings.

# ============================================================
# 11. YOUTUBE PUSH POSITIONING
# ============================================================

Video assets remain canonically owned by StreamingOS.
Approved content may be pushed to YouTube.

Principle:
- canonical asset ownership = StreamingOS
- external publication target = YouTube among possible targets

StreamingOS-side management responsibility includes:
- archive asset
- clip asset
- publication target
- publication setting
- publication visibility state
- push job state
- push result
- retry state
- failure reason
- external video identifier

StreamingOS is therefore responsible not only for streaming,
but also for canonical post-stream publication linkage.

# ============================================================
# 12. TIPPING POSITIONING
# ============================================================

Tipping is treated as a formal monetization event in StreamingOS.

A tipping event minimally carries:
- target session
- target streaming principal
- optionally target performer
- amount
- message
- currency
- fee
- refund state
- primary revenue beneficiary
- distribution rule reference
- hold state
- fraud or anomaly state

Corporate official stream principle:
- primary tipping beneficiary = company

Performer compensation,
internal incentives,
and further distribution are secondary distributions,
not primary stream ownership changes.

# ============================================================
# 13. PRIMARY RIGHTS / PRIMARY REVENUE PRINCIPLE
# ============================================================

For corporate official streams,
the default principle is:

Primary rights:
- channel rights holder = company
- program rights holder = company
- archive rights holder = company
- external publication principal = company

Primary revenue:
- tipping primary beneficiary = company
- external video revenue primary beneficiary = company
- stream-linked monetization primary beneficiary = company

Secondary distribution may later split value to:
- performers
- employees
- departments
- partner entities
- incentive pools

StreamingOS may record secondary distribution references,
while BusinessOS and ERP may handle downstream business execution
and accounting finalization.

# ============================================================
# 14. STREAMING ELIGIBILITY BASE CONDITIONS
# ============================================================

A subject may stream only if all required base conditions are met.

Base conditions:
- valid Civilization ID exists
- subject is a formal Civilization subject
- subject status is active
- no stream suspension exists
- no ban or restriction blocks streaming
- required permission is satisfied
- for corporate streams,
  company-side permission and ownership conditions are satisfied

Civilization ID alone is not sufficient.
Formal active eligibility is required.

# ============================================================
# 15. OS BOUNDARY
# ============================================================

CivilizationOS canonical responsibility:
- subject existence definition
- Civilization ID
- human / Ai(human) / company / group subject classification
- company establishment existence layer

PersonaOS canonical responsibility:
- Persona identity meaning
- Persona expression meaning
- Persona usage conditions

StreamingOS canonical responsibility:
- streaming activities
- stream ownership
- performer participation
- audience events
- archive assets
- clip assets
- YouTube push linkage
- tipping events
- streaming rights state
- streaming revenue state

BusinessOS canonical responsibility:
- contracts
- internal company operations
- company-side distribution operations
- company AI worker operations

ERP canonical responsibility:
- official accounting
- receivables / payables
- revenue recognition
- payment recognition
- final financial treatment

# ============================================================
# 16. CANONICAL FIXED STATEMENT
# ============================================================

StreamingOS is the canonical OS for streaming activities
performed by formal subjects with Civilization IDs.

Formal subjects include:
- individual
- group subject
- company
- Ai(human)

Humans and Ai(human) may establish companies
only as formal subjects possessing Civilization IDs.
After establishment or onboarding,
a company becomes an independent Civilization subject
with its own Civilization ID.

When streaming is performed as a company-affiliated official stream,
the streaming principal Civilization ID
shall be the company Civilization ID.
Company-affiliated members are recorded as performers,
but the primary rights holder
and primary revenue beneficiary
of the official company stream
shall in principle be the company.

Video assets are canonically managed by StreamingOS,
and approved content may be pushed to YouTube.

Tipping is treated as a formal monetization event in StreamingOS
and may be linked downstream to BusinessOS and ERP
with secondary distribution information when necessary.

Persona and Ai(robot) may participate as performers,
but they are not treated as stand-alone final streaming principals.
Their participation must remain attached
to a formal Civilization subject.

# ============================================================
# 17. CURRENT SCOPE CLOSURE
# ============================================================

This document fixes the following foundation:
- streaming subject rule
- Civilization ID rule
- company-stream ownership rule
- YouTube push positioning
- tipping positioning
- primary rights and primary revenue principle

The following are intentionally not fixed yet:
- detailed principal data model
- session lifecycle states
- detailed YouTube push flow
- detailed tipping distribution flow
- UI details
- violation / suspension / audit detail
- settlement implementation detail

This is an intentional foundation closure point.
