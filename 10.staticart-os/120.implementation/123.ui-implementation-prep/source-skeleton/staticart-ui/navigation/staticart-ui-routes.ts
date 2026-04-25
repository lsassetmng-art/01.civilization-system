import type { ScreenId } from "../contracts/ui-types";

export interface StaticArtRouteDefinition {
  screenId: ScreenId;
  routePath: string;
  description: string;
}

export const STATICART_UI_ROUTES: StaticArtRouteDefinition[] = [
  {
    screenId: "SA-CR-001",
    routePath: "/creator/assets",
    description: "Asset Draft List",
  },
  {
    screenId: "SA-CR-010",
    routePath: "/creator/assets/new",
    description: "Create Asset",
  },
  {
    screenId: "SA-CR-020",
    routePath: "/creator/assets/:assetId",
    description: "Asset Workspace",
  },
  {
    screenId: "SA-MK-001",
    routePath: "/marketplace/staticart",
    description: "Marketplace List",
  },
  {
    screenId: "SA-MK-010",
    routePath: "/marketplace/staticart/:assetId",
    description: "Product Detail",
  },
  {
    screenId: "SA-MK-020",
    routePath: "/marketplace/staticart/:assetId/purchase-result",
    description: "Purchase Result Overlay",
  },
  {
    screenId: "SA-LB-001",
    routePath: "/library/staticart",
    description: "My Library",
  },
  {
    screenId: "SA-LB-010",
    routePath: "/library/staticart/continue-reading",
    description: "Continue Reading",
  },
  {
    screenId: "SA-LB-020",
    routePath: "/library/staticart/continue-viewing",
    description: "Continue Viewing",
  },
  {
    screenId: "SA-RD-001",
    routePath: "/reader/staticart/:assetId",
    description: "Reader",
  },
  {
    screenId: "SA-RD-010",
    routePath: "/reader/staticart/:assetId/annotations",
    description: "Reader Bookmark Note Panel",
  },
  {
    screenId: "SA-VW-001",
    routePath: "/viewer/staticart/:assetId",
    description: "Viewer",
  },
  {
    screenId: "SA-AD-001",
    routePath: "/admin/staticart/review-queue",
    description: "Review Queue",
  },
  {
    screenId: "SA-AD-010",
    routePath: "/admin/staticart/review/:reviewRequestId",
    description: "Review Detail",
  },
  {
    screenId: "SA-AD-020",
    routePath: "/admin/staticart/audit/:assetId",
    description: "Restriction Delist Audit Detail",
  },
];
