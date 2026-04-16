# ============================================================
# PRODUCT PORTFOLIO MANAGER AUDIT AND HISTORY POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for what must be auditable,
what history must be preserved,
and how audit data should be interpreted.

policy_principles:
- audit history exists to preserve accountability
- preserved history must distinguish facts from judgments
- preserved history must distinguish draft from approved outcomes
- history visibility is role-aware
- audit data should support explanation, not hidden surveillance behavior

# ============================================================
# 1. REQUIRED AUDIT EVENTS
# ============================================================

required_audit_events:
- classification finalized
- classification approval decided
- proposal status changed on meaningful workflow edges
- review decision recorded
- approval request created
- approval decision recorded
- share scope created or revoked
- high-impact visibility expansion
- source-boundary-relevant action executed

# ============================================================
# 2. OPTIONAL OR POLICY-CONDITIONAL AUDIT EVENTS
# ============================================================

optional_or_conditional_audit_events:
- draft save events
- low-impact note edits
- alert acknowledgments
- operational reminders
- low-value repeated view events

policy_rule:
Not every minor action needs equal audit weight.
The design should preserve meaningfulness and avoid useless audit noise.

# ============================================================
# 3. NON-REWRITE POLICY
# ============================================================

non_rewrite_policy:
- high-value historical meaning should not be silently rewritten
- corrections should normally appear as new events
- deletion-first handling is disfavored for important judgment history
- where exceptional correction is needed, the correction process should itself be traceable

# ============================================================
# 4. FACT VS JUDGMENT POLICY
# ============================================================

fact_vs_judgment_policy:
- ERP facts are not the same as application judgment history
- forecast references are advisory inputs, not formal truth
- audit displays must avoid implying that derived score equals formal ERP fact
- classification, proposal, review, and approval history are judgment-layer history

# ============================================================
# 5. VISIBILITY POLICY
# ============================================================

audit_visibility_policy:
- not all business users need full audit visibility
- managers, approvers, admins, and auditors may have broader history visibility
- visibility of audit data should remain bounded by policy and sensitivity
- broader audit visibility does not automatically grant edit authority

# ============================================================
# 6. RETENTION POLICY
# ============================================================

retention_policy:
- approved outcomes should remain historically visible
- rejected outcomes should remain historically visible
- superseded states should remain identifiable
- revocation events should remain visible where they explain visibility change
- retention windows should not undermine accountability requirements

# ============================================================
# 7. INTERPRETATION POLICY
# ============================================================

interpretation_policy:
- audit history shows what happened in the application process
- audit history does not itself declare whether the business judgment was wise
- chronology matters
- event context matters
- missing approval should not be mistaken for implied approval

# ============================================================
# 8. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Audit and history policy in ProductPortfolioManager
must preserve accountable chronology,
bounded visibility,
and clear separation between fact history and judgment history.
