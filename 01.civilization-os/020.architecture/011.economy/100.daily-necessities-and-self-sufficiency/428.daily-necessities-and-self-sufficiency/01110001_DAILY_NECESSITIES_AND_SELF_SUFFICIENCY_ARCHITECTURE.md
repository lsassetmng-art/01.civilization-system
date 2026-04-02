# ============================================================
# DAILY NECESSITIES AND SELF SUFFICIENCY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: daily-necessities-and-self-sufficiency
component: daily-necessities-and-self-sufficiency

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical architecture
for food and daily necessities auto-purchase,
self-sufficiency,
small-scale agriculture,
small-scale livestock,
egg production,
dairy production,
and surplus sales
inside Civilization.

This architecture defines:

- auto-purchase behavior for essentials
- national-currency based minimum-life purchase
- user support via CIV_CASH
- self-sufficiency production routes
- household production and local sales routes
- nation-sensitive welfare and ration differences


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Food and daily necessities
must not become tedious manual chores
for normal users.

Therefore:

- routine essential consumption is auto-managed by default
- self-sufficiency reduces market dependency
- surplus production may become household income
- nation rules may alter welfare,
  ration,
  subsidy,
  and purchasing behavior


# ============================================================
# 3. ACTOR PRINCIPLE
# ============================================================

Normal essential-consumption subjects are:

- user_persona
- ai_human

Ai_robot is not a normal food-consumption subject,
but may perform:

- proxy purchase
- delivery
- stock refill
- household support execution
- facility support execution


# ============================================================
# 4. PURCHASE PRINCIPLE
# ============================================================

Minimum survival auto-purchase
uses national_currency as canonical base rule.

CIV_CASH may be used
as explicit user-support assistance,
not as the default ordinary daily auto-purchase currency.


# ============================================================
# 5. SELF SUFFICIENCY PRINCIPLE
# ============================================================

Self-sufficiency may include:

- crops
- vegetables
- fruit
- eggs
- milk
- meat
- honey
- fish
- preserved foods

These may be used for:

- household self-consumption
- local sale
- neighborhood exchange
- emergency shortage resilience


# ============================================================
# 6. FINAL RULE
# ============================================================

Daily life essentials
must be convenient by default,
but still capable of producing
economic,
social,
and survival gameplay.
