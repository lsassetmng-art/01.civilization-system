# ============================================================
# PROJECT FLOW FEATURE SCREEN OUTPUT MAPPING NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep mapping between features,
screens,
and outputs.

mapping_rules:
- each major feature should have at least one clear home screen
- each customer-facing output should map to explicit source data
- output generation should not rely on ambiguous screen-only state
- device support should be inherited from canonical device parity rules

important_mappings:
- template and WBS proposal map to schedule proposal preview and customer-facing schedule
- memo and decision-note data map to decision note output
- task and open action data may map to follow-up action list
- issue/risk data map to issue/risk material outputs
