# ============================================================
# AI OPERATION DESK TARGET WORK LEDGER FREEZE
# ============================================================

status: freeze-candidate
app: AIOperationDesk
layer: operations
owner: Boss
prepared_by: Zero

target_work_types_v1:
- supported app explanation
- supported app operation QA
- ERP configuration method explanation
- ERP field explanation
- ERP failure response guidance
- ERP provisional voucher draft
- proposal draft request
- estimate draft request
- execution request creation
- review package creation
- approval package creation
- retry request creation
- batch summary generation

v1_rules:
- all target work types must map to supported app registry entries
- draft work must remain draft until separately finalized
- high-risk actions require governance gates
