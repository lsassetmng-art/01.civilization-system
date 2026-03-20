# ============================================================
# CERTIFICATION EXAM ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Certification exam is a formal qualification test that may require payment.

exam_modes:
- official_exam
- practice_exam

official_exam:
- requires formal application
- may require civ_cash payment
- produces qualification result
- may grant certification-linked skills on pass

practice_exam:
- allowed only after the certification exam has been experienced
- used for review and preparation
- does not alter official certification result
- stores practice history only

payment_model:
- fee_currency = civ_cash by default if monetized
- unpaid official exam application must fail closed
- practice mode may be free or separately configured

pass_effects:
- certification_status_granted
- skill_gain_requested with source_type = CERTIFICATION

rules:
- only official certification result affects certification status
- only official pass may grant official certification-linked skill rewards
- practice attempts must remain separate from official result

event_flow:
- certification_exam_application_created
- certification_fee_checked
- certification_fee_paid
- official_exam_started
- official_result_published
- certification_granted
- skill_gain_requested

constitution_alignment:
- explicit payment boundary
- explicit evaluation
- no hidden qualification grant

final_rule:
Certification status and certification-linked skill gains may arise
only from paid official certification exam results.
