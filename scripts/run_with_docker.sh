DOCKER_IMAGE_NAME=notifications-python-client

source environment.sh

docker run \
  --rm \
  -v "`pwd`:/var/project" \
  -v "`pwd`/tox-python-versions:/var/project/.python-version" \
  -e NOTIFY_API_URL=${NOTIFY_API_URL} \
  -e API_KEY=${API_KEY} \
  -e FUNCTIONAL_TEST_NUMBER=${FUNCTIONAL_TEST_NUMBER} \
  -e FUNCTIONAL_TEST_EMAIL=${FUNCTIONAL_TEST_EMAIL} \
  -e EMAIL_TEMPLATE_ID=${EMAIL_TEMPLATE_ID} \
  -e SMS_TEMPLATE_ID=${SMS_TEMPLATE_ID} \
  -e LETTER_TEMPLATE_ID=${LETTER_TEMPLATE_ID} \
  -e EMAIL_REPLY_TO_ID=${EMAIL_REPLY_TO_ID} \
  -e SMS_SENDER_ID=${SMS_SENDER_ID} \
  -e API_SENDING_KEY=${API_SENDING_KEY} \
  -e INBOUND_SMS_QUERY_KEY=${INBOUND_SMS_QUERY_KEY} \
  -it \
  ${DOCKER_IMAGE_NAME} \
  ${@}
