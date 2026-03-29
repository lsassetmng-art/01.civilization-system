# ============================================================
# CIVILIZATION LIFE EVENT DETAILED UI AND PROGRESSION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: civilization-life-event-detailed-ui-and-progression
component: civilization-life-event-detailed-ui-and-progression

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical detailed UI,
progression model,
auto progression rule,
and intervention architecture
for civilization-internal life events.

This architecture is for Civilization life events,
not for LifeOS real-world life records.


# ============================================================
# 2. TARGET
# ============================================================

This architecture applies to life events
experienced by Civilization-internal actors:

- user_persona
- ai_human

Ai_robot may participate only where
the event type explicitly allows support,
care,
service,
or facility-side execution.


# ============================================================
# 3. EVENT SCOPE
# ============================================================

Civilization life events include:

- birth and family formation
- schooling
- qualification
- employment
- promotion
- transfer
- marriage
- childbirth
- migration
- housing change
- illness and recovery
- crime and arrest
- political participation
- military service
- poverty and bankruptcy
- retirement
- death-related progression


# ============================================================
# 4. CORE PRINCIPLE
# ============================================================

Life events must not be flat notifications only.

Each important life event may expose:

- conditions
- current phase
- choice or intervention opportunities
- actor and household effects
- social and institutional bindings
- progression outcomes

The canonical loop is:

event trigger
-> event detail UI
-> auto progression or actor response
-> observation
-> intervention where allowed
-> outcome resolution


# ============================================================
# 5. UI PRINCIPLE
# ============================================================

Life event UI must make progression visible.

The user must be able to inspect:

- why the event happened
- what phase it is currently in
- what conditions remain
- what choices exist
- what institutions or actors are involved
- what risks and outcomes are expected


# ============================================================
# 6. PROGRESSION PRINCIPLE
# ============================================================

Life events may be:

- instant
- phased
- long-running
- branching
- repeatable
- one-time critical

Phased events must expose explicit progression states.


# ============================================================
# 7. INTERVENTION PRINCIPLE
# ============================================================

Intervention must be explicit,
rule-bound,
and event-type aware.

Intervention may include:

- applying for something
- paying fees
- using an item
- asking household support
- changing route
- selecting institution
- escalating effort
- withdrawing
- postponing
- appealing
- emergency response

Not all life events allow intervention.


# ============================================================
# 8. SOCIAL BINDING PRINCIPLE
# ============================================================

Life events must connect to Civilization systems such as:

- household
- school
- qualification
- company
- city
- nation
- public office
- military
- hospital
- police
- court
- welfare
- marketplace


# ============================================================
# 9. FINAL RULE
# ============================================================

Civilization life events
must be progression-aware,
UI-visible,
system-connected,
and capable of meaningful intervention.
