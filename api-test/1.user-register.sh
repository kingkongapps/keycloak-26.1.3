export KC_HOST=https://www.kingkongapps.kr:30000
export KC_REALM=ROLE_TEST

###### get admin token...
sh ./0.get-admin-token.sh

ADMIN_TOKEN=`cat admin_token.dat`
echo $ADMIN_TOKEN 
echo "---------------------------"

###### user-register
curl -v -X POST $KC_HOST/admin/realms/$KC_REALM/users \
        -H "Content-Type: application/json" \
        -H "Authorization: Bearer $ADMIN_TOKEN" \
-d '{
  "username": "new-user-11",
  "email": "new-user-11@test.com",
  "emailVerified": true,
  "enabled": true,
  "firstName": "inmo11",
  "lastName":  "kang11",
  "credentials": [{
     "type": "password",
     "value": "new-user-11",
     "temporary": false
  }]
}'

