# ============================================================
# STREAMING OS NOTIFICATION SCREEN INVENTORY AND TRANSITION MAP
# ============================================================

status: canonical-draft
system: streaming-os
domain: screen-inventory-and-transition-map
owner: Boss
prepared_by: Zero

notification_screens:
- notification_inbox_home
- notification_detail
- creator_notification_list
- viewer_notification_list
- review_alert_list
- review_alert_detail
- escalation_alert_list
- escalation_alert_detail
- notification_settings

transitions:
- notification_inbox_home
  -> creator_notification_list
  -> viewer_notification_list
  -> review_alert_list
  -> escalation_alert_list
  -> notification_settings

- creator_notification_list
  -> notification_detail

- viewer_notification_list
  -> notification_detail

- review_alert_list
  -> review_alert_detail

- escalation_alert_list
  -> escalation_alert_detail

primary_entry:
- notification_inbox_home

canonical_statement:
Notification-side screen flow
shall distinguish:
- creator notifications
- viewer notifications
- review alerts
- escalation alerts
- notification settings

