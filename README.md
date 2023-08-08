# archivebox local

```bash
docker exec -it archivebox /bin/bash

root@ccad4cc2b521:/data# su - archivebox

archivebox@ccad4cc2b521:/data$ archivebox manage createsuperuser

```

```bash
archivebox config --set MEDIA_TIMEOUT=3600 SAVE_ARCHIVE_DOT_ORG=False URL_BLACKLIST='(://(.*\.)?pornhub\.com)|(://(.*\.)?redgifs\.com)|(.*\.exe$)' GIT_DOMAINS=github.com,bitbucket.org,gitlab.com PUBLIC_INDEX=True PUBLIC_SNAPSHOTS=True SAVE_TITLE=True SAVE_FAVICON=False SAVE_WGET=True SAVE_WGET_REQUISITES=True SAVE_WARC=False SAVE_PDF=True SAVE_SCREENSHOT=False SAVE_DOM=False SAVE_GIT=True SAVE_MEDIA=True SAVE_ARCHIVE_DOT_ORG=False CHROME_SANDBOX=False MEDIA_MAX_SIZE=1024m CHECK_SSL_VALIDITY=True YOUTUBEDL_BINARY=yt-dlp RIPGREP_BINARY=rga USE_COLOR=True SHOW_PROGRESS=True
```

# pihole blocklists

`https://github.com/sefinek24/Sefinek-Blocklist-Collection/blob/main/lists/md/Pi-hole.md`
