export KC_HOST=https://www.kingkongapps.kr:30000
export KC_REALM=master
export KC_CLIENT_ID=admin-cli
export KC_ADMIN_ID=admin
export KC_ADMIN_PW=admin

TOKEN=`curl -s -d "client_id=$KC_CLIENT_ID" \
               -d "username=$KC_ADMIN_ID"   \
               -d "password=$KC_ADMIN_PW"   \
               -d "grant_type=password"     \
        $KC_HOST/realms/$KC_REALM/protocol/openid-connect/token | awk -F',' '{print $1}'`

#echo $TOKEN

ADMIN_TOKEN=`echo $TOKEN | awk -F'"' '{print $4}' `
echo $ADMIN_TOKEN > admin_token.dat

cat admin_token.dat

