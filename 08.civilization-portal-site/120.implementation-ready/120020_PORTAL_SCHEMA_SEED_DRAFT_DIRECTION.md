# ============================================================
# PORTAL SCHEMA SEED DRAFT DIRECTION
# ============================================================

status: draft-additive
layer: implementation-ready
schema: portal
system: civilization-portal-site
owner: Boss
prepared_by: Zero

initial_copy_keys:
- top.hero.title
- top.hero.description
- top.ai_helpdesk.title
- top.ai_helpdesk.description
- top.ai_helpdesk.cta
- civilization.page.title
- civilization.page.description
- os.list.page.title
- os.list.page.description
- guide.page.title
- guide.page.description
- login.page.title
- signup.page.title

initial_helpdesk_entries:
- portal_top_ai_helpdesk

initial_nav_roots:
- civilization_root
- os_root
- application_root
- helpdesk_root

initial_page_sections:
top:
- hero
- ai_helpdesk
- app_tree
- quick_links

os_list:
- os_tree

guide:
- intro
- steps
