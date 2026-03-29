# ============================================================
# GAME BUILDER VALIDATION EXPORT SUBMISSION JSON EXAMPLES
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Provide concrete request/response JSON examples
for the most important Builder handoff APIs.

scope:
- editing validation
- export validation
- publish validation
- export readiness
- create export package
- get runtime export contract
- submission readiness
- create submission request


# ============================================================
# 1. RUN EDITING VALIDATION
# ============================================================

request_example:
{
  "project_code": "prj_gm_0001",
  "basis_type": "working_state",
  "scope_ref": "block_scene_001",
  "correlation_id": "corr_edit_val_001"
}

response_example:
{
  "validation_result_ref": "val_edit_0001",
  "validation_stage": "editing_validation",
  "validation_status": "failed_blocking",
  "basis_type": "working_state",
  "basis_ref": "working_state",
  "runtime_family_code": "visual_novel",
  "blocking_count": 2,
  "warning_count": 1,
  "info_count": 0,
  "detected_at": "2026-03-25T12:00:00Z",
  "findings_summary": [
    {
      "finding_id": "f_0001",
      "severity": "blocking",
      "affected_scope_type": "block",
      "affected_scope_ref": "block_scene_001",
      "summary": "next_scene_target is missing",
      "fix_hint": "Set next_scene_target or ending resolution."
    },
    {
      "finding_id": "f_0002",
      "severity": "blocking",
      "affected_scope_type": "block",
      "affected_scope_ref": "block_choice_014",
      "summary": "choice references unresolved branch target",
      "fix_hint": "Bind choice target to an existing scene or block."
    },
    {
      "finding_id": "f_0003",
      "severity": "warning",
      "affected_scope_type": "block",
      "affected_scope_ref": "block_scene_003",
      "summary": "speaker portrait fallback is being used",
      "fix_hint": "Bind a project-specific portrait asset."
    }
  ]
}


# ============================================================
# 2. RUN EXPORT VALIDATION
# ============================================================

request_example:
{
  "project_code": "prj_gm_0001",
  "revision_ref": "rev_0042",
  "asset_manifest_ref": "ast_manifest_0042",
  "correlation_id": "corr_export_val_001"
}

response_example:
{
  "validation_result_ref": "val_export_0007",
  "validation_stage": "export_validation",
  "validation_status": "passed",
  "basis_type": "revision",
  "basis_ref": "rev_0042",
  "runtime_family_code": "visual_novel",
  "blocking_count": 0,
  "warning_count": 1,
  "info_count": 2,
  "detected_at": "2026-03-25T12:10:00Z",
  "findings_summary": [
    {
      "finding_id": "f_1001",
      "severity": "warning",
      "affected_scope_type": "asset",
      "affected_scope_ref": "asset_bg_004",
      "summary": "image size is larger than recommended preview profile",
      "fix_hint": "Consider smaller preview variant."
    }
  ]
}


# ============================================================
# 3. RUN PUBLISH VALIDATION
# ============================================================

request_example:
{
  "project_code": "prj_gm_0001",
  "export_package_code": "exp_pkg_0012",
  "release_code": "rel_game_0003",
  "game_title_code": "title_game_0003",
  "seller_code": "seller_ind_0021",
  "correlation_id": "corr_publish_val_001"
}

response_example:
{
  "validation_result_ref": "val_publish_0002",
  "validation_stage": "publish_validation",
  "validation_status": "failed_blocking",
  "basis_type": "export_package",
  "basis_ref": "exp_pkg_0012",
  "runtime_family_code": "visual_novel",
  "blocking_count": 1,
  "warning_count": 0,
  "info_count": 1,
  "detected_at": "2026-03-25T12:20:00Z",
  "findings_summary": [
    {
      "finding_id": "f_2001",
      "severity": "blocking",
      "affected_scope_type": "submission_linkage",
      "affected_scope_ref": "rel_game_0003",
      "summary": "release age-rating metadata is unresolved",
      "fix_hint": "Complete release-facing age/content rating fields."
    }
  ]
}


# ============================================================
# 4. INSPECT EXPORT READINESS
# ============================================================

request_example:
{
  "project_code": "prj_gm_0001",
  "revision_ref": "rev_0042",
  "correlation_id": "corr_export_ready_001"
}

response_example:
{
  "project_code": "prj_gm_0001",
  "revision_ref": "rev_0042",
  "export_ready": true,
  "blocking_count": 0,
  "warning_count": 1,
  "required_asset_family_summary": {
    "required": [
      "vn_presentation_assets",
      "ui_template_assets"
    ],
    "resolved": [
      "vn_presentation_assets",
      "ui_template_assets"
    ],
    "unresolved": []
  },
  "runtime_resolution_summary": {
    "runtime_family_code": "visual_novel",
    "runtime_profile_code": "vn_runtime_profile_v1",
    "ruleset_profile_code": "vn_ruleset_v1"
  },
  "template_resolution_summary": {
    "template_profile_code": "tpl_vn_romance_beginner_v1",
    "template_family_code": "visual_novel",
    "template_tier": "beginner"
  },
  "export_contract_prerequisite_summary": {
    "runtime_resolved": true,
    "ruleset_resolved": true,
    "template_resolved": true,
    "asset_manifest_ready": true
  },
  "last_export_validation_ref": "val_export_0007"
}


