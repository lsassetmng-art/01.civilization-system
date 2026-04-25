# ============================================================
# STATIC ART OS PERSONA REFERENCE NEXT STEP BOUNDARY NOTE
# ============================================================

status: boundary-note
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Clarify the next valid step after exact design completion.

next_valid_steps:
- finalize external asset canonical table exact name when implementation begins
- produce migration-ready SQL wrapper if needed
- wire internal reflection endpoints in implementation
- implement UI read-side and local_view_config editing
- implement test cases for no-duplication / no-direct-mutation / signed snapshot basis

still_forbidden:
- Persona canonical ownership inside StaticArtOS
- direct Persona canonical mutation path
- local invented Persona truth fallback
- reopening signed-snapshot boundary decision without explicit redesign

next_step_rule:
- move from exact design to controlled implementation only
- do not re-open already completed exact design unless a concrete contradiction is found
