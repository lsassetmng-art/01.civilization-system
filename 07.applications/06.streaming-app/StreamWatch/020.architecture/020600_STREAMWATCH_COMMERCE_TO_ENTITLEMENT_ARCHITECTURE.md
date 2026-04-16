# ============================================================
# STREAMWATCH COMMERCE TO ENTITLEMENT ARCHITECTURE
# ============================================================

status: draft-canonical
system: StreamingOS
app: StreamWatch
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines how commercial execution and viewing entitlement are connected in the StreamWatch architecture.

## 2. Fixed Rule

Commercial execution may begin from:

- Civilization surfaces
- StreamingOS / StreamWatch surfaces

However, the commercial execution backbone is shared and should not be duplicated into two unrelated engines.

## 3. Responsibility Split

### Shared commerce execution layer owns
- quote and pricing resolution
- purchase execution
- rental execution
- membership join execution
- transaction confirmation
- billing and renewal ownership

### StreamingOS owns
- entitlement grant result
- watchability interpretation
- archive availability
- playback entry permission
- viewer-facing post-grant readiness

## 4. Output Model

The result of a successful purchase is not direct video-file delivery.
The result is an entitlement grant that StreamingOS can interpret for playback.

## 5. Architecture Consequence

This split allows the following without inconsistency:

- purchase from Civilization, watch in StreamWatch
- purchase from StreamWatch, resume on TV
- membership join from a channel or creator page, then immediate playback unlock
