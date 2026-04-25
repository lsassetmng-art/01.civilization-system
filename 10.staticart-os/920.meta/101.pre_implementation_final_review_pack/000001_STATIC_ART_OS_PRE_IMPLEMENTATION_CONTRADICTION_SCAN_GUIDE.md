# ============================================================
# STATIC ART OS PRE IMPLEMENTATION CONTRADICTION SCAN GUIDE
# ============================================================

status: contradiction-scan-guide
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
List the exact contradiction patterns to scan before implementation.

scan_targets:
- roadmap vs freeze baseline
- freeze baseline vs manifest
- checklist vs command order
- Persona boundary policy vs exact DB/API/UI/Test/SQL design
- runtime operations runbook vs rollout/cutover design
- change intake policy vs current intended implementation step

contradiction_patterns:
  pattern_1_persona_ownership_conflict:
    detect_when:
      - any implementation note implies StaticArtOS owns Persona mutable truth

  pattern_2_direct_mutation_conflict:
    detect_when:
      - any endpoint, event, SQL, UI, or operator flow implies direct Persona canonical mutation

  pattern_3_signed_snapshot_basis_conflict:
    detect_when:
      - any display path implies unsiged or locally fabricated Persona truth is acceptable

  pattern_4_execution_order_conflict:
    detect_when:
      - later phase checks are planned before phase 1 foundation stability
      - run evidence is planned after execution instead of alongside execution

  pattern_5_observability_vs_boundary_conflict:
    detect_when:
      - monitoring/reconciliation logic behaves like authority instead of diagnosis/reflection helper

  pattern_6_frozen_baseline_conflict:
    detect_when:
      - implementation intent contradicts frozen baseline without controlled patch workflow

scan_rule:
- any contradiction should be recorded before implementation starts
- contradiction resolution must preserve frozen baseline unless explicit change intake approves a change
