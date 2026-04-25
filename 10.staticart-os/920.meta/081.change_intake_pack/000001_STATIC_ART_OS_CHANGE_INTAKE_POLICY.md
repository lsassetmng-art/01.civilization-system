# ============================================================
# STATIC ART OS CHANGE INTAKE POLICY
# ============================================================

status: change-intake-policy
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define how future changes should be accepted into the StaticArtOS pack
without breaking the organized structure created in this chat.

change_intake_rules:
- Accept additive changes first.
- Do not rewrite root navigation without a deliberate reason.
- Do not reopen settled ownership boundaries casually.
- Do not introduce Persona core duplication.
- Do not introduce direct Persona canonical mutation paths.
- Do not silently change launcher behavior from read-only to write behavior.
- Prefer explicit report generation for meaningful maintenance changes.
- Prefer one well-scoped patch over broad unfocused rewrite.

required_before_change:
- identify target area
- identify whether the change is read-only, design-only, or execution-related
- identify whether Persona-linked display/reference is affected
- identify whether root portal / dashboard / launcher registry must be updated

required_after_change:
- update traceability if the change adds a new canonical navigation artifact
- update launcher registry if a new launcher is introduced
- run drift audit if structure may have changed
- run read-only sweep if the change affects major navigation/review layers

blocked_change_types:
- Persona mutable canonical ownership inside StaticArtOS
- direct Persona canonical mutation path
- silent removal of final landing portal
- silent removal of status dashboard
- silent removal of review/execution entry launchers
