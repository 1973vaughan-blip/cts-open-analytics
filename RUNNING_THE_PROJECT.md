# 🚀 How to Run CTS Open Analytics

This guide explains how to run the full analytics workflow using Supabase or any PostgreSQL environment.

---

## 1️⃣ Set Up Supabase

1. Create a free Supabase project  
2. Open the **SQL Editor**  
3. Paste the contents of `sql/schema.sql`  
4. Click **Run** to create the tables

---

## 2️⃣ Import the Data

Go to **Table Editor** → Select each table → Click **Import Data**

Upload:

- `data/youtube_videos.csv`
- `data/meta_posts.csv`
- `data/website_pages.csv`

Supabase will automatically map the columns.

---

## 3️⃣ Run the Analytics Queries

Open the **SQL Editor** again and run any of the files in `/sql`:

- `queries_retention.sql`  
- `queries_attribution.sql`  
- `queries_roas.sql`  
- `queries_multitouch.sql`  

Each query produces a different insight module.

---

## 4️⃣ Build Dashboards (Optional)

You can visualize results using:

- Supabase Charts  
- Metabase  
- Power BI  
- Tableau  
- Google Looker Studio  

All tools connect easily to Supabase’s Postgres database.

---

## 5️⃣ Extend the Project

Ideas for expansion:

- Add Google Ads or TikTok data  
- Add funnel analysis  
- Add cohort retention  
- Add LTV modeling  
- Add campaign segmentation  
- Add anomaly detection  

This project is intentionally modular so you can grow it over time.

---

## 🎯 Summary

Running this project takes less than 10 minutes:

- Create Supabase project  
- Run schema  
- Import CSVs  
- Run queries  
- Build dashboards  

You now have a complete marketing analytics environment powered by SQL.
