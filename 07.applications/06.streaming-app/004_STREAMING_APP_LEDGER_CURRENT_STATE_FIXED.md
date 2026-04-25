# ============================================================
# STREAMING APP LEDGER CURRENT STATE FIXED
# ============================================================

status: current-state-fixed
scope: Streaming application inventory
owner: Boss
prepared_by: Zero

## 1. Roadmap

1. Fix the current Streaming application inventory
2. Fix planned implementation paths without starting implementation
3. Keep billing and role boundaries visible
4. Keep future expansion additive only

## 2. Current Position

Current fixed Streaming application scope in this ledger:
- StreamWatch
- StreamStudio

Current fixed implementation rule:
- implementation is not started
- implementation root policy is fixed
- implementation folders are planned paths only
- actual folder creation is not yet required
- code generation is not started

## 3. Completion Conditions

This ledger is considered correct for the current phase when it shows:
- current application inventory
- category placement
- role separation
- design path
- integrated reference
- planned implementation path
- implementation status as not started
- monetization surface and commerce boundary

## 4. Category Fixed Values

| Field | Value |
|---|---|
| Category | `06.streaming-app` |
| Design Root | `~/01.civilization-system/07.applications/06.streaming-app` |
| Planned Implementation Root | `~/03.civilization-development/06.streaming-os` |
| Primary Schema | `streaming` |
| Platforms | `iPhone / Android / PC / Tablet` |
| Language Policy | `Multilingual` |
| Currency Policy | `Multi-currency` |
| Update Rule | `Additive only` |

## 5. Streaming App Comparison Ledger

| App Key | App Name | Role Type | Primary User | Main Purpose | Main Capability Group | Design Root | Integrated Reference | Planned Implementation Path | Implementation Status | Folder Creation Status | Code Status | App Fee Status | Trial Status |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| streaming-app-001 | StreamWatch | Viewer app | Viewer | Official viewer-front application for StreamingOS | discovery / watch / resume / following / library / entitlement-aware playback / TV handoff | `~/01.civilization-system/07.applications/06.streaming-app/StreamWatch` | `00_STREAMWATCH_INTEGRATED.md` | `~/03.civilization-development/06.streaming-os/StreamWatch` | not started | not created yet | not started | undecided | undecided |
| streaming-app-002 | StreamStudio | Creator operations app | Creator / operator / team member | Official creator production, publishing, commerce, and membership operations application for StreamingOS | project / upload / draft / subtitle / review / publish / marketplace listing / revenue split prep / membership management | `~/01.civilization-system/07.applications/06.streaming-app/StreamStudio` | `00_STREAM_STUDIO_INTEGRATED.md` | `~/03.civilization-development/06.streaming-os/StreamStudio` | not started | not created yet | not started | undecided | undecided |

## 6. Fixed Interpretation Per App

### 6.1 StreamWatch

Fixed interpretation:
- official viewer-front application
- structured discovery viewer
- continuity-first viewer
- profile-aware viewer
- TV handoff aware viewer
- entitlement-aware playback surface
- purchase / rental / membership join capable entry surface

Current implementation interpretation:
- planned implementation path is fixed
- implementation work is not started
- folder creation is not started
- code creation is not started

### 6.2 StreamStudio

Fixed interpretation:
- official creator production and publishing operations application
- creator commerce operations cockpit
- membership management application
- review and publish control surface
- marketplace listing and revenue split preparation surface

Current implementation interpretation:
- planned implementation path is fixed
- implementation work is not started
- folder creation is not started
- code creation is not started

## 7. Commerce Boundary Rule

The current reviewed Streaming application source set fixes the following rule:

- app surfaces may start or configure monetized flows
- shared commerce logic remains the owner of pricing truth, transaction truth, billing truth, refund truth, and contract truth where applicable
- StreamingOS remains the owner of entitlement-aware watchability and playback eligibility

Therefore this ledger separates:
- app monetization surface
- creator configuration surface
- platform billing truth
- StreamingOS entitlement truth

## 8. Current Implementation Policy Snapshot

| Item | Fixed State |
|---|---|
| StreamingOS implementation root path policy | fixed |
| StreamWatch planned implementation path | fixed |
| StreamStudio planned implementation path | fixed |
| actual implementation start | not started |
| actual folder creation | not started |
| actual code placement | not started |
| implementation skeleton generation | not started |

## 9. Current Pricing Decision Snapshot

| Decision Item | Current State |
|---|---|
| StreamWatch end-user app pricing | undecided |
| StreamWatch trial policy | undecided |
| StreamStudio app pricing | undecided |
| StreamStudio trial policy | undecided |
| creator-side paid video capability | fixed in design |
| creator-side membership configuration capability | fixed in design |
| shared commerce owns billing truth | fixed in design |

## 10. Ledger Usage Rule

Use this ledger wording going forward:
- implementation path = planned path fixed
- implementation status = not started
- folder state = not created yet unless explicitly created later
- code state = not started unless explicitly implemented later

Do not describe planned implementation paths as already implemented.
