
-- Identify overstocked and understocked hubs for balancing
WITH inventory_status AS (
    SELECT *, current_stock - monthly_demand AS stock_delta
    FROM warehouse_inventory
),
overstocked AS (
    SELECT * FROM inventory_status WHERE stock_delta > 30
),
understocked AS (
    SELECT * FROM inventory_status WHERE stock_delta < -30
)
SELECT
    o.warehouse AS source_warehouse,
    u.warehouse AS target_warehouse,
    o.product,
    LEAST(o.stock_delta, ABS(u.stock_delta)) AS quantity_to_transfer
FROM overstocked o
JOIN understocked u ON o.product = u.product;
