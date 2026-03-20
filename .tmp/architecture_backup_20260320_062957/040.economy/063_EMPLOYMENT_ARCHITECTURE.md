# ============================================================
# EMPLOYMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Employment is the formal economic relationship between actor and organization.

purpose:
- connect labor to income
- bridge education, exam, interview, and company systems
- define job eligibility and role assignment

employment_types:
- part_time
- full_time
- public_service
- executive
- contract_work

core_attributes:
- employer_id
- employee_id
- role_id
- compensation_scheme
- employment_status
- hired_at
- terminated_at

employment_status:
- applicant
- under_review
- hired
- active
- suspended
- terminated

rules:
- employment begins only after explicit hiring result
- salary rights exist only for active eligible employment states
- termination must be explicit and logged
- organizations cannot silently assign employment

event_flow:
- job_application_created
- interview_completed
- hiring_decision_published
- employment_created
- payroll_cycle_triggered
- employment_terminated

integration_points:
- exam
- education
- company
- government
- personal_income
- taxation

constitution_alignment:
- explicit hiring authority
- no hidden role assignment
- auditable employment lifecycle

final_rule:
Employment must always begin, change, and terminate through explicit,
auditable employment events.
