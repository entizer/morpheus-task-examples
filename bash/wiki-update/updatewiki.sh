curl -k -XPUT "<%=morpheus.applianceUrl%>/api/instances/<%=instance.id%>/wiki" \
-H "Content-Type: application/json" \
-H "Authorization: BEARER <%=cypher.read('secret/accesstoken')%>" \
-d '{
  "page":{
    "content": "Hostname is: <%= results.outputinfo.hostname %> and uptime is: <%= results.outputinfo.uptime %>"
  }
}'