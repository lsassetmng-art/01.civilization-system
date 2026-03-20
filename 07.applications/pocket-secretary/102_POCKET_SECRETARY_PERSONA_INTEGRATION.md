# ============================================================
# PERSONA INTEGRATION
# ============================================================

status: canonical
component: persona-integration
owner: Boss
prepared_by: Zero


# PURPOSE

Defines integration between PocketSecretary
and PersonaOS.


# RENDERING FLOW

PocketSecretary
 ↓
Manifest API
 ↓
persona-visual-runtime
 ↓
Bitmap composition


# CHARACTER MODEL

Characters are created from PersonaPackage.

PersonaPackage

 ├ persona_profile
 ├ visual_profile
 ├ voice_profile
 └ skill_pack


# SECRETARY SWITCHING

Users may switch active secretaries.

Character rendering updates automatically.
