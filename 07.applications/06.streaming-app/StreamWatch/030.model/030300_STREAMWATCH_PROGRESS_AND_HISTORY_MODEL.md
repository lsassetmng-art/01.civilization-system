# ============================================================
# STREAMWATCH PROGRESS AND HISTORY MODEL
# ============================================================

status: canonical-draft
layer: model
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines the separation between watch-history fact and resume-progress truth.

## 2. Core Rule

History and progress are different models.

### History answers
What did the viewer watch?

### Progress answers
Where should the viewer resume?

## 3. Why Separation Is Required

Without separation:

- completed items remain falsely resumable
- partial items lose accurate resume position
- multi-device resume conflicts become harder to resolve
- continue-watching quality degrades

## 4. Completion Bands

The canonical interpretive bands are:

- not_started = below 2%
- in_progress = 2% to below 90%
- nearly_finished = 90% to below 98%
- completed = 98% or remaining 30 seconds or less

## 5. Multi-Device Rule

Progress conflict resolution must prefer:

- valid latest write
- completed over weaker in-progress states
- active cast-session truth when applicable
