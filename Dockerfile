FROM node:14

LABEL version="1.1.0"
LABEL repository="https://github.com/MeetButter/codepush-action"
LABEL homepage="https://github.com/MeetButter/codepush-action"

LABEL com.github.actions.name="GitHub Action for Codepush with Node:14"
LABEL com.github.actions.description="Github Actions for codepush from NishanthShankar/codepush-action but with node:14"
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="gray-dark"

RUN npm install -g appcenter-cli

COPY LICENSE README.md /
COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]