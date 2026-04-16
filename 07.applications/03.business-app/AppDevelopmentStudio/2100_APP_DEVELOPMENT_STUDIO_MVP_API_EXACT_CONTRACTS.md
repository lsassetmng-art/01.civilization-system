# ============================================================
# APP DEVELOPMENT STUDIO MVP API EXACT CONTRACTS
# ============================================================

status: implementation-start
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

# ============================================================
# 1. COMMON RESPONSE ENVELOPE
# ============================================================

success_response:
{
  "ok": true,
  "operation_code": "string",
  "data": {},
  "meta": {
    "timestamp": "ISO-8601 string",
    "request_id": "uuid or null"
  }
}

error_response:
{
  "ok": false,
  "operation_code": "string",
  "error": {
    "error_code": "string",
    "error_name": "string",
    "message": "string",
    "details": {},
    "retryable": false
  },
  "meta": {
    "timestamp": "ISO-8601 string",
    "request_id": "uuid or null"
  }
}

common_error_codes:
- ADS-REQ-4001 invalid_request
- ADS-REQ-4002 missing_required_field
- ADS-REQ-4003 invalid_enum_value
- ADS-AUTH-4031 not_authorized
- ADS-RULE-4091 rule_conflict
- ADS-RDY-4221 readiness_blocked
- ADS-APL-5001 apply_failed
- ADS-SQL-5002 sql_execution_failed
- ADS-GIT-5003 git_execution_failed

# ============================================================
# 2. create_development_request
# ============================================================

operation_code:
create_development_request

request:
{
  "request_title": "string",
  "request_summary": "string or null",
  "input_mode": "free_input | guided_input | standard_template | full_generation_format | imported_design_documents",
  "generation_mode": "draft | partial | full",
  "target_project_id": "uuid",
  "target_environment_id": "uuid or null",
  "rule_profile_id": "uuid or null",
  "review_mode": "mandatory | recommended | optional | skipped",
  "approval_mode": "mandatory | optional | auto_approved",
  "build_mode": "disabled | enabled | if_available | external_only",
  "git_mode": "none | commit_only | commit_and_push | full_release",
  "created_by": "string"
}

required_fields:
- request_title
- input_mode
- generation_mode
- target_project_id
- review_mode
- approval_mode
- build_mode
- git_mode
- created_by

response:
{
  "ok": true,
  "operation_code": "create_development_request",
  "data": {
    "request_id": "uuid",
    "status": "created"
  },
  "meta": {
    "timestamp": "ISO-8601 string",
    "request_id": "uuid"
  }
}

# ============================================================
# 3. assess_generation_readiness
# ============================================================

operation_code:
assess_generation_readiness

request:
{
  "request_id": "uuid",
  "design_input_payload": {
    "source_type": "inline | imported_documents | template_payload",
    "content": "object"
  }
}

required_fields:
- request_id
- design_input_payload

response:
{
  "ok": true,
  "operation_code": "assess_generation_readiness",
  "data": {
    "readiness_assessment_id": "uuid",
    "overall_decision": "full_ready | full_ready_with_warning | manual_required | blocked",
    "scores": {
      "completeness_score": 0,
      "granularity_score": 0,
      "ambiguity_score": 0,
      "dependency_resolution_score": 0,
      "reuse_readiness_score": 0,
      "connection_readiness_score": 0,
      "output_readiness_score": 0
    },
    "warnings": [],
    "blocking_reasons": []
  },
  "meta": {
    "timestamp": "ISO-8601 string",
    "request_id": "uuid"
  }
}

# ============================================================
# 4. generate_design_proposal
# ============================================================

operation_code:
generate_design_proposal

request:
{
  "request_id": "uuid",
  "design_output_language": "string",
  "proposal_title": "string",
  "use_reusable_components": true
}

required_fields:
- request_id
- proposal_title

response:
{
  "ok": true,
  "operation_code": "generate_design_proposal",
  "data": {
    "proposal_id": "uuid",
    "proposal_type": "design",
    "proposal_status": "drafted",
    "risk_level": "low | medium | high | critical",
    "artifact_count": 1
  },
  "meta": {
    "timestamp": "ISO-8601 string",
    "request_id": "uuid"
  }
}

# ============================================================
# 5. generate_java_proposal
# ============================================================

operation_code:
generate_java_proposal

request:
{
  "request_id": "uuid",
  "target_language": "java",
  "package_policy": "string or null",
  "use_reusable_components": true,
  "generate_unit_tests": true
}

required_fields:
- request_id
- target_language

response:
{
  "ok": true,
  "operation_code": "generate_java_proposal",
  "data": {
    "proposal_id": "uuid",
    "proposal_type": "source_code",
    "proposal_status": "drafted",
    "risk_level": "low | medium | high | critical",
    "artifact_count": 0,
    "unit_test_generated": true
  },
  "meta": {
    "timestamp": "ISO-8601 string",
    "request_id": "uuid"
  }
}

# ============================================================
# 6. generate_sql_proposal
# ============================================================

operation_code:
generate_sql_proposal

request:
{
  "request_id": "uuid",
  "connection_profile_id": "uuid or null",
  "sql_scope": "ddl | dml | mixed",
  "allow_execution_candidate": true
}

required_fields:
- request_id
- sql_scope

