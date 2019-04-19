#!/bin/bash

# Main
curl -X POST $NOTIFY_URL --data-urlencode \
"payload={ \
  \"channel\": \"#cicd_pipeline\", \
  \"username\": \"GitLab Pipeline\", \
  \"icon_emoji\": \":exploding_head:\", \
  \"attachments\": [ \
    { \
      \"fallback\": \"$GITLAB_USER_NAME attempted BUILDING pipeline <$CI_PIPELINE_URL|#$CI_PIPELINE_ID>\", \
      \"pretext\": \"$GITLAB_USER_NAME attempted BUILDING pipeline <$CI_PIPELINE_URL|#$CI_PIPELINE_ID>\", \
      \"color\": \"#FF0000\", \
      \"fields\": [ \
        { \
          \"title\": \"Unit Test FAILED\", \
          \"value\": \"Gitlab Project: <$CI_PROJECT_URL|$CI_PROJECT_NAME> \nSource branch: <$CI_PROJECT_URL/tree/$CI_COMMIT_REF_NAME|$CI_BUILD_REF_NAME> \nCommit comment: <$CI_PROJECT_URL/commit/$CI_COMMIT_SHA|$CI_COMMIT_TITLE>\" \
        } ] \
    } ] \
}"
