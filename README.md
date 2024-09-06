# Init

github action for deploy packages

## Quick Start

**local settings.xml 설정 필요**

```sh
### Normal
$ mvn deploy -DskipTests -Dversion.suffix=(SNAPSHOT or RELEASE)
```

## Prerequisite to deploy

package 배포를 위한 사전 작업

### Github Actions 변수 설정 

Github Actions secrets / variables 생성

```sh
gh variable set -f .ghvars
gh secret set -f .ghsecrets
```

- template for secrets

    ```sh
    AZURE_CREDENTIALS=<azure-service-principal-credentials>
    > e.g.
        {
            "clientId": "00000000-0000-0000-0000-000000000000",
            "tenantId": "00000000-0000-0000-0000-000000000001",
            "clientSecret": "<client-secret>",
            "subscriptionId": "00000000-0000-0000-0000-000000000002"
        }
    AZURE_VM_IP_DEV=<deploy-vm-ip-for-ssh>
    AZURE_VM_IP_PRD=<deploy-vm-ip-for-ssh>
    AZURE_VM_SSH_PRIVATE_KEY=<deploy-vm-private-key-for-ssh>
    GH_ADMIN_TOKEN=<github-pat>
    ```

- template for vars

    ```sh
    ACR_LOGIN_SERVER=<acr-name>.azurecr.io
    ACR_NAME=<acr-name>
    ACR_REPOSITORY=<repo-name>
    APP_NAME=<app-name>
    AZURE_RESOURCE_GROUP_NAME=<azure-resource-group-for-deploy-vm>
    AZURE_VM_PREFIX=<deploy-vm-name-prefix>
    AZURE_VM_USER=<deploy-vm-user>
    ```
