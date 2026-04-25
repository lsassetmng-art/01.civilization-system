# ============================================================
# NAMECARDMANAGER COMMONOS APPLICABILITY EXACT
# ============================================================

status: canonical
app: NameCardManager
category: 03.business-app

provider_consumer_rule:
- CommonOS provider: ~/03.civilization-development/12.common-os
- BusinessOS consumer: ~/03.civilization-development/03.business-os/_commonos
- NameCardManager app runtime: ~/03.civilization-development/03.business-os/NameCardManager

_commonos_usage:
adapter:
  responsibility:
    - convert NameCardManager app state to CommonOS-friendly input shape
  must_not_hold:
    - API payload canon
    - DB canon
    - business decision core

bridge:
  responsibility:
    - bridge runtime capabilities and CommonOS provider usage
  must_not_hold:
    - secrets
    - service role keys

mapper:
  responsibility:
    - map domain results to list/detail/form/sync view models
  must_not_hold:
    - domain truth

presenter:
  responsibility:
    - compose shell/list/detail/form using CommonOS components
  must_not_hold:
    - business final decisions

theme:
  responsibility:
    - absorb BusinessOS look differences using tokens and variants

sync:
  responsibility:
    - queue/retry/conflict/offline presentation connection
  must_not_hold:
    - queue business meaning

test:
  responsibility:
    - verify render / mapping / bridge / presenter connection

common_components_to_use:
- App Shell
- Card
- List
- Search Bar
- Filter Panel
- Status Chip
- Attachment UI
- Offline Queue Status UI
- Sync Retry UI
- Conflict Review UI
- Confirm UI
- Empty State
- Error State
- Loading State

variants:
- card.record
- panel.sync
- panel.conflict
- input.default
- button.primary

app_side_canon:
- card intake business state
- contact payload
- company payload
- relationship event meaning
- merge review decision
- validation rules
- DB logical design
- API exact payload
- privacy and permission rules

commonos_side_allowed:
- shared UI
- shell
- token
- sync presentation
- queue visual rule
- conflict presentation
