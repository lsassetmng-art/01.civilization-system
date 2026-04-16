# ============================================================
# ORDER FLOW RESUME PRIORITY NOTE
# ============================================================

status: draft-resume-priority
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines priority order when resuming OrderFlow later.

resume_priorities:
  priority_1:
    - reflect Sato review if available

  priority_2:
    - refine seed SQL if local/dev testing is needed next

  priority_3:
    - continue InvoiceFlow receiver-side exact if downstream billing work is next

  priority_4:
    - prepare approved execution bundle only after explicit gate pass

resume_rule:
  - review reflection outranks new expansion work
  - execution packaging comes after review closure, not before

