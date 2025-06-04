export KC_HOST=https://www.kingkongapps.kr:30000
export KC_REALM=ROLE_TESt
export KC_CLIENT_ID=role-test-site2
export KC_CLIENT_SECRET=MrZmtycceWK9kJlHaO3t1qDpsfnubQHM
export KC_USER_ID=admin
export KC_USER_PW=admin

curl -s -d "client_id=$KC_CLIENT_ID"         \
        -d "client_secret=$KC_CLIENT_SECRET" \
        -d "username=$KC_USER_ID"  \
        -d "password=$KC_USER_PW"  \
        -d "grant_type=password"   \
     $KC_HOST/realms/$KC_REALM/protocol/openid-connect/token 

