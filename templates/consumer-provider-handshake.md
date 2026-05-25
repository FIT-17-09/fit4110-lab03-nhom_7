# Consumer–Provider Handshake

## Thông tin chung

- Lab: FIT4110 Lab 03
- Ngày: 2026-05-25
- Provider team: team-vision
- Consumer team: camerastream
- Provider service: AI Vision
- Consumer service: Camera Stream

## Contract

- Contract file: contracts/ai-vision.openapi.yaml
- Mock base URL: http://localhost:4011
- Auth method: Bearer token
- Endpoint được test: POST /api/v1/vision/analyze

## Smoke test

### Request

```http
METHOD /path
Authorization: Bearer <token>
Content-Type: application/json
```

```json
{
	"camera_id": "CAM01",
	"image_url": "https://example.com/frame.jpg",
	"timestamp": "2026-05-22T10:30:00Z",
	"correlationId": "corr-smoke-001"
}
```

### Expected response

```json
{
	"status": "received",
	"message": "Ảnh đã được đưa vào hàng đợi xử lý ngầm."
}
```

## Kết quả

- [x] Consumer gọi mock thành công.
- [x] Consumer parse được field cần dùng.
- [ ] Consumer hiểu lỗi 4xx/5xx provider trả về.
- [ ] Có Newman report hoặc screenshot.

## Ghi chú thay đổi hợp đồng

| Nội dung | Trước | Sau | Người đồng ý |
|---|---|---|---|
| | | | |

## Xác nhận

- Provider representative:
- Consumer representative:
