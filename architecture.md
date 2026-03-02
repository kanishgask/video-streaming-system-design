# 🏗️ Video Streaming Architecture

User Device
   ↓
Global Load Balancer
   ↓
API Gateway
   ↓
Upload Service
   ↓
Object Storage (S3/GCS)
   ↓
Transcoding Workers
   ↓
CDN (CloudFront)
   ↓
Streaming Service

---

# 📦 Upload Flow

1. User uploads video
2. Stored in object storage
3. Event triggers transcoding
4. Multiple resolution files generated
5. CDN caches chunks

---

# 🎥 Streaming Flow

1. User requests video
2. Streaming service returns manifest file (HLS)
3. Client downloads small chunks
4. CDN serves cached chunks
5. Adaptive bitrate adjusts quality

---

# 🌍 CDN Benefits

- Low latency globally
- Offloads traffic from origin servers
- Reduces server load

---

# 📈 Scaling Strategy

- Sharded metadata DB
- CDN edge caching
- Read replicas
- Async event queues

---

# 🔥 Failure Handling

- Retry failed transcodes
- Replicate object storage
- Multi-region deployment
