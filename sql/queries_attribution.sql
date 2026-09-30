-- Basic attribution: revenue per traffic source
SELECT
  traffic_source,
  SUM(revenue) AS total_revenue,
  SUM(conversions) AS total_conversions
FROM website_pages
GROUP BY traffic_source
ORDER BY total_revenue DESC;

-- Conversion efficiency: conversions per 1,000 sessions
SELECT
  page_name,
  sessions,
  conversions,
  (conversions::NUMERIC / sessions) * 1000 AS conversions_per_1000_sessions
FROM website_pages
ORDER BY conversions_per_1000_sessions DESC;

-- Multi-channel contribution: impressions + reach + sessions
SELECT
  w.page_name,
  w.sessions,
  m.reach,
  y.impressions,
  (w.sessions + m.reach + y.impressions) AS blended_visibility_score
FROM website_pages w
LEFT JOIN meta_posts m ON w.page_id = m.post_id
LEFT JOIN youtube_videos y ON w.page_id = y.row_id
ORDER BY blended_visibility_score DESC;
