# PERSONA LIFECYCLE AND CIVILIZATION OWNERSHIP POLICY

status: design-freeze-ready
system: PersonaOS
layer: policy
confirmed_at: 20260418_140508

purpose:
Fixes ownership policy for lifecycle and civilization integration functions.

ownership_rules:
- persona-create owns lifecycle entry only
- persona-event-history owns retrieval surface only
- civilization-event-producer owns production of integration events only
- event-validate owns contract validation only
- civilization-event-dispatcher owns internal event routing only
- civilization-dead-notify owns delivery failure signaling only
- external_dispatcher owns outward dispatch only

forbidden_policy_misreads:
- persona-create is not general truth mutation owner beyond lifecycle entry contract
- persona-event-history is not history truth owner
- event-validate is not runtime engine owner
- dispatcher is not canonical mutable truth owner
- dead notification is not retry engine owner by itself
- external_dispatcher is not external truth replication owner by default

policy_rule:
Truth mutation remains inside canonical apply boundary such as state_apply or equivalent runtime engine path.

