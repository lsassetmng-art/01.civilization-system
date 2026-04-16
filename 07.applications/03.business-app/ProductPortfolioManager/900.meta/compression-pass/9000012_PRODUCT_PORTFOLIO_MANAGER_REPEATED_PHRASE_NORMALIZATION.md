# ============================================================
# PRODUCT PORTFOLIO MANAGER REPEATED PHRASE NORMALIZATION
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides normalization targets for common repeated phrase families.

repeated_phrase_families:

  - family_id: PPM-RPT-001
    topic: ERP boundary
    common_repetition:
      - ERP remains truth
      - no silent ERP mutation
      - application judgment is separate
    normalization_rule:
      Keep the full warning in constitution/policy/integration.
      Use shorter references elsewhere unless the layer needs explicit restatement.

  - family_id: PPM-RPT-002
    topic: forecast advisory meaning
    common_repetition:
      - forecast is advisory
      - forecast is not truth
      - forecast is not final decision
    normalization_rule:
      Keep full wording in constitution/policy/integration.
      Shorten in architecture/implementation when advisory meaning is already established.

  - family_id: PPM-RPT-003
    topic: review versus approval
    common_repetition:
      - review is not approval
      - review completion is not final approval
    normalization_rule:
      Preserve strongly in flow/policy/security.
      Use lighter wording elsewhere.

  - family_id: PPM-RPT-004
    topic: classification versus lifecycle
    common_repetition:
      - lifecycle is not classification
      - classification is strategy meaning
    normalization_rule:
      Keep strong wording in constitution/model/policy.
      Use shorter references in screen/implementation docs.

  - family_id: PPM-RPT-005
    topic: proposal versus execution
    common_repetition:
      - proposal is not execution truth
      - approved is not completed
    normalization_rule:
      Keep strong wording in constitution/policy/flow.
      Use concise reminders in UI requirements.

formal_conclusion:
Normalization should reduce reading fatigue
without weakening safety-critical meaning.
