# 🎬 Video Streaming System Design

> Day 8 – Large Scale Media Systems

---

## 📌 Problem Statement

Design a scalable video streaming platform like Netflix or YouTube.

System should:

- Upload videos
- Transcode videos into multiple qualities
- Stream videos globally
- Support millions of concurrent users
- Ensure low buffering

---

# 🎯 Functional Requirements

- Upload video
- Stream video
- Like / Comment
- View count tracking
- Adaptive bitrate streaming

---

# ⚙️ Non-Functional Requirements

- Very high read traffic
- Low latency streaming
- High availability
- Global distribution
- 99.99% uptime

---

# 📊 Capacity Estimation (Example)

Assume:
- 50M daily active users
- Avg video size: 500MB
- 10M video uploads/month
- 100M+ daily video views

Massive read-heavy system 🔥

---

# 🧠 High-Level Architecture

Client
   ↓
API Gateway
   ↓
Upload Service → Object Storage
   ↓
Transcoding Service
   ↓
CDN
   ↓
Streaming Service
   ↓
Metadata Database

---

# 🔑 Key Concepts

✔ Video chunking (HLS/DASH)  
✔ Adaptive bitrate streaming  
✔ CDN caching  
✔ Asynchronous processing  
✔ Event-driven architecture  

---

# 🚀 System Highlights

- Upload once, stream globally
- Store master copy
- Generate multiple quality versions (240p–4K)
- Deliver via CDN
