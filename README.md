# Shopee Thailand E-commerce Sales Analysis


## 🖼️Contxt
  - Shopee is the leading e-commerce online shopping platform in Southeast Asia, operating in a high-velocity digital marketplace. This project provides a deep-dive analysis into Shopee Thailand’s e-commerce operations, focusing on the core pillars of sale trend, product performance, marketing funnels and customer segmentation. The goal of this analysis is to provide a clear view of business health and deliver actionable insights that enable decision makers to implement data-driven marketing strategies to drive sustainable, long-term growth.

## 🧩Core Business Problems
1. Inventory Optimization and Seasonality: E-commerce companies often face significant capital loss due to over-leveraging slow-moving stock or lost revenue from 'stock-outs' on high-demand items. By analyzing historical sales trends with product performance metrics, this report identifies critical seasonal patterns that enable data-driven inventory forecasting, ensuring optimized capital allocation and inventory level.

4. Sales Conversion Leaks: a primary challenge in e-commerce is the 'High Traffic, Low Revenue' paradox, where significant visitor volume fails to translate into sales. With funnel analysis, it is possible to pinpoint where the largest drop-offs occur, allowing business leaders to determine whether conversion leaks are caused by technical friction or product misalignment.
  
## 🔍Data Model
<img width="1100" height="600" alt="image" src="https://github.com/user-attachments/assets/bd2d5c37-968d-4dee-bba6-e8603185ce4e" />


## 🎯Insights
**Sales Trend:**
1. Explosive revenue growth in 2025.
   - Sales remained relatively flat and below historical averages through 2022 and 2023, however, Q4 2024 served as a critical inflection point as the revenue surged sharply above benchmark and this upward momentum accelerated through 2025.
   - The 2025 Breakout: Q4 2025 revenue reached a massive 1.13bn, nearly tripling the revenue of Q4 2024 (0.41bn).
   - Strong and Sustained Growth: Revenue growth has remained consistently above 100% YoY. Notably, the 150% growth achieved in 2025 outperformed the already impressive 127% recorded in 2023.
2. Marketing-Driven Growth Engine: A strong positive correlation between campaign volume and revenue suggests that marketing activity is the primary driver of the Q4 2025 surge. A record-breaking push of 4.9K campaigns directly catalyzed the 1.13bn revenue peak, demonstrating the high efficacy of the current promotional strategy.
3. Orders Driving Growth: Order volume YoY% for 2025 is 151% (driven by the campaigns), matching the revenue growth 150%, indicating that the business is winning by acquiring a massive number of new customers/orders.
4. Stagnant AOV: Average Order Value (AOV) remained steady and hovered around the 14K mark while order volume surged significantly in 2025. This suggests that the business is driven by higher number of transactions, not by selling more expensive items.
5. Pronounced Q4 Seasonality: Throughout the observed period, Q4 has consistently emerged as the strongest quarter in terms of revenue. This performance highlights a significant reliance on year-end shopping events, such as the 11.11 and 12.12 festivals.


Summary Insight
The business is currently in a high-growth scaling phase driven by aggressive marketing campaigns. Since the AOV is flat to slightly down, the strategy is clearly a "volume play." To sustain this without ballooning marketing costs, the next logical step would be focusing on retention or finding ways to increase the AOV (upselling/bundling) to maximize the value of the massive influx of new orders.

   
**Product performance:**
1. The "Home" Category Dominance: Home category accounts for nearly half of all revenue (49.69%) followed by electronics second-largest revenue stream.
2. Revenue distribution: Home products like Microwaves, Tables, and vacuum cleaner and electronics like Monitors and Laptops are the top revenue generators.
3. Electronics is the Premium Driver: Despite having lower order volume than Home, Electronics maintains the highest Average Order Value (consistently around 26K–27K).
4. "High-Volume, High-Value" growth drivers: Products such as Monitors and Vacuum Cleaners are in a sweet spot as they are representing a healthy balance between high value and high volume.
   
**Marketing analysis:**  
**Customer demographics:**  

## 🚀 Recommendations:

1. Execute an "AOV Lift" Strategy
Since your AOV has been flat (around 14K) while volume has skyrocketed, you are leaving money on the table with every transaction.

Implement Product Bundling: Create "Frequently Bought Together" modules on the Shopee storefront to move multiple items per checkout.

Threshold-Based Incentives: Offer tiered discounts or free shipping vouchers that kick in just above your current 14K AOV (e.g., "Spend 16K, get 10% off").

Upsell at Checkout: Use the Shopee "Add-on Deal" feature to suggest high-margin accessories right before the customer completes the purchase.

2. Optimize Marketing Spend Efficiency
The "Number of Campaigns" chart shows a massive spike in Q4 2025. While revenue followed, you need to ensure you aren't over-spending to "buy" that growth.

Funnel Bottleneck Analysis: Use your dbt models to identify where customers drop off between "Click" and "Conversion." If the conversion rate isn't scaling at the same pace as campaign volume, focus on improving product page descriptions and images rather than just adding more ads.

Shift to High-ROI Channels: Analyze which specific Shopee marketing tools (Search Ads vs. Discovery Ads vs. Flash Sales) yield the highest Return on Ad Spend (ROAS) and reallocate the budget from underperforming campaigns.

3. Transition from Acquisition to Retention
High order volume is great, but it is often cheaper to keep a customer than to find a new one.

Customer Segmentation (RFM): Use your SQL skills to segment your database into "Champions" (frequent, high-spend), "At-Risk," and "New."

Targeted Re-engagement: Send personalized Shopee Chat Broadcasts to "At-Risk" customers with exclusive "Welcome Back" vouchers to drive repeat orders without needing a new expensive ad campaign.

4. Inventory & Operations Scaling
A 150% YoY growth in revenue can strain supply chains and lead to "Out of Stock" issues, which kill Shopee search rankings.

Predictive Stocking: Use your sales trend data to forecast Q1 and Q2 2026 demand. Ensure your top-performing SKUs are stocked 20% above historical levels to account for the current growth momentum.

Monitor Order Velocity: If order volume continues to climb toward 100K+ per quarter, evaluate whether your current fulfillment process can handle the peak without increasing shipping delays.

## 🛠️Tech stack
1.  SQL
2.  Power BI
3.  Snowflakes
4.  Dataset Source: Kaggle
