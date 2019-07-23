curl "http://localhost:4741/update-task/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "task": {
      "id": "'"${ID}"'",
      "title": "'"${TITLE}"'",
      "description": "'"${DESCRIPTION}"'",
      "status": "'"${STATUS}"'",
      "due_date": "'"${DATE}"'",
      "notes": "'"${NOTES}"'",
      "user_id": "'"${USER}"'"
    }
  }'

echo
