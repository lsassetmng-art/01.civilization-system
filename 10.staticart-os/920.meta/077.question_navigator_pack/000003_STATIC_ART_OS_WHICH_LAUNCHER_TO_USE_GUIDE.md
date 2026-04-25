# ============================================================
# STATIC ART OS WHICH LAUNCHER TO USE GUIDE
# ============================================================

status: launcher-guide
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

launcher_guide:
  132100_staticart_standalone_master_launcher.sh:
    use_when:
      - you want phase checks
      - you want final standalone check

  132140_staticart_start_here.sh:
    use_when:
      - you want the approved start sequence
      - you want environment confirmation first

  132160_staticart_review_portal.sh:
    use_when:
      - you want a compact read/review surface

  132170_staticart_closeout_portal.sh:
    use_when:
      - you want closeout summaries and final review order

  132190_staticart_healthcheck.sh:
    use_when:
      - you want a quick read-only health check

  132210_staticart_signoff_portal.sh:
    use_when:
      - you want blocker/risk/signoff artifacts

  132240_staticart_pre_implementation_gate.sh:
    use_when:
      - you want go/no-go style pre-start confirmation

  132250_staticart_persona_rule_review.sh:
    use_when:
      - you want Persona rule anchor files only

  132260_staticart_persona_reference_addendum_review.sh:
    use_when:
      - you want DB/API/UI/Test persona addendum review

  132270_staticart_persona_reference_impact_review.sh:
    use_when:
      - you want persona impact/priority/no-touch review

  132280_staticart_persona_reference_wording_review.sh:
    use_when:
      - you want exact wording insertion bundle review

  132290_staticart_persona_final_recheck.sh:
    use_when:
      - you want final Persona rule recheck

  132320_staticart_persona_rule_final_portal.sh:
    use_when:
      - you want Persona-aware final navigation

  132350_staticart_final_landing_portal.sh:
    use_when:
      - you want the highest-level overall portal

  132390_staticart_master_final_bundle.sh:
    use_when:
      - you want the shortest top-level artifact bundle

  132410_staticart_master_readonly_sweep.sh:
    use_when:
      - you want all major read-only checks logged in one run

  132420_staticart_next_chat_handoff.sh:
    use_when:
      - you want next-chat continuation guidance

  132430_staticart_export_resume_portal.sh:
    use_when:
      - you want export/resume guidance

  132440_staticart_traceability_lookup.sh:
    use_when:
      - you know the concern but not the file

  132450_staticart_question_navigator.sh:
    use_when:
      - you want question-based guidance instead of path-based guidance

guide_rule:
- Prefer final landing portal for overall entry.
- Prefer master readonly sweep for read-only confirmation.
- Prefer standalone master launcher for phase checks.
- Prefer persona final recheck when Persona-linked display/reference work is in scope.
