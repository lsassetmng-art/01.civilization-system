# ============================================================
# ASSISTANT ORCHESTRATION ARCHITECTURE
# ============================================================

status: canonical-draft
system: life-os
layer: architecture
domain: assistant-orchestration
owner: Boss
prepared_by: Zero

purpose:
Defines how LifeOS chooses when, why, and how to surface life support prompts,
reminders, nudges, and review invitations.

summary:
assistant-orchestration does not invent life facts.
It coordinates signals already produced inside LifeOS and decides
which supportive intervention should be surfaced,
at what timing, and under what interruption boundaries.

# ============================================================
# 1. ARCHITECTURAL ROLE
# ============================================================

assistant-orchestration is responsible for:
- prioritizing reminder candidates
- applying silence windows
- applying interruption rules
- selecting support timing
- ranking suggestion importance
- feeding Persona-facing expression layers

assistant-orchestration is not responsible for:
- rewriting source truth
- fabricating health claims
- bypassing privacy policy
- bypassing sensitive data boundaries

# ============================================================
# 2. INPUT SOURCES
# ============================================================

- health-condition signals
- meal-nutrition signals
- sleep-recovery signals
- activity-exercise signals
- home-and-living reminders
- personal-finance-lite alerts
- daily-checkin review signals
- risk-and-alert escalation candidates

# ============================================================
# 3. OUTPUTS
# ============================================================

- reminder dispatch candidate
- gentle support suggestion
- weekly review invitation
- silence-window deferred action
- escalated alert handoff
- explanation basis for Persona expression

# ============================================================
# 4. DECISION LOGIC
# ============================================================

priority depends on:
- urgency
- safety level
- user burden
- recent interruption history
- silence window
- repeated ignore pattern
- review importance
- privacy sensitivity

# ============================================================
# 5. BOUNDARIES
# ============================================================

with PersonaOS:
- PersonaOS owns expression style
- assistant-orchestration owns timing and surfacing intent

with risk-and-alert:
- high-severity signals may bypass normal reminder ranking
- still subject to explicit policy

with sensitive-life-boundary:
- sensitive content minimization must apply to surfaced messages

# ============================================================
# 6. REQUIRED SUB-MODELS
# ============================================================

- life intervention priority
- life silence window
- life escalation rule
- life support timing
- life reminder tone basis
- life suggestion priority
