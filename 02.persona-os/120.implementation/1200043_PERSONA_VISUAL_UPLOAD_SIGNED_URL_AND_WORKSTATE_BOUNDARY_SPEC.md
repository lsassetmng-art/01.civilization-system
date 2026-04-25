# PERSONA VISUAL UPLOAD SIGNED URL AND WORKSTATE BOUNDARY SPEC

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_122151

purpose:
Fixes boundary behavior around upload, delivery, and work-state.

workstate_boundary:
- visual job state stays internal or controlled
- compose output stays candidate-level unless release lineage is attached
- upload completion does not imply release

signed_url_boundary:
- signed URL helper is delivery support only
- signed URL issuance must respect authorization policy
- signed URL helper must not change release status
- signed URL helper must not expose mutable truth

delivery_rule:
Authorized delivery and public release are distinct states.
A signed URL may support authorized delivery without implying public released listing.

