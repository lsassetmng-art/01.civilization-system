# PERSONA VISUAL AND ASSET FAMILY LINEAGE AND ARTIFACT POLICY

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_122151

purpose:
Fixes lineage and artifact-state policy for visual and asset family behavior.

artifact_states:
- work_state_job
- composed_candidate
- uploaded_candidate
- generated_candidate
- authorized_release_candidate
- released_artifact

lineage_chain_examples:
- visual-job-create -> visual-compose -> visual-upload -> publish path -> released_artifact
- persona-auto-generate-part -> candidate asset -> publish path -> released_artifact
- persona_build_manifest -> manifest output -> release policy check -> released artifact or internal manifest only

lineage_rules:
- work_state_job is not released_artifact
- uploaded_candidate is not released_artifact by itself
- generated_candidate is not released_artifact by itself
- released_artifact requires explicit release lineage
- release lineage must stay distinguishable from work-state lineage

approval_dependency_rule:
Where governance is required, authorized_release_candidate must pass through approval and publish family before becoming released_artifact.

