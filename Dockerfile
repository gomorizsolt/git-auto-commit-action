# FROM alpine/git:1.0.7

FROM node:current-alpine

LABEL "com.github.actions.name"="Auto Commit changed files"
LABEL "com.github.actions.description"="Automatically commits files which have been changed during the workflow run and push changes back to remote repository."
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="http://github.com/stefanzweifel/git-auto-commit-action"
LABEL "homepage"="http://github.com/stefanzweifel/git-auto-commit-action"
LABEL "maintainer"="Stefan Zweifel <hello@stefanzweifel.io>"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
