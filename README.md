# Smartphone Market Data Analysis using SQL

## 📊 Project Overview
This project focuses on extracting actionable market insights from a comprehensive smartphone dataset (`smartphones_cleaned_v6.csv`). By deploying structured database schemas and writing targeted MySQL queries, the project answers critical business and consumer questions regarding pricing, hardware specifications, brand dominance, and consumer ratings.

The repository features production-ready SQL scripts mapping out 20 distinct database extraction tasks ranging from basic records parsing to complex statistical aggregations and subqueries.

## 💾 Dataset Highlights
The data is sourced from `smartphones_cleaned_v6.csv` and contains detailed transactional and hardware features for modern mobile devices, including:
*   **Brand & Model Specs:** `brand_name`, `model`
*   **Performance Metrics:** `price`, `rating`, `processor_brand`, `ram_capacity`, `battery_capacity`
*   **Hardware Capabilities:** `has_5g`, `screen_size`, `os`

## 🚀 Analytical Core & SQL Techniques
The query script `9. Smartphones Task Solutions.sql` solves major business analysis challenges using diverse SQL paradigms:

*   **Multi-Conditional Filtering:** Filtering hardware tiers by price brackets and spec requirements using `AND`, `OR`, `BETWEEN`, and string pattern matching (`LIKE`).
*   **Subqueries & Advanced Metrics:** Dynamically identifying the single costliest or worst-rated phones in specific brand ecosystems using nested `SELECT MAX()` and `SELECT MIN()` functions.
*   **Statistical Aggregations:** Running comprehensive market intelligence reports using `GROUP BY` to evaluate total device count, average pricing structures, maximum rating scores, and average screen sizes grouped cleanly by manufacturers.

## 🛠️ Tech Stack & File Structure
*   **SQL Dialect:** MySQL / PostgreSQL compatible
*   **Data Tooling:** Structured relational query execution
*   **Files:**
    *   `smartphones_cleaned_v6.csv`: The underlying database source file.
    *   `9. Smartphones Task Solutions.sql`: The complete execution script detailing all solved business problems.

## 🔍 Key Business Questions Answered
1. How does pricing distribute across premium tiers (e.g., Samsung devices over 1 Lakh vs. mid-range 10k–20k)?
2. Which manufacturers dominate hardware segments like 5G capability or specific silicon architectures (Snapdragon/Exynos/Bionic)?
3. What is the baseline threshold configuration for high-tier customer satisfaction (Rating > 80)?
4. Which brands are producing the smallest screen alternatives in a highly saturated large-screen market?
