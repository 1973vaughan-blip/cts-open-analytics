-- ROAS: revenue divided by ad spend
SELECT
  post_title,
  ad_spend,
  revenue,
  (revenue / ad_spend) AS roas
FROM meta_posts
ORDER BY roas DESC;

-- Cost per engagement
SELECT
  post_title,
  engagements,
  ad_spend,
  (ad_spend / engagements) AS cost_per_engagement
FROM meta_posts
ORDER BY cost_per_engagement ASC;

-- Cost per thousand impressions (CPM)
SELECT
  post_title,
  impressions,
  ad_spend,
  (ad_spend / impressions) * 1000 AS cpm
FROM meta_posts
ORDER BY cpm ASC;
