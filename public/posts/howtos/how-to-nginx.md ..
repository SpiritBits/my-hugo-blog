+++
title = "Nginx"
date = "2025-12-29T18:48:19+01:00"
#dateFormat = "2006-01-02" # This value can be configured for per-post date formatting
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["", ""]
keywords = ["", ""]
description = ""
showFullContent = false
readingTime = false
hideComments = false
type = "howtos"
+++

# How To build a reverse Proxy with nginx

1. Install nginx

```bash
sudo pacman -S nginx
```

2. Create the pagefile




```bash
sudo mkdir /etc/nginx/sites-available
```

```bash
sudo touch /etc/nginx/sites-available/hugo
```

```file
server {
  listen 80;
  server_name localhost;

  location / {
    proxy_pass http://127.0.0.1:1313;
  }
}
```


```bash
sudo mkdir /etc/nginx/sites-enabled
sudo ln -s /etc/nginx/sites-available/hugo /etc/nginx/sites-enabled/hugo
sudo systemctl restart nginx
```

> This didnt work well, did nothing
> I've edited the */etc/nginx/nginx.conf* file instead.

Now, I got the problem, that my static resource are not delivered to the external Client





