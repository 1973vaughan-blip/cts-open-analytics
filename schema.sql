-- YouTube videos
CREATE TABLE youtube_videos (
  row_id             INTEGER PRIMARY KEY,
  video_title        TEXT,
  views              INTEGER,
  watch_time_hours   NUMERIC,
  impressions        INTEGER,
  ctr                NUMERIC,
  likes              INTEGER,
  comments           INTEGER,
  shares             INTEGER,
  estimated_revenue  NUMERIC,
  subscribers        INTEGER
);

-- Meta posts
CREATE TABLE meta_posts (
  row_id       INTEGER PRIMARY KEY,
  post_id      INTEGER,
  post_title   TEXT,
  reach        INTEGER,
  impressions  INTEGER,
  engagements  INTEGER,
  likes        INTEGER,
  comments     INTEGER,
  shares       INTEGER,
  ad_spend     NUMERIC,
  revenue      NUMERIC
);

-- Website pages
CREATE TABLE website_pages (
  row_id           INTEGER PRIMARY KEY,
  page_id          INTEGER,
  page_name        TEXT,
  sessions         INTEGER,
  unique_users     INTEGER,
  avg_time_seconds INTEGER,
  bounce_rate      NUMERIC,
  page_views       INTEGER,
  conversions      INTEGER,
  revenue          NUMERIC,
  traffic_source   TEXT
);
