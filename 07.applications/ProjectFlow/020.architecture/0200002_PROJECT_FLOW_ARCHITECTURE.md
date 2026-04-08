# ============================================================
# PROJECT FLOW ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

architecture_style:
Operational front with explicit integration boundary.

modules:
1. dashboard module
2. project module
3. task module
4. milestone module
5. issue/risk module
6. time entry module
7. sync module
8. notification module
9. permission module
10. integration request module

design_rules:
- ERP-owned fields must remain separable
- local operational fields must remain editable by role
- import must not overwrite protected local fields
- export must only use mapped outbound fields
- conflict state must be explicit
