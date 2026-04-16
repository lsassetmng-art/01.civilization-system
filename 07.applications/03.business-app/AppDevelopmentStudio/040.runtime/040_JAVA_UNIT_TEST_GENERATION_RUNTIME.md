# ============================================================
# JAVA UNIT TEST GENERATION RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines auto-generation of Java unit tests.

runtime_steps:
1. inspect generated or target Java structure
2. identify testable units
3. generate test class skeletons
4. generate core assertions
5. mark unresolved cases
6. emit test outputs
