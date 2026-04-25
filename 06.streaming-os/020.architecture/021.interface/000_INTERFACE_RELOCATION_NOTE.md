# ============================================================
# STREAMING OS INTERFACE RELOCATION NOTE
# ============================================================

status: canonical-note
system: StreamingOS
owner: Boss
prepared_by: Zero

meaning:
The former top-level folder "019.interface" was treated as a
top-level rule violation and relocated under:

- 020.architecture/021.interface

reason:
- canonical StreamingOS root is 06.streaming-os
- top-level category structure must remain rule-compliant
- interface-related materials are preserved without keeping the
  invalid top-level folder shape
