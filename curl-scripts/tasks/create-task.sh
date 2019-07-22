curl "http://localhost:4741/activities" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "task": {
      "title": "'"${TITLE}"'",
      "description": "'"${DESCRIPTION}"'",
      "status": "'"${STATUS}"'",
      "due_date": "'"${DATE}"'",
      "notes": "'"${NOTES}"'",
    }
  }'

echo