# ============================================================
# 5. CREATE EXPORT PACKAGE
# ============================================================

request_example:
{
  "project_code": "prj_gm_0001",
  "revision_ref": "rev_0042",
  "export_summary": "first publish candidate",
  "export_profile_hint": "default_release",
  "correlation_id": "corr_export_create_001"
}

response_example:
{
  "export_package_code": "exp_pkg_0012",
  "project_code": "prj_gm_0001",
  "revision_ref": "rev_0042",
  "export_status": "packaged",
  "export_hash": "sha256:exporthash0012",
  "runtime_export_contract_ref": "rt_contract_0012",
  "asset_manifest_ref": "ast_manifest_0042",
  "created_at": "2026-03-25T12:30:00Z"
}


# ============================================================
# 6. GET RUNTIME EXPORT CONTRACT
# ============================================================

request_example:
{
  "project_code": "prj_gm_0001",
  "export_package_code": "exp_pkg_0012",
  "correlation_id": "corr_contract_get_001"
}

response_example:
{
  "runtime_export_contract_ref": "rt_contract_0012",
  "contract_identity_summary": {
    "contract_ref": "rt_contract_0012",
    "contract_version": 1,
    "project_code": "prj_gm_0001",
    "export_package_code": "exp_pkg_0012",
    "export_hash": "sha256:exporthash0012",
    "frozen_revision_ref": "rev_0042"
  },
  "runtime_resolution_summary": {
    "runtime_family_code": "visual_novel",
    "runtime_profile_code": "vn_runtime_profile_v1"
  },
  "ruleset_resolution_summary": {
    "ruleset_profile_code": "vn_ruleset_v1",
    "evaluation_order_summary": [
      "input_validity",
      "condition_evaluation",
      "mutation_resolution",
      "progression_resolution",
      "candidate_resolution"
    ]
  },
  "template_resolution_summary": {
    "template_profile_code": "tpl_vn_romance_beginner_v1",
    "template_family_code": "visual_novel",
    "template_tier": "beginner"
  },
  "asset_resolution_summary": {
    "required_asset_family_summary": [
      "vn_presentation_assets",
      "ui_template_assets"
    ],
    "asset_manifest_ref": "ast_manifest_0042"
  },
  "preview_compatibility_summary": {
    "preview_supported": true,
    "preview_modes": [
      "scene_preview",
      "route_preview",
      "full_story_preview"
    ]
  },
  "sync_candidate_summary": {
    "save_candidate_supported": true,
    "achievement_candidate_supported": true,
    "ranking_candidate_supported": false,
    "replay_candidate_supported": false,
    "telemetry_candidate_supported": true
  },
  "state_boundary_summary": {
    "saveable_state_summary": [
      "route_progression",
      "ending_unlock"
    ],
    "derived_state_summary": [
      "ending_eligibility"
    ],
    "transient_state_summary": [
      "current_choice_focus"
    ],
    "prohibited_authority_state_summary": [
      "final_achievement_truth",
      "persona_truth"
    ]
  },
  "persona_boundary_summary": {
    "persona_projection_usage_summary": [
      "approved_cast_projection",
      "dialogue_tone_shaping"
    ],
    "prohibited_persona_overlap_summary": [
      "no_persona_truth_overwrite"
    ]
  },
  "commerce_boundary_summary": {
    "entitlement_dependency_summary": [
      "entitlement_presence_only"
    ],
    "commerce_dependency_summary": [],
    "prohibited_finality_summary": [
      "no_purchase_finality",
      "no_entitlement_issuance"
    ]
  }
}


# ============================================================
# 7. INSPECT SUBMISSION READINESS
# ============================================================

request_example:
{
  "project_code": "prj_gm_0001",
  "export_package_code": "exp_pkg_0012",
  "release_code": "rel_game_0003",
  "game_title_code": "title_game_0003",
  "seller_code": "seller_ind_0021",
  "correlation_id": "corr_submit_ready_001"
}

response_example:
{
  "project_code": "prj_gm_0001",
  "export_package_code": "exp_pkg_0012",
  "submission_ready": true,
  "blocking_count": 0,
  "warning_count": 0,
  "linkage_summary": {
    "workspace_resolved": true,
    "seller_resolved": true,
    "game_title_resolved": true,
    "release_resolved": true
  },
  "publish_validation_summary": {
    "validation_result_ref": "val_publish_0005",
    "validation_status": "passed"
  },
  "moderation_readiness_summary": {
    "metadata_complete": true
  },
  "release_readiness_summary": {
    "release_code": "rel_game_0003",
    "age_rating_complete": true
  }
}


# ============================================================
# 8. CREATE SUBMISSION REQUEST
# ============================================================

request_example:
{
  "project_code": "prj_gm_0001",
  "export_package_code": "exp_pkg_0012",
  "game_title_code": "title_game_0003",
  "release_code": "rel_game_0003",
  "submission_summary": "submit initial release candidate",
  "seller_code": "seller_ind_0021",
  "correlation_id": "corr_submit_create_001"
}

response_example:
{
  "submission_request_ref": "sub_req_0008",
  "project_code": "prj_gm_0001",
  "export_package_code": "exp_pkg_0012",
  "game_title_code": "title_game_0003",
  "release_code": "rel_game_0003",
  "submission_status": "created",
  "created_at": "2026-03-25T12:40:00Z"
}
