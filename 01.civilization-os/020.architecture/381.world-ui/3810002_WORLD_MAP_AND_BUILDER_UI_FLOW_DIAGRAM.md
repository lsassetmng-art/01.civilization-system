# ============================================================
# WORLD MAP AND BUILDER UI FLOW DIAGRAM
# ============================================================

status: canonical
layer: architecture
scope: world-map-and-builder-ui-flow
component: world-map-and-builder-ui-flow

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical flow diagrams
for Civilization world navigation,
map hierarchy,
common map menu,
state builder,
city builder,
district entry,
and facility entry.

This document is a routing and flow companion
to WORLD_MAP_AND_BUILDER_UI_ARCHITECTURE.

This document defines flow structure only.

This document does not redefine:

- detailed field-level interface contracts
- auth backend internals
- story scenario internals
- builder validation formulas
- facility operation internals


# ============================================================
# 2. TOP-LEVEL ROUTE
# ============================================================

~~~mermaid
flowchart TD
    A[Login Screen] --> B[Global Map]
    B --> C[Continent Map]
    C --> D[City Map]

    A --> E[Create New User]
    E --> A

    A --> F[Password Reset Mail Request]
    F --> G[Mail Link]
    G --> H[Password Reset Screen]
    H --> A

    A --> I[Legal Explanation Screen]

    A --> J[Aerial Access Token Check]
    J --> K[Story Mode]
    K --> L[Story Select Screen]
    L --> M[Story Screen]
~~~

Story mode entry exists only from the login screen.


# ============================================================
# 3. MAP COMMON MENU FLOW
# ============================================================

~~~mermaid
flowchart TD
    A[Global Map] --> T1[Top Right Menu]
    A --> B1[Bottom Right Common Menu]

    C[Continent Map] --> T2[Top Right Menu]
    C --> B2[Bottom Right Common Menu]

    D[City Map] --> T3[Top Right Menu]
    D --> B3[Bottom Right Common Menu]

    T1 --> L1[Legal Explanation]
    T1 --> H1[Help]

    T2 --> L2[Legal Explanation]
    T2 --> H2[Help]

    T3 --> L3[Legal Explanation]
    T3 --> H3[Help]

    B1 --> HM1[Home]
    B1 --> S1[Search]
    B1 --> N1[Notifications]
    B1 --> M1[Marketplace]
    B1 --> P1[Profile]
    B1 --> ST1[Settings]

    B2 --> HM2[Home]
    B2 --> S2[Search]
    B2 --> N2[Notifications]
    B2 --> M2[Marketplace]
    B2 --> P2[Profile]
    B2 --> ST2[Settings]

    B3 --> HM3[Home]
    B3 --> S3[Search]
    B3 --> N3[Notifications]
    B3 --> M3[Marketplace]
    B3 --> P3[Profile]
    B3 --> ST3[Settings]
~~~

Search must support at minimum:

- facility search
- state search


# ============================================================
# 4. GLOBAL MAP FLOW
# ============================================================

~~~mermaid
flowchart TD
    A[Global Map] --> B[Continent Tap]
    B --> C[Continent Map]

    A --> D[Continent Information Panel]

    D --> D1[Characteristics]
    D --> D2[Population]
    D --> D3[Number of States]
    D --> D4[Other Continent Metadata]
~~~

Global map is the top-level world map.


# ============================================================
# 5. CONTINENT MAP FLOW
# ============================================================

~~~mermaid
flowchart TD
    A[Continent Map] --> B[State Tap]
    B --> C[City Map]

    A --> D[State List]
    D --> E[State Information]

    A --> F[Empty Area Tap]
    F --> G[State Builder Start]

    A --> H[Back]
    H --> I[Global Map]
~~~

Continent map is the state-selection layer.


# ============================================================
# 6. STATE BUILDER FLOW
# ============================================================

~~~mermaid
flowchart TD
    A[Continent Map] --> B[Empty Area Tap]
    B --> C[State Builder Start]

    C --> D[State Template Selection]
    D --> E[Territory / Area Selection]
    E --> F[Capital / Core Point Selection]
    F --> G[State Identity Setup]
    G --> H[Government / Policy Setup]
    H --> I[Population / Initial Resource Setup]
    I --> J[Validation Review]
    J --> K{Valid?}

    K -- No --> E
    K -- Yes --> L[State Create]
    L --> M[State Information]
    M --> N[City Map]
~~~

Territory / Area Selection is the actual
state territory determination step.

Empty Area Tap is only the entry trigger.


# ============================================================
# 7. STATE TERRITORY SCALE RULE
# ============================================================

~~~mermaid
flowchart TD
    A[Territory / Area Selection] --> B[10km x 10km State Cells]
    B --> C[Connected Cell Selection]
    C --> D[Selected Cell Count]
    C --> E[Selected Total Area]
    C --> F[Neighbor Boundary Check]
    C --> G[Invalid Terrain Check]
    C --> H[Minimum State Size Check]
~~~

Recommended canonical minimum:

- state cell = 10km x 10km
- minimum state establishment = 10 connected cells
- approximate minimum area = 1,000 km²


# ============================================================
# 8. CITY MAP FLOW
# ============================================================

