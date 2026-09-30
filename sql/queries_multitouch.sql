-- Multi-touch attribution: combine YouTube, Meta, and Website data
SELECT
  w.page_name,
  w.traffic_source,
  w.sessions,
  w.conversions,
  m.reach,
  m.impressions AS meta_impressions,
  y.impressions AS youtube_impressions,
  y.watch_time_hours,
  -- Weighted visibility score across all platforms
  (w.sessions * 0.4) +
  (m.reach * 0.3) +
  (y.impressions * 0.3) AS blended_visibility_score
FROM website_pages w
LEFT JOIN meta_posts m ON w.page_id = m.post_id
LEFT JOIN youtube_videos y ON w.page_id = y.row_id
ORDER BY blended_visibility_score DESC;

-- Assisted conversions: Meta reach + YouTube impressions before a website conversion
SELECT
  w.page_name,
  w.conversions,
  m.reach,
  y.impressions,
  (m.reach + y.impressions) AS assisted_touchpoints
FROM website_pages w
LEFT JOIN meta_posts m ON w.page_id = m.post_id
LEFT JOIN youtube_videos y ON w.page_id = y.row_id
ORDER BY assisted_touchpoints DESC;

-- Engagement-assisted revenue: likes + comments + shares contributing to website revenue
SELECT
  w.page_name,
  w.revenue,
  m.likes,
  m.comments,
  m.shares,
  (m.likes + m.comments + m.shares) AS engagement_total
FROM website_pages w
LEFT JOIN meta_posts m ON w.page_id = m.post_id
ORDER BY engagement_total DESC;
