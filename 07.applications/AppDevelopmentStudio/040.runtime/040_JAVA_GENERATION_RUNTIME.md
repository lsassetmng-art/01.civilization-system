# ============================================================
# JAVA GENERATION RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines runtime behavior for Java source generation.

runtime_steps:
1. resolve target Java output scope
2. resolve package policy
3. inspect reusable component catalog
4. decide reuse-first or generate-new
5. generate package structure
6. generate classes and interfaces
7. generate validation and mapping logic
8. generate service / repository skeletons
9. generate warnings and unresolved dependency notes
10. create source-code proposal

outputs:
- Java source proposal
- package structure proposal
- reuse trace
- unresolved specification warnings
