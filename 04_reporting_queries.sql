
-- Calculate KPIs before and after optimization
SELECT
    product,
    COUNT(*) FILTER (WHERE current_stock > monthly_demand * 1.2) AS overstocked_hubs,
    COUNT(*) FILTER (WHERE current_stock < monthly_demand * 0.8) AS understocked_hubs,
    ROUND(AVG(current_stock * 1.0 / monthly_demand), 2) AS avg_stock_to_demand_ratio
FROM warehouse_inventory
GROUP BY product;
