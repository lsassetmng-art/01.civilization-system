# PERSONA OS OPERATIONAL MAINTENANCE CHARTER

status: absolute-design-complete
system: PersonaOS
layer: implementation
confirmed_at: 20260419_172249

purpose:
Defines the final charter for maintaining PersonaOS after design completion.

charter_principles:
1. atlas first when scope is unclear
2. packet lookup first when packetized surface exists
3. master ledger first for state and priority
4. one packet or one bundle only by default
5. minimum change first
6. changelog required
7. contradiction must be explicit before linked-scope reopen
8. executable work forbidden by default

allowed_operational_actions:
- consult completed design assets
- update one packet or one bundle minimally
- refine already-open non-blocking wording
- maintain registry, routing, and ledger consistency
- archive and supersede old assets correctly

forbidden_operational_actions:
- broad redesign by default
- uncontrolled cross-family reopening
- silent phase transition into code work
- simultaneous competing active packets for the same role
- implementation execution under maintenance mode

charter_rule:
PersonaOS is now governed as a completed design system under maintenance discipline.
