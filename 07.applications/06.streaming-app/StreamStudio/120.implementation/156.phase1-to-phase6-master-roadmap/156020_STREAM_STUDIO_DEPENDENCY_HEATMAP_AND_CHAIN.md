# ============================================================
# STREAM STUDIO DEPENDENCY HEATMAP AND CHAIN
# ============================================================

status: roadmap-dependency
layer: implementation-roadmap
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the dependency intensity and chain across phases.

dependency_chain:
- phase_1 -> phase_2
- phase_2 -> phase_3
- phase_3 -> phase_4
- phase_3 -> phase_5
- phase_4 -> phase_5
- phase_1 -> phase_6
- phase_2 -> phase_6
- phase_3 -> phase_6

dependency_heatmap:

  phase_2_depends_on_phase_1:
    intensity: very_high
    reason:
      - review and approval need project, draft, and publish base

  phase_3_depends_on_phase_2:
    intensity: high
    reason:
      - listing approval and governance must be stable first

  phase_4_depends_on_phase_3:
    intensity: high
    reason:
      - access mode and commerce concepts must be stable before membership execution

  phase_5_depends_on_phase_3:
    intensity: high
    reason:
      - split rules require monetized source models

  phase_5_depends_on_phase_4:
    intensity: medium
    reason:
      - membership conflict rules can affect monetization governance

  phase_6_depends_on_phase_1:
    intensity: very_high
    reason:
      - canonical publish base is prerequisite for external push

  phase_6_depends_on_phase_2:
    intensity: medium
    reason:
      - workflow and notification hardening benefits ops visibility

  phase_6_depends_on_phase_3:
    intensity: medium
    reason:
      - commerce-facing downstream reconciliation may appear later

forbidden_shortcuts:
- phase_3 without phase_2 governance stability
- phase_4 before phase_3 commerce model stability
- phase_6 before phase_1 canonical publish stability

fixed_statement:
Dependency intensity and ordering above are frozen for roadmap planning.
