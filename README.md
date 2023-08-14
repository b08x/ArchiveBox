# archivebox local



```bash
sudo mkdir -pv /srv/http

sudo chmod 2775 /srv/http

sudo chgrp $USER /srv/http

git clone --recursive git@github.com:b08x/ArchiveBox /srv/http/ArchiveBox

cd /srv/http/ArchiveBox

docker-compose up -d
```

if building the image, wait a few minutes

```bash
docker exec -it archivebox /bin/bash

root@ccad4cc2b521:/data# su - archivebox

archivebox@09a9a11123ae:~$ cd /data

archivebox@09a9a11123ae:~$ archivebox config --set MEDIA_TIMEOUT=3600 TIMEOUT=600 SAVE_ARCHIVE_DOT_ORG=False URL_BLACKLIST='(://(.*\.)?pornhub\.com)|(://(.*\.)?redgifs\.com)|(.*\.exe$)' GIT_DOMAINS=github.com,bitbucket.org,gitlab.com PUBLIC_INDEX=True PUBLIC_SNAPSHOTS=True SAVE_TITLE=True SAVE_FAVICON=False SAVE_WGET=True SAVE_WGET_REQUISITES=True SAVE_WARC=False SAVE_PDF=True SAVE_SCREENSHOT=False SAVE_DOM=False SAVE_GIT=True SAVE_MEDIA=True SAVE_ARCHIVE_DOT_ORG=False CHROME_SANDBOX=False CHROME_BINARY=google-chrome-beta CHROME_HEADLESS=True MEDIA_MAX_SIZE=1024m CHECK_SSL_VALIDITY=True YOUTUBEDL_BINARY=yt-dlp RIPGREP_BINARY=rga USE_COLOR=True SHOW_PROGRESS=True
```


```bash
archivebox@ccad4cc2b521:/data$ archivebox init --setup
```

# pihole blocklists

Navigate to the instance of pi-hole admin and add the blocklists

`http://hostname:8090/admin`

[source: Sefinek-Blocklist-Collection](https://github.com/sefinek24/Sefinek-Blocklist-Collection)

```text
https://blocklist.sefinek.net/generated/0.0.0.0/ads/blocklistproject.ads.txt
https://blocklist.sefinek.net/generated/0.0.0.0/ads/DandelionSprout.GameConsoleAdblockList.txt
https://blocklist.sefinek.net/generated/0.0.0.0/ads/jerryn70.GoodbyeAds.txt
https://blocklist.sefinek.net/generated/0.0.0.0/ads/yoyo.AdsTrackersEtc.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/0Zinc.easylist.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/0Zinc.easyprivacy.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/4skinSkywalker.Anti-Porn.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/abuse.urlhaus.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/adaway.hosts.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/anudeepND.adservers.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/AssoEchap.stalkerware-indicators.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/bigdargon.hostsVN.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/blocklistproject.drugs.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/blocklistproject.gambling.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/blocklistproject.phishing.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/blocklistproject.piracy.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/blocklistproject.porn.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/blocklistproject.ransomware.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/blocklistproject.redirect.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/blocklistproject.scam.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/blocklistproject.youtube.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/cbuijs.adult-domains.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/chadmayfield.pi_blocklist_porn_all.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/craiu.mobiletrackers.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/crazy-max.WindowsSpyBlocker.hosts-spy.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/DandelionSprout-AntiMalwareHosts.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/deathbybandaid.CountryCodesLists-France.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/deathbybandaid.ParsedBlacklists-easylist-fr.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/deathbybandaid.ParsedBlacklists-easylist.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/developerdan.amp-hosts-extended.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/developerdan.dating-services-extended.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/developerdan.hate-and-junk-extended.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/digitalside.latestdomains.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/disconnectme.simple_ad.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/disconnectme.simple_malvertising.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/Dogino.Discord-Phishing-URLs-phishing.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/Dogino.Discord-Phishing-URLs-scam.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/durablenapkin.scamblocklist.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/ente-dev.google-amp-hosts.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/ente-dev.tv.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/FadeMind.add.2o7Net.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/FadeMind.add.Risk.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/FadeMind.add.Spam.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/FadeMind.UncheckyAds.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/firebog.AdguardDNS.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/firebog.Admiral.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/firebog.Easylist.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/firebog.Prigent-Ads.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/firebog.Prigent-Crypto.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/firebog.w3kbl.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/frogeye.firstparty-trackers-hosts.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/hole-cert.domains_hosts.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/hoshsadiq.adblock-nocoin-list.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/justdomains.adguarddns.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/kboghdady.youtubelist.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/MajkiIT.adguard_host.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/MajkiIT.adguard_mobile_host.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/MajkiIT.Ad_filter_list_by_Disconnect.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/MajkiIT.easy_privacy_host.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/MajkiIT.gambling-hosts.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/MajkiIT.hostfile.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/MajkiIT.SmartTV_ads.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/malware-filter.urlhaus-filter-hosts-online.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/marktron.fakenews.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/mhhakim.custom-porn-blocklist.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/mitchellkrogza.Stop.Google.Analytics.Ghost.Spam-INACTIVE.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/neodevpro.neodevhost.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/notracking.hostnames.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/oisd.big.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/oisd.nsfw.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/phishingArmy.phishing_army_blocklist_extended.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/PolishFiltersTeam.KADhosts.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/quidsup.notrack-malware.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/r-a-y.AdguardApps.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/r-a-y.AdguardMobileAds.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/r-a-y.AdguardMobileSpyware.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/RPiList-Malware.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/RPiList-Phishing.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/RPiList.Spam-Mails.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/Sinfonietta.pornography-hosts.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/Snota418.Crypto-streams.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/Spam404.main-blacklist.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/StevenBlack.fakenews-gambling-porn.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/StevenBlack.hosts.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/stopforumspam.toxic_domains_whole.txt
https://blocklist.sefinek.net/generated/0.0.0.0/forks/zerodot1.CoinBlockerLists.txt
https://blocklist.sefinek.net/generated/0.0.0.0/gambling.txt
https://blocklist.sefinek.net/generated/0.0.0.0/games/league-of-legends.txt
https://blocklist.sefinek.net/generated/0.0.0.0/games/valorant.txt
https://blocklist.sefinek.net/generated/0.0.0.0/malicious/blocklistproject.abuse.txt
https://blocklist.sefinek.net/generated/0.0.0.0/malicious/blocklistproject.fraud.txt
https://blocklist.sefinek.net/generated/0.0.0.0/malicious/blocklistproject.malware.txt
https://blocklist.sefinek.net/generated/0.0.0.0/malicious/main.txt
https://blocklist.sefinek.net/generated/0.0.0.0/malicious/main-2.txt
https://blocklist.sefinek.net/generated/0.0.0.0/malicious/phishing.txt
https://blocklist.sefinek.net/generated/0.0.0.0/malicious/reported-by-norton.txt
https://blocklist.sefinek.net/generated/0.0.0.0/malicious/web-attacks.txt
https://blocklist.sefinek.net/generated/0.0.0.0/porn.txt
https://blocklist.sefinek.net/generated/0.0.0.0/sites/omegle.txt
https://blocklist.sefinek.net/generated/0.0.0.0/sites/riotgames.txt
https://blocklist.sefinek.net/generated/0.0.0.0/social/snapchat.txt
https://blocklist.sefinek.net/generated/0.0.0.0/social/tiktok.txt
https://blocklist.sefinek.net/generated/0.0.0.0/useless-websites.txt
```

After that, update Gravity. When that finishes, begin the initial import.
