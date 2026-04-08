# ============================================================
# WAR PROBABILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: war-probability-implementation
component: war-probability-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for war probability calculation
inside Civilization.

This implementation supplements,
but does not replace:

- WAR_MODEL
- WAR_DECISION_FLOW_MODEL
- WAR_DECLARATION_FLOW


# ============================================================
# 2. CALCULATION POSITION
# ============================================================

War probability is calculated before:

- war declaration eligibility
- war model activation
- battle-resolution flow activation

Representative sequence:

state relation posture
-> border and strategic pressure aggregation
-> military and diplomacy weighting
-> war probability posture
-> war eligibility handoff where supported


# ============================================================
# 3. PRIMARY SUBJECTS
# ============================================================

Primary calculation subjects include:

- state-to-state pair
- polity-to-polity pair
- regional strategic zone where applicable

World-level summaries may exist,
but bilateral or paired posture
remains primary.


# ============================================================
# 4. INPUT AGGREGATION RULE
# ============================================================

Representative input families include:

- border adjacency pressure
- territorial dispute pressure
- resource competition pressure
- alliance instability
- diplomatic hostility
- military imbalance
- military readiness
- unresolved prior conflict pressure
- recent hostile incident pressure
- internal instability spillover

Implementation should preserve
cause-family readability.


# ============================================================
# 5. SHOCK VS STRUCTURAL RULE
# ============================================================

War probability should distinguish between:

- structural tension
- acute incident shock

Structural tension reflects
longer-lived hostility posture.

Acute shock reflects
recent incidents or escalations.

Both may contribute,
but should not be collapsed too early.


# ============================================================
# 6. TREND UPDATE RULE
# ============================================================

Trend should compare:

- current bilateral war posture
against
- recent prior bilateral war posture

Trend should be more sensitive
after acute incident shocks,
but should not become unstable
under trivial fluctuations.


# ============================================================
# 7. BANDING RULE
# ============================================================

War probability should be mapped
to readable strategic bands.

Representative bands may include:

- low tension
- guarded tension
- escalation warning
- war-eligible

The exact names may vary,
but escalation readability is required.


# ============================================================
# 8. EVENT ELIGIBILITY HANDOFF
# ============================================================

War probability may feed:

- war decision logic
- declaration eligibility
- mobilization warning systems
- strategic alert systems

But probability alone must not
instantiate war automatically.

Final downstream gates still apply.


# ============================================================
# 9. RECALCULATION TRIGGERS
# ============================================================

Representative recalculation triggers include:

- diplomatic incident
- border event
- sanction event
- alliance change
- military mobilization change
- territorial claim change
- resource disruption
- prior conflict resolution or renewed hostility
- scheduled strategic tick


# ============================================================
# 10. EXISTING WAR ASSET COMPATIBILITY
# ============================================================

This implementation must preserve
the canonical role of existing war assets.

Representative relation:

WAR_PROBABILITY
-> war decision posture
-> war declaration flow
-> WAR_MODEL active war state

WAR_MODEL remains the executed conflict state.

This implementation is only the pre-war layer.


# ============================================================
# 11. FINAL RULE
# ============================================================

War probability implementation must remain:

- bilateral-first
- escalation-aware
- incident-aware
- diplomacy-aware
- military-aware
- compatible with existing war execution assets
