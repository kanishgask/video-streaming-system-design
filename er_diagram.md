# 📊 ER Diagram - Video Streaming

USERS
- user_id (PK)
- email

VIDEOS
- video_id (PK)
- user_id (FK)
- title
- description
- status

VIDEO_VERSIONS
- version_id (PK)
- video_id (FK)
- resolution
- storage_path

VIDEO_VIEWS
- video_id (FK)
- view_count

Relationships:

User 1 → N Videos  
Video 1 → N Versions  
Video 1 → 1 View Counter