~~~mermaid
flowchart TD
    A[City Map] --> B[City List]
    B --> C[City Information]

    A --> D[Empty Area Tap]
    D --> E[City Builder Start]

    A --> F[Facility Tap]
    F --> G[Facility Overview]

    A --> H[District Tap]
    H --> I[District Detail Information]

    A --> J[Back]
    J --> K[Continent Map]
~~~

City map is the city-local operational entry layer.


# ============================================================
# 9. CITY BUILDER FLOW
# ============================================================

~~~mermaid
flowchart TD
    A[City Map] --> B[Empty Area Tap]
    B --> C[City Builder Start]

    C --> D[City Template Selection]
    D --> E[Boundary / Area Selection]
    E --> F[Core / Center Selection]
    F --> G[City Identity Setup]
    G --> H[District / Zone Planning]
    H --> I[Infrastructure Setup]
    I --> J[Initial Facility Setup]
    J --> K[Validation Review]
    K --> L{Valid?}

    L -- No --> E
    L -- Yes --> M[City Create]
    M --> N[City Information]
    N --> O[City Map]
~~~

City area selection uses city-scale cells.


# ============================================================
# 10. CITY SCALE RULE
# ============================================================

~~~mermaid
flowchart TD
    A[City Area Selection] --> B[1km x 1km City Cells]
    B --> C[City Boundary Selection]
    C --> D[District Planning]
    C --> E[Infrastructure Planning]
    C --> F[Initial Facility Planning]
~~~

Canonical city manipulation unit:

- 1km x 1km


# ============================================================
# 11. CITY CELL FACILITY CAPACITY FLOW
# ============================================================

~~~mermaid
flowchart TD
    A[1 City Cell] --> B[10 Placement Capacity Units]

    B --> C1[Very Small Facility = 1]
    B --> C2[Small Facility = 2]
    B --> C3[Medium Facility = 3]
    B --> C4[Large Facility = 5 to 10]
    B --> C5[Extra Large Facility = One Full Cell or Multiple Cells]
~~~

A city cell may contain multiple facilities.

Recommended canonical model:

- 1 city cell = 10 placement capacity units


# ============================================================
# 12. FACILITY ENTRY FLOW
# ============================================================

~~~mermaid
flowchart TD
    A[City Map] --> B[Facility Tap]
    B --> C[Facility Overview]

    C --> D[Facility Manage]
    C --> E[Facility Issue]
    C --> F[Facility History]
    C --> G[Facility Permission]
    C --> H[Linked Facility]
~~~

Facility Overview is the canonical facility entry screen.


# ============================================================
# 13. FACILITY OPERATION FLOW
# ============================================================

~~~mermaid
flowchart TD
    A[Facility Overview] --> B[Facility Manage]
    B --> C[Domain Specific Tabs]

    A --> D[Issue Screen]
    D --> E[Intervention]
    E --> B
    E --> A

    A --> F[History Screen]
    A --> G[Permission Screen]
    A --> H[Linked Facility Screen]
~~~

Facility Manage is the main operational screen.


# ============================================================
# 14. DISTRICT ENTRY FLOW
# ============================================================

~~~mermaid
flowchart TD
    A[City Map] --> B[District Tap]
    B --> C[District Detail Information]

    C --> D[District Facility List]
    C --> E[District Zone / Policy Information]
    C --> F[District Statistics]
    C --> G[Linked City Information]
    C --> H[Facility Jump]
~~~

District detail is the canonical first screen
after district tap.


# ============================================================
# 15. BUILDER SCALE CHANGE FLOW
# ============================================================

~~~mermaid
flowchart TD
    A[Builder Screen] --> B[Zoom In]
    A --> C[Zoom Out]
    A --> D[Pan]
    A --> E[Reset Zoom]
    A --> F[Fit Selected Area]
    A --> G[Current Scale Indicator]
~~~

Scale change is a canonical builder requirement.


# ============================================================
# 16. STATE BUILDER SCALE FLOW
# ============================================================

~~~mermaid
flowchart TD
    A[State Builder] --> B[Continent Scale Review]
    A --> C[Territory Cell Review]
    A --> D[Boundary Precision Review]
    A --> E[Pan While Selecting]
~~~

State builder supports
wide-area review and detailed cell confirmation.


# ============================================================
# 17. CITY BUILDER SCALE FLOW
# ============================================================

~~~mermaid
flowchart TD
    A[City Builder] --> B[City Scale Review]
    A --> C[District Scale Planning]
    A --> D[1km Cell Planning]
    A --> E[Local Facility Placement Review]
~~~

City builder supports both macro and local planning.


# ============================================================
# 18. FACILITY PLACEMENT SCALE FLOW
# ============================================================

~~~mermaid
flowchart TD
    A[Facility Placement] --> B[Zoom In for Local Precision]
    A --> C[Zoom Out for Surrounding Balance Review]
    A --> D[Placement Confirmation]
~~~

Zoom changes must not by themselves
mutate canonical placement truth.

Only explicit placement confirmation
may mutate builder truth.


# ============================================================
# 19. FINAL RULE
# ============================================================

Civilization world navigation and builder flow must remain:

- login-rooted
- map-hierarchical
- explicit in builder routing
- explicit in facility entry
- explicit in district entry
- scale-aware during placement
- deterministic in route structure

Story mode remains a login-only branch
and must stay outside normal map navigation.
