# 🐳 Docker Command Reference

A quick reference guide for essential Docker commands.

---

## Basic Operations

### Pull Image
```bash
docker pull nginx
```

### Create & Start Container
```bash
docker run nginx
```

### View Running Containers
```bash
docker ps
```

### Stop Container
```bash
docker stop container_id
```

### Start Container Again
```bash
docker start container_id
```

### Remove Container
```bash
docker rm container_id
```

### Remove Image
```bash
docker rmi nginx
```

---

## Essential Docker Commands

### List Images
```bash
docker images
```

### Run Container
```bash
docker run nginx
```

Run in **detached mode** (background):
```bash
docker run -d nginx
```

### List Containers

Running containers only:
```bash
docker ps
```

All containers (including stopped):
```bash
docker ps -a
```

### Execute Commands Inside Container
```bash
docker exec -it container_id bash
```

Example:
```bash
docker exec -it php-container bash
```

### View Logs
```bash
docker logs container_id
```

Example:
```bash
docker logs php-container
```

### Inspect Container Details
```bash
docker inspect container_id
```

Returns details including:
- IP Address
- Volumes
- Network
- Ports
- Environment Variables

### Stop Container
```bash
docker stop container_id
```

### Remove Container
```bash
docker rm container_id
```

### Remove Image
```bash
docker rmi image_name
```
