# ============================================================
# NAMECARD SEARCH CONTRACT
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines search boundary direction for fuzzy/business-context search.

request_direction:
- query
- mode
- optional_filters
- optional_sort

response_direction:
- matching_namecards
- grouped_company_hits_optional
- related_people_hits_optional
- recent_activity_indicators_optional

