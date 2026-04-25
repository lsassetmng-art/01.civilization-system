# PERSONA EXTERNAL CONSUMPTION ALLOWED SURFACE LEDGER

status: confirmed
system: PersonaOS
layer: integration
confirmed_at: 20260418_073938

purpose:
Lists what external OSs may and may not consume from PersonaOS.

allowed_external_surface:
- signed snapshot
- snapshot metadata
- signature verification data
- revocation verification data
- event contract
- event envelope specification
- namespace-governed contract surface

forbidden_external_surface:
- personas direct read
- persona_state direct read
- growth_core_state direct read
- memory_state direct read
- direct mutable visual work-state read
- any direct update into PersonaOS internal mutable truth

integration_rule:
All external integrations must be implemented as either:
- event intake into PersonaOS
- signed snapshot consumption out of PersonaOS

forbidden_patterns:
- direct DB read by external OS
- direct DB write by external OS
- bypass of snapshot issue before release
- bypass of signature and revocation checks

