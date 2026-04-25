import type { AssetSummaryViewModel } from "../../contracts/ui-types";
import { ScreenShell } from "../../components/common/ScreenShell";
import { ProductCard } from "../../components/marketplace/ProductCard";

export interface MarketplaceListScreenProps {
  items: AssetSummaryViewModel[];
}

export function MarketplaceListScreen(props: MarketplaceListScreenProps) {
  return (
    <ScreenShell
      shell={{
        title: "Marketplace",
        loadState: props.items.length === 0 ? "empty" : "ready",
      }}
    >
      <section>
        {props.items.map((item) => (
          <ProductCard key={item.assetId} asset={item} />
        ))}
      </section>
    </ScreenShell>
  );
}