response:
{
  "ok": true,
  "operation_code": "generate_sql_proposal",
  "data": {
    "proposal_id": "uuid",
    "proposal_type": "sql",
    "proposal_status": "drafted",
    "risk_level": "low | medium | high | critical",
    "sql_safety_class": "select_safe | write_guarded | ddl_guarded | destructive_high_risk",
    "connection_profile_id": "uuid or null"
  },
  "meta": {
    "timestamp": "ISO-8601 string",
    "request_id": "uuid"
  }
}

# ============================================================
# 7. retain_proposal
# ============================================================

operation_code:
retain_proposal

request:
{
  "proposal_id": "uuid",
  "retained_by": "string",
  "retention_note": "string or null"
}

required_fields:
- proposal_id
- retained_by

response:
{
  "ok": true,
  "operation_code": "retain_proposal",
  "data": {
    "proposal_id": "uuid",
    "proposal_status": "retained"
  },
  "meta": {
    "timestamp": "ISO-8601 string",
    "request_id": null
  }
}

# ============================================================
# 8. approve_proposal
# ============================================================

operation_code:
approve_proposal

request:
{
  "proposal_id": "uuid",
  "approved_by": "string",
  "approval_comment": "string or null"
}

required_fields:
- proposal_id
- approved_by

response:
{
  "ok": true,
  "operation_code": "approve_proposal",
  "data": {
    "proposal_id": "uuid",
    "proposal_status": "approved"
  },
  "meta": {
    "timestamp": "ISO-8601 string",
    "request_id": null
  }
}

# ============================================================
# 9. reject_proposal
# ============================================================

operation_code:
reject_proposal

request:
{
  "proposal_id": "uuid",
  "rejected_by": "string",
  "rejection_reason": "string"
}

required_fields:
- proposal_id
- rejected_by
- rejection_reason

response:
{
  "ok": true,
  "operation_code": "reject_proposal",
  "data": {
    "proposal_id": "uuid",
    "proposal_status": "rejected"
  },
  "meta": {
    "timestamp": "ISO-8601 string",
    "request_id": null
  }
}

# ============================================================
# 10. execute_apply
# ============================================================

operation_code:
execute_apply

request:
{
  "proposal_id": "uuid",
  "target_scope": "file | folder | sql | package | git_worktree | mixed",
  "execution_mode": "manual | approved_auto | guarded | external",
  "backup_mode": "none | recommended | mandatory",
  "executed_by_mode": "string"
}

required_fields:
- proposal_id
- target_scope
- execution_mode
- backup_mode
- executed_by_mode

response:
{
  "ok": true,
  "operation_code": "execute_apply",
  "data": {
    "apply_execution_id": "uuid",
    "execution_status": "pending | running | succeeded | partially_succeeded | failed | rolled_back | rollback_required"
  },
  "meta": {
    "timestamp": "ISO-8601 string",
    "request_id": null
  }
}

# ============================================================
# 11. create_bug_record
# ============================================================

operation_code:
create_bug_record

request:
{
  "title": "string",
  "summary": "string or null",
  "detail": "string or null",
  "status": "new | triaged | investigating | fixing | fixed | retesting | closed | reopened | rejected",
  "priority": "low | medium | high | critical",
  "severity": "minor | major | serious | blocker",
  "reported_by": "string",
  "detected_phase": "string or null",
  "affected_module": "string or null",
  "affected_function": "string or null",
  "reproduction_steps": "string or null",
  "expected_result": "string or null",
  "actual_result": "string or null"
}

required_fields:
- title
- status
- priority
- severity
- reported_by

response:
{
  "ok": true,
  "operation_code": "create_bug_record",
  "data": {
    "bug_id": "uuid",
    "status": "new | triaged | investigating | fixing | fixed | retesting | closed | reopened | rejected"
  },
  "meta": {
    "timestamp": "ISO-8601 string",
    "request_id": null
  }
}

# ============================================================
# 12. update_test_progress
# ============================================================

operation_code:
update_test_progress

request:
{
  "test_progress_record_id": "uuid",
  "execution_status": "not_started | in_progress | done | blocked | on_hold",
  "result_status": "not_run | pass | fail | retest_needed | skipped",
  "assignee": "string or null",
  "related_bug_id": "uuid or null",
  "notes": "string or null",
  "updated_by": "string",
  "manual_update_reason": "string or null"
}

required_fields:
- test_progress_record_id
- execution_status
- result_status
- updated_by

response:
{
  "ok": true,
  "operation_code": "update_test_progress",
  "data": {
    "test_progress_record_id": "uuid",
    "execution_status": "string",
    "result_status": "string"
  },
  "meta": {
    "timestamp": "ISO-8601 string",
    "request_id": null
  }
}

# ============================================================
# 13. update_project_progress
# ============================================================

operation_code:
update_project_progress

request:
{
  "development_progress_record_id": "uuid",
  "status": "not_started | in_progress | completed | blocked | on_hold",
  "completion_rate": 0,
  "assignee": "string or null",
  "notes": "string or null",
  "updated_by": "string"
}

required_fields:
- development_progress_record_id
- status
- completion_rate
- updated_by

response:
{
  "ok": true,
  "operation_code": "update_project_progress",
  "data": {
    "development_progress_record_id": "uuid",
    "status": "string",
    "completion_rate": 0
  },
  "meta": {
    "timestamp": "ISO-8601 string",
    "request_id": null
  }
}

# ============================================================
# 14. NOTES
# ============================================================

implementation_notes:
- request/response field names should remain stable
- enum values should be centralized in code
- error codes should remain stable once exposed
- review/approval/escalation checks occur before execute_apply, SQL execution, and Git push
