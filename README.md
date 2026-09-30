# CTS Open Analytics  
A complete, open-source marketing analytics workflow built using SQL, Supabase-ready schemas, and multi-channel attribution logic.

This project demonstrates how to transform raw CSV exports from YouTube, Meta, and website analytics into structured insights using SQL.

---

## 📁 Project Structure

cts-open-analytics/
│
├── data/
│   ├── youtube_videos.csv
│   ├── meta_posts.csv
│   └── website_pages.csv
│
├── sql/
│   ├── schema.sql
│   ├── queries_retention.sql
│   ├── queries_attribution.sql
│   ├── queries_roas.sql
│   └── queries_multitouch.sql
│
└── README.md

---

## 🧱 Database Schema (Supabase-ready)

The `schema.sql` file defines three core tables:

- **youtube_videos** — performance metrics for video content  
- **meta_posts** — paid and organic post analytics  
- **website_pages** — traffic, conversions, and revenue  

These tables are designed for easy import into Supabase or any PostgreSQL environment.

---

## 📊 Analytics Modules

### 1. Retention Analysis  
Metrics include:
- Minutes watched per view  
- Engagement depth  
- Watch-time efficiency  

### 2. Attribution Analysis  
Metrics include:
- Revenue per traffic source  
- Conversions per 1,000 sessions  
- Blended visibility score  

### 3. ROAS Analysis  
Metrics include:
- Return on ad spend  
- Cost per engagement  
- CPM  

### 4. Multi-touch Attribution  
Metrics include:
- Blended visibility across YouTube + Meta + Website  
- Assisted conversions  
- Engagement-assisted revenue  

---

## 🚀 How to Run This in Supabase

1. Create a new Supabase project  
2. Go to **SQL Editor**  
3. Paste the contents of `schema.sql`  
4. Import the CSVs from the **Table Editor**  
5. Run any query file from the `/sql` folder  
6. Build dashboards using Supabase’s built-in charts or connect to Metabase/Power BI  

---

## 🎯 Purpose of This Project

This repository was built to demonstrate:

- Real-world marketing analytics  
- SQL proficiency  
- Data modeling  
- Multi-channel attribution  
- Supabase readiness  
- Practical business insights  

It serves as a portfolio piece for data roles, especially in marketing analytics, growth, and product insights.

---

## 👤 Author

**Pedro Roberts**  
Cape Town, South Africa  
Marketing Analytics & Data Strategy  
