FROM pivotalcf/pivnet-resource:v3.0.2
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]