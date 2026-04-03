# ============================================================
# MODEL BOOK
# TOURISM DOMAIN
# ============================================================

status: canonical
system_id: 01
layer: model
domain_id: 100
model_id: 0000
scope: civilization.model.tourism

owner: Boss
prepared_by: Zero


# PURPOSE

Define tourism ecosystems and global travel systems.


# MODEL LIST

100001 tourism_system
100002 tourism_destination
100003 tourism_region
100004 tourism_city
100005 tourism_site
100006 tourism_landmark
100007 tourism_attraction
100008 tourism_event
100009 tourism_festival
100010 tourism_operator
100011 tourism_agency
100012 tourism_package
100013 tourism_route
100014 tourism_transport
100015 tourism_airline
100016 tourism_hotel
100017 tourism_resort
100018 tourism_restaurant
100019 tourism_experience
100020 tourism_activity
100021 tourism_guide
100022 tourism_booking
100023 tourism_platform
100024 tourism_review
100025 tourism_rating
100026 tourism_demand
100027 tourism_flow
100028 tourism_market
100029 tourism_statistics
100030 tourism_data
100031 tourism_policy
100032 tourism_regulation
100033 tourism_infrastructure
100034 tourism_investment
100035 tourism_economics
100036 tourism_brand
100037 tourism_marketing
100038 tourism_promotion
100039 tourism_campaign
100040 tourism_sustainability
100041 tourism_environmental_impact
100042 tourism_cultural_impact
100043 tourism_local_community
100044 tourism_security
100045 tourism_health_safety
100046 tourism_research
100047 tourism_innovation
100048 tourism_technology
100049 tourism_strategy
100050 tourism_system_state


# STATES

planning
operating
peak_season
off_season


# EVENTS

tourist_arrival
tourism_campaign_launch
tourism_event


# RELATIONS

tourism -> culture
tourism -> transportation
tourism -> economy


# METRICS

tourist_arrivals
tourism_revenue
destination_popularity

