# bk-ng

Based on [bk-sc](https://github.com/gityzon/bk-sc)
Add Nginx as frontend with panindex as disquise.

Deploy brook on replit.
Choose "Import from GitHub".
#

<a href="https://replit.com/github/gityzon/bk-ng">
  <img alt="Run on Repl.it" src="https://replit.com/badge/github/github/gityzon" style="height: 40px; width: 190px;" />
</a>

#
If you use mobile phone,please set the UA of Browser as "Desktop" or maybe replit can not work.

# Environment

You need add Secrets(System environment variables) like:

### key: "passwd"

### value: "your own password"

The secrets is private so you don't need to worry about leaking your data.

# Clients

You can find all clients from:
https://github.com/txthinking/brook/releases

# Usage

wss://"your repl's domain":443 --password "passwd"

For linux(bash) or windows cmd:

#### brook wssclient -s wss://"your repl's domain":443 -p "passwd" --socks5 127.0.0.1:1080

It will open a socks5 proxy on PORT 1080.

# Sleep

May the service sleep,you need a web monitor like UptimeRobot to keep it work.
https://uptimerobot.com

#
Good luck!
