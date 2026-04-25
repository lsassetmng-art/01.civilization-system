# PERSONA EDGE APPLY ORCHESTRATOR TYPESCRIPT LAYOUT SPEC

status: implementation-code-prep-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_113441

target:
- edge_apply_orchestrator

recommended_file_layout:
- nowIso helper
- structured log helper
- json response helper
- safeIso helper
- canonicalize helper
- base64 helpers
- signEd25519 helper
- sha256Hex helper
- tryLogApplyRun helper
- loadControl helper
- disabled helper
- clampInt helper
- Deno.serve main orchestrator entry

recommended_internal_units:
1. env loader
2. auth gate
3. body parser
4. control gate
5. idempotency checker
6. registry loader
7. persona resolver
8. growth event ensure writer
9. engine invoker
10. processed marker
11. snapshot trigger caller
12. audit log success writer
13. fatal error writer

design_rule:
Keep helper functions side-effect-small and stage-oriented.
The serve function should remain an orchestrator, not a truth mutation owner.

naming_guidance:
Use orchestrator-oriented naming in comments, function grouping, and future refactors
even when legacy filename continuity is preserved.

