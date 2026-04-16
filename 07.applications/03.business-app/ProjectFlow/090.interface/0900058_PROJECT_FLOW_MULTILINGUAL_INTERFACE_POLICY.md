# ============================================================
# PROJECT FLOW MULTILINGUAL INTERFACE POLICY
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines multilingual interface behavior.

interface_targets:
- navigation labels
- screen titles
- action labels
- filter labels
- material selectors
- export selectors
- status chips and badges

interface_rules:
- language choice should affect visible labels consistently
- same screen should not mix languages unintentionally
- read-only state wording should also be localized
- blocked-action explanation should be localized

device_rules:
- smartphone and pc must expose the same language capability
- only layout differs by device, not language support
