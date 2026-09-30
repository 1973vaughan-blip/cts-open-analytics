-- Retention proxy: minutes watched per view
SELECT
  video_title,
  views,
  watch_time_hours,
  (watch_time_hours * 60.0) / views AS minutes_per_view
FROM youtube_videos
ORDER BY minutes_per_view DESC;

-- Engagement depth: likes + comments + shares per 1,000 views
SELECT
  video_title,
  views,
  likes,
  comments,
  shares,
  ((likes + comments + shares)::NUMERIC / views) * 1000 AS engagement_per_1000_views
FROM youtube_videos
ORDER BY engagement_per_1000_views DESC;

-- Watch-time efficiency: watch time per impression
SELECT
  video_title,
  impressions,
  watch_time_hours,
  (watch_time_hours / impressions) AS watch_time_per_impression
FROM youtube_videos
ORDER BY watch_time_per_impression DESC;
