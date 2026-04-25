# ============================================================
# AI OPERATION DESK ARCHITECTURE OVERVIEW
# ============================================================

status: draft-fixed
app: AIOperationDesk
layer: architecture
owner: Boss
prepared_by: Zero

major_parts:
- request intake surface
- resident support surface
- main console
- work order compiler
- governance engine
- queue / retry / failure engine
- notification engine
- batch summary engine
- supported app registry
- connector taxonomy registry

two_surface_model:
- resident surface:
  - in-context support for ERP and Builder surfaces
- main console:
  - queue / review / approval / audit / retry / summary / settings

external_relations:
- AiworkerOS:
  - worker truth owner
- BusinessOS:
  - business-side commercial truth owner
- cx22073jw:
  - read-only AI-worker view surface
- supported apps:
  - controlled write / intake surfaces only
