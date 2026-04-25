# ============================================================
# STATIC ART OS LAUNCHER REGISTRY
# ============================================================

status: launcher-registry
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the official launcher registry for the StaticArtOS pack
organized in this chat.

launchers:
  132100_staticart_standalone_master_launcher.sh:
    purpose:
      - phase check entrypoint
      - final standalone check entrypoint

  132140_staticart_start_here.sh:
    purpose:
      - approved implementation start entrypoint
      - environment confirmation

  132160_staticart_review_portal.sh:
    purpose:
      - compact review surface for core files

  132170_staticart_closeout_portal.sh:
    purpose:
      - closeout summary and final review order

  132180_staticart_refresh_dashboard.sh:
    purpose:
      - refresh current status dashboard

  132190_staticart_healthcheck.sh:
    purpose:
      - read-only launcher/presence/health confirmation

  132210_staticart_signoff_portal.sh:
    purpose:
      - signoff / blocker / risk / changelog entrypoint

  132240_staticart_pre_implementation_gate.sh:
    purpose:
      - go / no-go pre-start confirmation

  132250_staticart_persona_rule_review.sh:
    purpose:
      - review Persona rule anchor files

  132260_staticart_persona_reference_addendum_review.sh:
    purpose:
      - review Persona DB/API/UI/Test addendum files

  132270_staticart_persona_reference_impact_review.sh:
    purpose:
      - review Persona impact / priority / no-touch notes

  132280_staticart_persona_reference_wording_review.sh:
    purpose:
      - review Persona wording insertion bundle

  132290_staticart_persona_final_recheck.sh:
    purpose:
      - final read-only Persona rule recheck

  132300_STATIC_ART_OS_PERSONA_RULE_FINAL_PORTAL_NOTE.md:
    purpose:
      - Persona-aware final navigation note

  132320_staticart_persona_rule_final_portal.sh:
    purpose:
      - Persona-aware final portal launcher

  132350_staticart_final_landing_portal.sh:
    purpose:
      - highest-level overall portal

  132360_staticart_upper_canon_review.sh:
    purpose:
      - upper canonical alignment review

  132370_staticart_design_completion_portal.sh:
    purpose:
      - design organization completion view

  132390_staticart_master_final_bundle.sh:
    purpose:
      - shortest top-level bundle entry

  132400_staticart_master_final_certify.sh:
    purpose:
      - master final read-only certification

  132410_staticart_master_readonly_sweep.sh:
    purpose:
      - one-shot read-only sweep with logs

  132420_staticart_next_chat_handoff.sh:
    purpose:
      - next-chat continuation launcher

  132430_staticart_export_resume_portal.sh:
    purpose:
      - export / resume launcher

  132440_staticart_traceability_lookup.sh:
    purpose:
      - concern-to-artifact reverse lookup

  132450_staticart_question_navigator.sh:
    purpose:
      - question-based navigation

registry_rule:
- Use the final landing portal for general top entry.
- Use the launcher registry when you need to remember which launcher exists for which purpose.
