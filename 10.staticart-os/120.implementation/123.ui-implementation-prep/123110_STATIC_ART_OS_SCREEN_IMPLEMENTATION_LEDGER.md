# ============================================================
# STATIC ART OS SCREEN IMPLEMENTATION LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

screen_groups:
  creator:
    - SA-CR-001 Asset Draft List
    - SA-CR-010 Create Asset
    - SA-CR-020 Asset Workspace
  marketplace:
    - SA-MK-001 Marketplace List
    - SA-MK-010 Product Detail
    - SA-MK-020 Purchase Result Overlay
  library:
    - SA-LB-001 My Library
    - SA-LB-010 Continue Reading
    - SA-LB-020 Continue Viewing
    - SA-RD-001 Reader
    - SA-RD-010 Reader Bookmark/Note Panel
    - SA-VW-001 Viewer
  admin:
    - SA-AD-001 Review Queue
    - SA-AD-010 Review Detail
    - SA-AD-020 Restriction/Delist/Audit Detail

screen_task_template:
  required_fields:
    - screen id
    - purpose
    - route
    - required api endpoints
    - required data model
    - primary actions
    - button states
    - loading/empty/error/forbidden states
    - asset_type split
    - entry and exit transitions

implementation_priority:
  - Asset Draft List
  - Create Asset
  - Asset Workspace Files/Metadata/Rights/Self Check/Review/Publish
  - Marketplace List and Product Detail
  - My Library
  - Reader and Viewer
  - Review Queue and Review Detail
