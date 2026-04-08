# ============================================================
# QUICK FORECAST SECURITY
# ============================================================

status: canonical
layer: security
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines security requirements of QuickForecast Basic / Pro.

# ============================================================
# 1. SECURITY POSITION
# ============================================================

QuickForecast handles business draft material
that may later influence enterprise decisions.

Security must therefore protect:
- user identity
- tier boundary
- enterprise-linked access
- draft integrity
- submission integrity
- approval integrity

# ============================================================
# 2. BASIC SECURITY
# ============================================================

Basic security scope:
- local user protection
- local draft protection
- feature-tier enforcement
- safe local state handling

# ============================================================
# 3. PRO SECURITY
# ============================================================

Pro security scope adds:
- enterprise identity binding
- permission-gated ERP reference
- approval-path integrity
- governed submission integrity
- history / audit support where applicable

# ============================================================
# 4. CORE RULES
# ============================================================

rules:
- Basic-only users must not access Pro-only enterprise controls
- ERP reference access must be permission-checked
- approval and submission actions must be attributable
- local draft loss by insecure handling is prohibited where preventable
- submission state forgery is prohibited
