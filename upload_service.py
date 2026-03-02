import uuid

class UploadService:

    def __init__(self):
        self.video_store = {}

    def upload_video(self, user_id, filename):
        video_id = str(uuid.uuid4())
        self.video_store[video_id] = {
            "user_id": user_id,
            "filename": filename,
            "status": "uploaded"
        }
        print(f"Video {filename} uploaded successfully.")
        return video_id


if __name__ == "__main__":
    service = UploadService()
    video_id = service.upload_video("user123", "travel_vlog.mp4")
    print("Video ID:", video_id)
