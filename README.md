# Inventory Load Balancing Across Hubs

## 📦 Project Overview
This project simulates an inventory load balancing system across six warehouse hubs using SQL and Excel. The goal is to optimize stock distribution and reduce excess or shortage of products based on demand data. This mirrors a real-world business analyst scenario where efficient resource allocation impacts supply chain performance.



---

## 🧠 Key Business Analyst Skills Practiced

- SQL querying for inventory analysis
- Logic building for operational optimization
- Data-driven decision-making
- Dashboard creation in Excel
- KPI reporting (stock-to-demand ratio, over/understock analysis)

---

## 🛠️ How to Use

1. **Load Data**
   - Use `01_create_tables.sql` to set up your table.
   - Run `02_insert_data.sql` to populate it with sample records.

2. **Run Load Balancing Logic**
   - Execute `03_balance_inventory.sql` to simulate redistribution of excess stock from overstocked hubs to understocked ones.

3. **Analyze Results**
   - Use `04_reporting_queries.sql` to see before/after KPIs like:
     - Overstocked/Understocked hub count
     - Average stock-to-demand ratio

4. **Visualize**
   - Open `Inventory_Optimization_Dashboard.xlsx` to view the stock vs demand chart and manually update it post optimization if desired.

---

## 📊 Sample KPI Metrics

Before optimization:
- Overstocked hubs: 3
- Understocked hubs: 2
- Avg stock-to-demand ratio: 1.4

After optimization (simulated):
- Overstocked hubs: 1
- Understocked hubs: 0
- Avg stock-to-demand ratio: 1.1


