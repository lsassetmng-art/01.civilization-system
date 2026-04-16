# CX22073JW Secret Layer Boundary Examples
- project: CX22073JW
- document_type: secret-layer-boundary-examples
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document gives concrete boundary examples so that secret-layer interpretation does not remain abstract only.

## 2. Why Examples Matter
The secret layer is already positioned conceptually,
but future design work can still drift if concrete examples are not fixed.

## 3. Boundary Examples

### 3-1. Normal Foundation Example
Example:
- reusable health reference range
- reusable nutrition target
- reusable article / faq / learning path
- reusable template/checklist

Placement:
- normal CX22073JW layer

Reason:
- cross-consumer reusable
- not privileged by default
- compatible with ordinary caller/scope access

### 3-2. Privileged Secret Example
Example:
- future protected secret-bearing knowledge object
- future triple-only accessible protected index/support asset
- future privileged-only internal classified reference object

Placement:
- triple-only secret layer

Reason:
- requires privileged route
- must not be assumed reachable by normal caller/scope flow
- isolation is part of design identity

### 3-3. Runtime Outside Example
Example:
- user-specific measurement
- user-specific recommendation result
- per-session app workflow state
- per-case consultation text

Placement:
- outside CX22073JW

Reason:
- runtime/user/case/session specific
- not foundation reusable

## 4. Important Borderline Examples

### 4-1. Reusable but Sensitive
A reusable asset that is sensitive does not automatically become normal foundation content.
If it is intended for privileged handling, it belongs in the secret layer.

### 4-2. Indexed Secret Support
Even if an object is only for indexing/summary support,
if it serves the secret layer and requires privileged route assumptions,
it should still be treated as secret-layer side.

### 4-3. AI Optimization Support
AI-produced storage/index optimization support can belong to either:
- normal layer
- secret layer
depending on which layer the supported asset belongs to.

## 5. Boundary Test Questions
When uncertain, future design should ask:
1. Is this reusable under ordinary caller/scope assumptions?
2. Does this require privileged route semantics?
3. Would mixing this into normal layer weaken isolation?
4. Is this runtime/user/case/session data instead?

## 6. Conclusion
Boundary examples exist to keep three zones distinct:
- normal foundation layer
- privileged secret layer
- external runtime domains
