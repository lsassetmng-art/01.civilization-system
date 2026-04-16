# ============================================================
# EXPENSE SLICE01 RISK REGISTER
# ============================================================

status: canonical
layer: development
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Captures the main risks to slice_01_foundation_flow implementation quality.

risk_register:

  - risk_id: S01-RISK-001
    name: state_collapse_risk
    meaning:
      approval / finance / ERP states may be merged for convenience
    prevention:
      enforce canonical state separation during implementation review

  - risk_id: S01-RISK-002
    name: authority_bypass_risk
    meaning:
      applicant / approver / finance boundaries may weaken during fast implementation
    prevention:
      review action surfaces against authority design before accepting implementation output

  - risk_id: S01-RISK-003
    name: receipt_equals_evidence_risk
    meaning:
      file attachment may be treated as accepted evidence automatically
    prevention:
      preserve file acceptance vs evidence acceptance distinction

  - risk_id: S01-RISK-004
    name: audit_gap_risk
    meaning:
      major actions may work functionally but leave no useful audit trail
    prevention:
      done definition requires major audit-visible actions

  - risk_id: S01-RISK-005
    name: slice_scope_expansion_risk
    meaning:
      slice_01 may silently absorb later-slice features
    prevention:
      keep slice lock and non-goals visible during kickoff

  - risk_id: S01-RISK-006
    name: policy_baseline_drift_risk
    meaning:
      exact initial company baselines may drift away from locked docs
    prevention:
      review against route / reason-code / label / settlement baseline docs

  - risk_id: S01-RISK-007
    name: erp_boundary_blur_risk
    meaning:
      app may start behaving like ERP source of truth
    prevention:
      keep ERP request/result skeleton separate from accounting truth

risk_rule:
If implementation convenience conflicts with canonical meaning,
canonical meaning wins.

