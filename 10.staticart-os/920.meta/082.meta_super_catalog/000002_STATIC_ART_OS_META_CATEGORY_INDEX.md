# ============================================================
# STATIC ART OS META CATEGORY INDEX
# ============================================================

status: meta-category-index
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

categories:
  structure_and_repair_history:
    description:
      - historical structure repair / integrated rebuild / audit layers
    likely_dirs:
      - 040.standalone_integrated_rebuild
      - 041.index_overview_roadmap_audit
      - 042.index_overview_repair
      - 043.index_overview_reaudit
      - 044.root_roadmap_repair
      - 045.final_structure_reaudit
      - 046.final_integrated_rebuild

  freeze_handoff_closeout:
    description:
      - freeze snapshots, handoff, closeout, review portal, completion progression
    likely_dirs:
      - 047.standalone_freeze
      - 048.standalone_handoff
      - 049.review_portal
      - 050.standalone_closeout

  inventory_naming_governance:
    description:
      - file inventory, duplicate basename audit, naming triage
    likely_dirs:
      - 051.inventory_and_duplicate_audit
      - 052.naming_convention_audit
      - 053.naming_triage

  status_and_operational_readiness:
    description:
      - dashboard, healthcheck, signoff, gate, certification, readonly sweep
    likely_dirs:
      - 054.status_dashboard
      - 055.healthcheck_pack
      - 056.signoff_pack
      - 057.pre_implementation_gate
      - 072.master_final_certification
      - 073.master_readonly_sweep

  persona_rule_alignment:
    description:
      - Persona non-duplication, addendum, impact, wording, recheck, persona-aware review
    likely_dirs:
      - 058.persona_non_duplication_application
      - 059.persona_reference_addendum_pack
      - 060.persona_reference_impact_register
      - 061.persona_reference_wording_bundle
      - 062.persona_reference_wording_apply
      - 063.persona_reference_reaudit
      - 064.persona_reference_freeze_handoff_signoff_apply
      - 065.persona_rule_final_recheck
      - 066.persona_rule_final_portal
      - 067.persona_aware_final_refresh

  completion_and_continuation:
    description:
      - final landing, completion memo, next-chat handoff, export/resume, traceability
    likely_dirs:
      - 068.final_landing_portal
      - 069.upper_canon_alignment
      - 070.design_organization_completion
      - 071.master_final_bundle
      - 074.next_chat_handoff
      - 075.export_and_resume_pack
      - 076.traceability_pack
      - 077.question_navigator_pack
      - 078.launcher_registry_and_smokecheck

  evidence_and_future_change_guard:
    description:
      - evidence, maintenance guard, change intake
    likely_dirs:
      - 079.evidence_pack
      - 080.maintenance_guard_pack
      - 081.change_intake_pack
      - 082.meta_super_catalog

usage_rule:
- Use category index when you know the kind of concern but not the exact pack.
- Use evidence pack for audit-facing proof.
- Use maintenance/change packs for future-safe modification work.
