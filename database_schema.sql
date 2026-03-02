CREATE TABLE users (
    user_id UUID PRIMARY KEY,
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE videos (
    video_id UUID PRIMARY KEY,
    user_id UUID REFERENCES users(user_id),
    title VARCHAR(255),
    description TEXT,
    status VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE video_versions (
    version_id UUID PRIMARY KEY,
    video_id UUID REFERENCES videos(video_id),
    resolution VARCHAR(20),
    storage_path TEXT
);

CREATE TABLE video_views (
    video_id UUID REFERENCES videos(video_id),
    view_count BIGINT DEFAULT 0
);
