# PHP Application Deployment Using Docker

A step-by-step guide to deploying a PHP application using a Dockerfile with Apache.

---

## Prerequisites

- Docker installed on your server
- Basic command line knowledge

---

## Step 1: Create Project Directory

```bash
mkdir php-app
cd php-app
```

---

## Step 2: Create `index.php`

```bash
nano index.php
```

Add the following content:

```php
<?php
echo "<h1>Welcome to Docker PHP Application</h1>";
echo "<p>Docker deployment successful!</p>";
?>
```

Save and exit.

---

## Step 3: Create `Dockerfile`

```bash
nano Dockerfile
```

Add the following content:

```dockerfile
FROM php:8.2-apache
COPY index.php /var/www/html/
EXPOSE 80
```

Save and exit.

---

## Step 4: Verify Files

```bash
ls
```

Expected output:

```
Dockerfile
index.php
```

---

## Step 5: Build Docker Image

```bash
sudo docker build -t myphpapp:v1 .
```

Check the image was created:

```bash
docker images
```

Example output:

```
REPOSITORY   TAG
myphpapp     v1
```

---

## Step 6: Run the Container

```bash
docker run -d --name php-container -p 8084:80 myphpapp:v1
```

Verify the container is running:

```bash
docker ps
```

---

## Step 7: Access the Application

Open your browser and navigate to:

```
http://SERVER-IP:8084
```

Expected output:

> **Welcome to Docker PHP Application**
> Docker deployment successful!

---

## Step 8: Check Logs

```bash
docker logs php-container
```

---

## Quick Reference

| Command | Description |
|---|---|
| `docker build -t myphpapp:v1 .` | Build the Docker image |
| `docker run -d --name php-container -p 8084:80 myphpapp:v1` | Run the container |
| `docker ps` | List running containers |
| `docker logs php-container` | View container logs |
| `docker images` | List available images |
