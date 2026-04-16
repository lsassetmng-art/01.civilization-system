# ============================================================
# TEST GENERATION RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines runtime behavior for test-related generation.

split_behavior:
- Java unit tests are auto-generated
- integration/system/acceptance tests are generated as test item sheets

runtime_steps:
1. inspect generated / imported design context
2. inspect Java structure
3. generate unit test skeletons where applicable
4. extract higher-level test viewpoints
5. build test item sheet proposals
6. attach traceability to functions, screens, and rules

outputs:
- unit test outputs
- test item sheet outputs
- missing-test-area warnings
