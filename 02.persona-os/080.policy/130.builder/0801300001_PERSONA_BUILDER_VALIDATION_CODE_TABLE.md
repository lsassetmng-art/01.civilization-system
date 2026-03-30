# ============================================================
# PERSONA BUILDER VALIDATION CODE TABLE
# ============================================================

status: canonical
scope: persona.builder.validation.code.table
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the official validation code system
for Persona Builder.


# SEVERITY

- info
- warning
- error
- critical


# BLOCKING RULE

- info: non-blocking
- warning: usually non-blocking
- error: may be blocking
- critical: always blocking


# CODE GROUPS

PBV-ID:
  identity-related validation

PBV-IN:
  introduction-related validation

PBV-PT:
  personality-related validation

PBV-FE:
  features-related validation

PBV-CP:
  capability-related validation

PBV-RB:
  runtime behavior-related validation

PBV-VS:
  visual-related validation

PBV-VO:
  voice-related validation

PBV-PR:
  public / release-related validation

PBV-GV:
  governance-related validation

PBV-BD:
  boundary-related validation


# EXAMPLES

PBV-ID-001:
  code_name: display_name_missing
  severity: error
  blocking: yes
  condition: display_name is missing

PBV-ID-002:
  code_name: occupation_missing
  severity: warning
  blocking: no
  condition: occupation is missing

PBV-IN-001:
  code_name: short_introduction_missing
  severity: warning
  blocking: no
  condition: short introduction is missing

PBV-IN-002:
  code_name: marketplace_description_missing
  severity: error
  blocking: yes
  condition: release target requires marketplace description but none exists

PBV-CP-001:
  code_name: qualification_reference_invalid
  severity: critical
  blocking: yes
  condition: qualification reference does not exist in Civilization qualification master

PBV-CP-002:
  code_name: skill_reference_invalid
  severity: critical
  blocking: yes
  condition: skill reference does not exist in PersonaOS skill master

PBV-CP-003:
  code_name: skill_level_invalid
  severity: error
  blocking: yes
  condition: skill_level is outside Level 1 to Level 5

PBV-CP-004:
  code_name: skill_visibility_conflict
  severity: warning
  blocking: no
  condition: runtime-only skill is exposed publicly without intended visibility review

PBV-VS-001:
  code_name: visual_binding_incomplete
  severity: error
  blocking: yes
  condition: required visual binding is incomplete

PBV-VO-001:
  code_name: voice_profile_missing_for_voice_release
  severity: error
  blocking: yes
  condition: release target includes voice surface but voice profile is missing

PBV-PR-001:
  code_name: snapshot_exposure_conflict
  severity: error
  blocking: yes
  condition: hidden or restricted fields are included in snapshot exposure fields

PBV-GV-001:
  code_name: approval_required
  severity: error
  blocking: yes
  condition: publish preparation attempted before approval

PBV-BD-001:
  code_name: qualification_truth_boundary_violation
  severity: critical
  blocking: yes
  condition: Builder attempts to mutate Civilization qualification master

PBV-BD-002:
  code_name: skill_truth_boundary_violation
  severity: critical
  blocking: yes
  condition: non-PersonaOS source is treated as Persona skill truth


# FINAL DEFINITION

Persona Builder validation must use explicit codes,
explicit severity,
explicit blocking behavior,
and explicit boundary checks.
