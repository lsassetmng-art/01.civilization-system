# ============================================================
# STATIC ART OS PERSONA REFERENCE CHANGE CLASSIFICATION AND REVIEW LANES EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Classify Persona reference changes and define the review lane required
for each type.

review_lanes:
  lane_A_low_risk_additive:
    examples:
      - additive observability field
      - additive documentation wording
      - additive report/evidence helper
    required_review:
      - controlled patch workflow
      - maintenance guard awareness

  lane_B_read_side_behavior_change:
    examples:
      - projection rendering behavior
      - expiry/stale/restricted UI interpretation
      - local_view_config interpretation change
    required_review:
      - contradiction scan
      - boundary check
      - release-readiness review if already implemented

  lane_C_reflection_or_reconciliation_change:
    examples:
      - idempotency logic change
      - stale handling change
      - reconciliation logic change
    required_review:
      - exact design recheck
      - runtime control review
      - rollback criteria review

  lane_D_boundary_sensitive_change:
    examples:
      - new write path
      - target surface semantics change
      - rights behavior change
      - any move that could imply Persona truth ownership
    required_review:
      - explicit change intake
      - contradiction scan
      - GO/NO-GO review
      - freeze baseline impact review

  lane_E_redesign_required:
    examples:
      - signed snapshot basis replaced
      - Persona local truth introduced
      - direct Persona mutation introduced
    required_review:
      - explicit redesign only
      - not allowed as ordinary maintenance change

change_rule:
- classify first, patch second
- if uncertain, classify toward higher-risk lane
- any boundary-sensitive ambiguity should block casual implementation
