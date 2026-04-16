# ============================================================
# PRODUCT PORTFOLIO MANAGER STANDARDIZATION PASS NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the standardization intent for the next cleanup-oriented pass.

standardization_targets:
- normalize repeated wording around ERP boundary
- normalize repeated wording around forecast advisory boundary
- normalize repeated wording around review vs approval separation
- normalize repeated wording around classification vs proposal distinction
- keep each layer responsible for its own kind of meaning

layer_standardization_rules:
constitution:
- keep meaning and boundaries only

architecture:
- keep structural role and surface relation only

model:
- keep entity semantics, field semantics, and relation meaning only

flow:
- keep operator/business progression only

policy:
- keep rule interpretation only

security:
- keep authority and access meaning only

implementation:
- keep non-code requirements only

warning:
Do not over-compress important repeated warnings if compression reduces safety or clarity.

formal_conclusion:
The next cleanup pass should improve readability and navigation quality
without weakening governance meaning.
