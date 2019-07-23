curl "http://localhost:4741/tasks/${ID}" \
  --include \
  --request GET
  --header "Authorization: Token token=${TOKEN}"
  --data '{
    "task": {
      "id": "'"${ID}"'",
    }
  }'

echo
