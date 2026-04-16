# ============================================================
# TEST GENERATION POLICY
# ============================================================

status: canonical-draft
layer: policy
application: App Development Studio

policy_split:
- Java unit tests are auto-generated
- integration/system/acceptance tests are emitted as test item sheets

policy_principles:
- generated unit tests should reflect available implementation detail
- higher-level tests should expose viewpoints and expected results
- test items should remain editable by users
