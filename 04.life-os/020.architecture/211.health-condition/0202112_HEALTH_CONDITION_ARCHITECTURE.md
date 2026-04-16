# ============================================================
# HEALTH CONDITION ARCHITECTURE
# ============================================================

status: canonical-draft
system: life-os
layer: architecture
domain: health-condition
owner: Boss
prepared_by: Zero

purpose:
Defines the canonical architecture for condition, symptom, medication,
recovery, visit recording, and warning-sign support in LifeOS.

summary:
LifeOS health-condition is not a diagnosis system.
It is a life-state support domain that records user-observed condition facts,
normalizes them, evaluates lightweight signals,
and connects them to safe reminders, reviews, and recovery support.

# ============================================================
# 1. ARCHITECTURAL ROLE
# ============================================================

health-condition is responsible for:
- recording user-observed physical condition
- recording symptom descriptions
- recording medication intake facts
- recording visit / appointment facts
- recording recovery-state observations
- generating lightweight life support signals
- feeding review, reminder, and alert domains

health-condition is not responsible for:
- diagnosis
- treatment determination
- clinical judgment
- replacing medical professionals
- forcing high-confidence conclusions from weak user signals

# ============================================================
# 2. CORE COMPONENTS
# ============================================================

1. condition capture
- stores body condition reports
- stores qualitative severity
- stores onset and duration if known

2. symptom capture
- stores symptom type and user description
- stores perceived severity and repetition
- stores possible triggers if the user knows them

3. medication record
- stores medication fact records
- stores dose timing fact records
- stores adherence-related life facts

4. visit record
- stores clinic / hospital visit facts
- stores appointment schedule and outcome notes
- stores follow-up reminders

5. recovery tracker
- stores recovery actions and observed effects
- supports trend review

6. health signal evaluator
- derives lightweight support signals
- never outputs diagnosis
- only outputs LifeOS-safe guidance states

# ============================================================
# 3. DATA MOVEMENT
# ============================================================

input:
- manual input
- check-in derived input
- reminder follow-up input
- optional device-linked measurements routed through normalized measurement paths

processing:
- normalize fact structure
- attach timestamps
- attach visibility scope
- evaluate condition-related signals
- queue review or alert when thresholds are met

output:
- daily summary input
- weekly review input
- reminder candidates
- alert candidates
- safe assistant explanation basis

# ============================================================
# 4. BOUNDARIES
# ============================================================

with PersonaOS:
- PersonaOS may express concern or support tone
- health-condition remains the fact and signal source

with BusinessOS:
- no business responsibility belongs here

with sensitive-life-boundary:
- all health-condition records are treated as sensitive life data by default

with risk-and-alert:
- repeated warning signs may become alert candidates
- alert generation must still obey safety and privacy policy

# ============================================================
# 5. REQUIRED SUB-MODELS
# ============================================================

- life symptom
- life medication
- life recovery
- life condition severity
- life visit record
- life warning sign
- life body state trend
- life condition trigger

# ============================================================
# 6. ARCHITECTURAL PRINCIPLES
# ============================================================

- fact first
- interpretation second
- diagnosis never
- explanation must remain user-readable
- sensitivity must be preserved
- escalation must be bounded
