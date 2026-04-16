# ============================================================
# STREAMWATCH ENTITLEMENT OWNERSHIP PRINCIPLES
# ============================================================

status: canonical-draft
layer: constitution
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document explains why entitlement, watchability, and archive availability remain StreamingOS-owned even when commercial execution may start elsewhere.

## 2. Core Principle

Payment success does not directly equal playback readiness inside the viewer app.
Playback readiness is determined from entitlement and policy interpretation inside StreamingOS.

## 3. Why Entitlement Must Stay StreamingOS-Side

StreamingOS must remain canonical for entitlement because it owns:

- playback eligibility
- live availability interpretation
- archive availability interpretation
- device and route playback constraints
- profile restriction interaction
- viewer-facing watchability state

## 4. Commerce Versus Entitlement

Commerce truth answers:
- Was the product bought?
- Was the rental confirmed?
- Was membership joined?

Streaming entitlement truth answers:
- Can this viewer watch now?
- Can this viewer watch live?
- Can this viewer watch archive?
- Is the content locked by policy or route limits?
- Which CTA should the viewer see now?

## 5. Entitlement Examples

Typical entitlement interpretations include:

- permanent_purchase
- rental_active
- rental_expired
- membership_entitled
- ticket_entitled
- preorder_not_yet_playable
- unavailable

## 6. Viewer-Facing Consequence

The viewer app must never assume:
“payment complete therefore directly playable.”

Instead, it must resolve playback through entitlement-aware watchability checks.

## 7. Final Principle Statement

StreamingOS owns the truth of whether content is watchable now, even when the money-side flow begins somewhere else.
