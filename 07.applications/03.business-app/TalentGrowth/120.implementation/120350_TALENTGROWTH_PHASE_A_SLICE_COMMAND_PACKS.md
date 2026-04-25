# ============================================================
# TALENTGROWTH PHASE A SLICE COMMAND PACKS
# ============================================================

status: canonical
layer: implementation
system: applications
application: TalentGrowth
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-slice-command-packs

purpose:
Fixes the Termux-oriented stub generation packs for the TalentGrowth
Phase A vertical slices.

execution_policy:
- design fixation only in this step
- actual execution is later
- Termux one-block style
- mkdir -p plus cat standard
- package base is com.lsam.TalentGrowth
- no Japanese literals in Java source
- additive only

slice_01_growth_cockpit_query:
  default_safe_output_root:
    - $HOME/.tmp/talentgrowth-phase-a-slice01

slice_02_growth_exception_review_query:
  default_safe_output_root:
    - $HOME/.tmp/talentgrowth-phase-a-slice02

slice_03_snapshot_and_audit_bridge:
  default_safe_output_root:
    - $HOME/.tmp/talentgrowth-phase-a-slice03

note:
- actual stub generation should follow the fixed stub file plan and content order plan
- command packs remain the only sequence authority during later execution
