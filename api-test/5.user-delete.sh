export KC_HOST=https://www.kingkongapps.kr:30000
export KC_REALM=ROLE_TEST

###### get admin token...
sh ./0.get-admin-token.sh

ADMIN_TOKEN=`cat admin_token.dat`
echo $ADMIN_TOKEN 
echo "---------------------------"

###### get user-id
tmp=`curl -s POST $KC_HOST/admin/realms/$KC_REALM/users?username=new-user-11 \
        -H "Authorization: Bearer $ADMIN_TOKEN" `

USER_ID=`echo $tmp | awk -F',' '{print $1}' | awk -F'"' '{print $4}' `
echo "USER_ID=$USER_ID"
echo "---------------------------"

###### user delete
curl -v -X DELETE $KC_HOST/admin/realms/$KC_REALM/users/$USER_ID \
        -H "Authorization: Bearer $ADMIN_TOKEN"
