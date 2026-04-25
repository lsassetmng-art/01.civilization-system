# ============================================================
# CIVILIZATION REQUEST ROUTING MATRIX
# ============================================================

status: routing-matrix
layer: implementation
domain: 018.meta
subdomain: 730.request-intake-and-routing-pack
document_id: 1201851303
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines where each classified request must route.

## 2. Routing Matrix

route_01:
- request_class: read_only_confirmation
- route_to: canonical posture handoff / current posture one-page / read-only confirmation path

route_02:
- request_class: nonsemantic_alignment_request
- route_to: maintenance / errata path

route_03:
- request_class: recovery_request
- route_to: restoration bundle / recovery protocol

route_04:
- request_class: governed_semantic_change_request
- route_to: decision revision governance / correct template / governed change gate

route_05:
- request_class: invalid_or_shortcut_request
- route_to: safe refusal / re-anchor / restart intake

## 3. Routing Rule

Classification must happen before routing.
Routing must happen before any deep action.

## 4. Hard Rule

Do not let request wording alone decide routing.
Canonical classification decides routing.

## 5. Acceptance Checklist

- routing matrix fixed
- routing rule fixed
- no-wording-only-routing rule fixed
