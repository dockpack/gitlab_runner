<#
    For the list of all environment vars run `gitlab-runner register --help`.

    After registration, config.toml is generated and subsequent configuration changes should
    be set in that file. Gitlab-Runner automatically picks up config.toml changes while executing.
#>

$Env:RUNNER_NAME                = $env:COMPUTERNAME
$Env:REGISTRATION_TOKEN         = '{{ gitlab_runner_token }}'
$Env:CI_SERVER_URL              = '{{ gitlab_external_url }}'
$Env:RUNNER_TAG_LIST            = 'windows,win32,win64'        #comma separated list of tags

$Env:CONFIG_FILE                = "$PSScriptRoot\config.toml"
$Env:REGISTER_RUN_UNTAGGED      = 'false'
$Env:REGISTER_LOCKED            = $false    #lock runner to current project
$Env:RUNNER_EXECUTOR            = 'shell'
$Env:RUNNER_SHELL               = 'powershell'

$Env:RUNNER_REQUEST_CONCURRENCY = 1
$Env:RUNNER_BUILDS_DIR          = ''
$Env:RUNNER_CACHE_DIR           = ''


gitlab-runner register --non-interactive
