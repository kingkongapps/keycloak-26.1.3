FROM keycloak/keycloak:26.1.3

# SPI JAR copy...
COPY providers/*.jar /opt/keycloak/providers/

# COPY custom theme...
#COPY themes/keycloak-theme-nwc-custom /opt/keycloak/themes/keycloak-theme-nwc-custom

# Keycloak start
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]

