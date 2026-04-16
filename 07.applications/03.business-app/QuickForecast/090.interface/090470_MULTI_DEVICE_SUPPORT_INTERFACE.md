# ============================================================
# MULTI DEVICE SUPPORT INTERFACE
# iPhone / Android / Tablet
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multi-device interface support for QuickForecast.

supported_devices:
- iPhone
- Android smartphone
- iPad-class tablet
- Android tablet

interface_principles:
- smartphone-first baseline
- adaptive expansion for larger screens
- no business meaning change across device sizes
- touch-first interaction on all supported devices

smartphone_rules:
- single-column baseline
- stacked sections
- compact summary first
- primary action reachability
- sequential detail navigation

tablet_rules:
- multi-pane allowed
- side-by-side comparison allowed
- proposal and basis panel may be visible together
- profit summary and breakdown may be visible together
- detail pane may remain visible while another panel is edited

screen_specific_guidance:
- dashboard supports wider quick-summary layout on tablet
- forecast list may use list-detail layout on tablet
- forecast editor may use side-by-side form and basis panel on tablet
- action board may use denser comparison layout on tablet
- proposal builder may use draft + basis + preview on tablet
- profit preview may use summary + breakdown + basis on tablet
- settings may use grouped list + detail pane on tablet
