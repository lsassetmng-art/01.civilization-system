# CX22073JW Runtime Boundary Matrix
- project: CX22073JW
- document_type: runtime-boundary-matrix
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document fixes what belongs inside CX22073JW and what belongs outside it.

## 2. Boundary Matrix

| Area | Example | Placement | Reason |
|------|---------|-----------|--------|
| fixed knowledge | article, faq, concept explanation | CX22073JW | reusable canonical knowledge |
| classification | discipline, topic, audience, difficulty | CX22073JW | reusable reference structure |
| trust / governance metadata | source, review, publication, registry | CX22073JW | reusable governance layer |
| benchmark/reference | health ranges, nutrition targets, food tags | CX22073JW | reusable comparison base |
| reusable template | recipe template, checklist template, life event template | CX22073JW | reusable template asset |
| helper logic | views/functions for compare/score/candidates | CX22073JW | reusable foundation logic |
| user measurement | blood pressure log, weight log | app-side runtime domain | user-specific changing data |
| user intake log | daily intake actual records | app-side runtime domain | user-specific changing data |
| recommendation result | per-user suggested meals | app-side runtime domain | generated runtime output |
| application context | per-user workflow/application progress | app-side runtime domain | execution context |
| interview context | per-session notes and outcomes | app-side runtime domain | execution context |
| UI selected state | selected persona/background | app-side runtime domain | runtime continuity state |

## 3. Special Rule for CareerLaunch
CareerLaunch must split:
- reusable template/reference side -> CX22073JW
- user/application/interview runtime workspace -> CareerLaunch operational domain

## 4. Special Rule for SQL Helpers
Foundation SQL helper assets may receive runtime input,
but they do not become runtime data storage.
The helper logic remains a reusable base asset.

## 5. Conclusion
The boundary is:
- reusable canonical/reference/template/logic -> CX22073JW
- per-user/per-case/per-session runtime state -> outside CX22073JW
