FROM fluxcd/helm-operator:1.2.0
COPY --from=gcr.io/google.com/cloudsdktool/cloud-sdk:326.0.0-slim /usr/lib/google-cloud-sdk /opt/google-cloud-sdk
RUN apk update && apk add python3 && rm -rf /var/cache/apk/*
COPY files /

