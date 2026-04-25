# ============================================================
# ALLOCATION SPLIT RELATION MEMO
# ============================================================

status: relation-memo
layer: meta
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Clarifies the relation between:
- Fixed Fee and Percentage Allocation Common
- Revenue Split Editor Common

This memo exists because both candidates are strong,
but they should not be prematurely merged or promoted
without a clear layered ownership model.

relation_subjects:
- Fixed Fee and Percentage Allocation Common
- Revenue Split Editor Common

core_judgment:
- Fixed Fee and Percentage Allocation Common is the lower-level allocation-rule foundation
- Revenue Split Editor Common is the higher-level domain-facing split editor
- they are related, but not identical
- they should remain separate unless future evidence proves one is redundant

layered_ownership_model:

  Fixed_Fee_and_Percentage_Allocation_Common:
    owns:
      - allocation entry structure
      - fixed-fee definition
      - percentage definition
      - mixed allocation validation
      - allocation constraints
      - allocation preview summary
    should_not_own:
      - domain-facing revenue split workflow wording
      - collaborator-specific revenue-editing framing
      - broader monetization editor narrative

  Revenue_Split_Editor_Common:
    owns:
      - participant-facing split editing surface
      - split summary exposure
      - split workflow framing
      - split-state normalization
      - domain-facing split save and preview behavior
    should_not_own:
      - lower-level generic allocation-rule foundation
      - generalized fixed-fee/percentage rule semantics beyond split editing
      - accounting or payout execution

recommended_relation:
  - Revenue Split Editor Common may consume or depend on Fixed Fee and Percentage Allocation Common
  - Fixed Fee and Percentage Allocation Common should remain reusable outside revenue-split-only scenarios
  - the lower layer should not inherit domain-specific wording from the upper layer

anti_merge_rules:
- do not merge them only because both mention percentages
- do not let the split editor absorb generic allocation foundations
- do not let the allocation foundation become overfit to creator revenue-sharing language
- do not decide shared adoption for one by automatically forcing the same result on the other

shared_adoption_interpretation:
- both are strong candidates
- both are still relation-sensitive
- both can proceed later,
  but only after reviewers confirm the layered ownership split is acceptable

final_note:
Use this memo whenever the review asks:
"why are these two common candidates separate?"
