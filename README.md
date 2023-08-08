# Securing nginx ingress with oauth2 proxy and keycloak

## Introduction

Many applications don't either don't provide functionality secure access
via OIDC or hide those features behind a paywall. I'm writing this article to show you a way to provide sso functionality
for those applications using nginx ingress and oauth2 proxy. All of the code will be written in Terraform and is available on github. The link is in the description.

## Prerequisites

As a precondition let's assume you already own a kubernetes cluster using the nginx ingress controller. I then installed keycloak using the bitnami helm chart and the following terraform module.

## Deploying the required keycloak resources

Let's start by creating a keycloak realm and a test user.