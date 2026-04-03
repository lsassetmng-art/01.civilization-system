# ============================================================
# OCCUPATION INSPECTION AND AUDIT EVENT COMMON MODEL
# ============================================================

status: canonical
layer: model
scope: occupation-intervention-and-kpi-common
component: occupation-inspection-and-audit-event-common

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EVENT TYPES
# ============================================================

inspection_and_audit_event_types:
- scheduled_inspection
- surprise_inspection
- complaint_triggered_review
- compliance_audit
- safety_audit
- post_incident_review
- intensified_policy_review
- emergency_condition_reinspection


# ============================================================
# 2. COMMON EVALUATION AXES
# ============================================================

common_evaluation_axes:
- quality
- safety
- cleanliness_or_maintenance
- compliance
- record_keeping
- staffing_adequacy
- facility_condition
- response_readiness


# ============================================================
# 3. COMMON RESULT BANDS
# ============================================================

common_result_bands:
- pass
- needs_improvement
- fail


# ============================================================
# 4. FINAL RULE
# ============================================================

Inspection and audit events
must be occupation-specific in content
but common in structure.
