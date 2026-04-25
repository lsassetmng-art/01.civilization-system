# ============================================================
# ASSET STATE BOUNDARY DECISION
# ============================================================

status: canonical-decision
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

decision_id:
K2-002

decision:
publication_state, review_state, and governance_state remain three distinct state families.

publication_state:
- defines viewer/distribution-facing availability status
- answers whether an archive/clip is available in publishing/viewing terms
- is the state family most directly tied to public/viewer projection

review_state:
- defines review workflow status
- answers where the asset is in AI/human review progression
- does not directly equal public availability

governance_state:
- defines policy/rule eligibility status
- answers whether policy/governance conditions allow or restrict distribution
- may gate publication eligibility but does not replace publication_state

canonical_relationship:
- review_state may feed governance interpretation
- governance_state may restrict or permit publication transitions
- publication_state remains the canonical distribution/output state
- none of the three states substitutes for another

forbidden_collapse:
- publication_state must not be used as a hidden review status
- review_state must not be used as public watch availability
- governance_state must not be treated as the final public distribution state by itself

canonical_effect:
K2 archive/clip payloads, auth/RLS, and screen mappings must preserve
these three meanings as separate and non-collapsed.
