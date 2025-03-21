declare -Ar hosts_reserved_ports=(
    [staging.attestation.app]=8080
    [attestation.app]=8080
    [matrix.grapheneos.org]=8008
    [{0..3}.grapheneos.network]=7275
)

declare -Ar hosts_ssh_users=(
    [staging.attestation.app]="root attestation"
    [attestation.app]="root attestation"
    [discuss.grapheneos.org]="root flarum-admin"
)

declare -Ar hosts_journald_system_max_use=(
    [{0..3}.grapheneos.org]=16G
    [{0..7}.releases.grapheneos.org]=8G
    [{0..3}.grapheneos.network]=16G
)

declare -Ar hosts_journald_max_retention_sec=(
    [ns1.staging.grapheneos.org]=4day
    [ns1.grapheneos.org]=4day
    [{0..2}.ns2.grapheneos.org]=4day
    [{0..3}.grapheneos.network]=4day
)

declare -Ar hosts_ipv4_address=(
    [ns1.staging.grapheneos.org]=198.98.56.238
    [ns1.grapheneos.org]=51.222.14.6
    [0.ns2.grapheneos.org]=198.98.53.141
    [1.ns2.grapheneos.org]=205.185.124.155
    [2.ns2.grapheneos.org]=107.189.3.168
    [mail.grapheneos.org]=192.99.98.22
    [staging.grapheneos.org]=199.195.250.78
    [0.grapheneos.org]=192.99.43.50
    [1.grapheneos.org]=209.141.35.164
    [2.grapheneos.org]=51.178.136.41
    [3.grapheneos.org]=51.79.160.212
    [matrix.grapheneos.org]=51.79.51.42
    [discuss.grapheneos.org]=51.161.11.34
    [grapheneos.social]=51.222.30.159
    [0.releases.grapheneos.org]=167.114.114.114
    [1.releases.grapheneos.org]=51.79.74.15
    [2.releases.grapheneos.org]=51.222.159.48
    [3.releases.grapheneos.org]=51.222.140.199
    [4.releases.grapheneos.org]=141.94.71.158
    [5.releases.grapheneos.org]=141.94.71.72
    [6.releases.grapheneos.org]=135.125.183.155
    [7.releases.grapheneos.org]=141.95.0.242
    [0.grapheneos.network]=51.79.54.68
    [1.grapheneos.network]=209.141.37.35
    [2.grapheneos.network]=146.59.144.170
    [3.grapheneos.network]=51.79.165.181
    [staging.attestation.app]=198.98.57.157
    [attestation.app]=51.79.50.249
)

declare -Ar hosts_ipv6_address=(
    [ns1.staging.grapheneos.org]=2605:6400:10:c41:de92:c534:326a:711a
    [ns1.grapheneos.org]=2607:5300:205:200::29e8
    [0.ns2.grapheneos.org]=2605:6400:10:102e:95bc:89ef:2e7f:49bb
    [1.ns2.grapheneos.org]=2605:6400:20:1c8f:a0c9:372d:482e:945b
    [2.ns2.grapheneos.org]=2605:6400:30:ec25:102c:af6d:5be:1eb8
    [mail.grapheneos.org]=2607:5300:205:200::94f
    [staging.grapheneos.org]=2605:6400:10:9d6:6d84:e183:acda:16d7
    [0.grapheneos.org]=2607:5300:201:3100::1aae
    [1.grapheneos.org]=2605:6400:20:1131:8088:e08:84e6:632
    [2.grapheneos.org]=2001:41d0:304:200::a087
    [3.grapheneos.org]=2402:1f00:8000:800::25ba
    [matrix.grapheneos.org]=2607:5300:205:200::26e1
    [discuss.grapheneos.org]=2607:5300:205:200::3df
    [grapheneos.social]=2607:5300:205:200::2706
    [0.releases.grapheneos.org]=2607:5300:201:3100::6210
    [1.releases.grapheneos.org]=2607:5300:205:200::2441
    [2.releases.grapheneos.org]=2607:5300:205:200::3f46
    [3.releases.grapheneos.org]=2607:5300:205:200::39fe
    [4.releases.grapheneos.org]=2001:41d0:304:200::14ff
    [5.releases.grapheneos.org]=2001:41d0:304:200::a687
    [6.releases.grapheneos.org]=2001:41d0:701:1100::2ec9
    [7.releases.grapheneos.org]=2001:41d0:701:1100::3e56
    [0.grapheneos.network]=2607:5300:205:200::b44
    [1.grapheneos.network]=2605:6400:20:387:72d4:dab9:a369:f351
    [2.grapheneos.network]=2001:41d0:304:200::df95
    [3.grapheneos.network]=2402:1f00:8000:800::e14
    [staging.attestation.app]=2605:6400:10:aa9:1c0f:44d3:da15:c0ec
    [attestation.app]=2607:5300:205:200::86a
)

readonly hosts_dns=(
    ns1.staging.grapheneos.org
    ns1.grapheneos.org
    {0..2}.ns2.grapheneos.org
)

readonly hosts_staging=(
    ns1.staging.grapheneos.org
    staging.grapheneos.org
    staging.attestation.app
)

readonly hosts_certbot=(
    mail.grapheneos.org
    staging.grapheneos.org
    0.grapheneos.org
    matrix.grapheneos.org
    discuss.grapheneos.org
    grapheneos.social
    0.releases.grapheneos.org
    0.grapheneos.network
    staging.attestation.app
    attestation.app
)

readonly hosts_grapheneos=(
    staging.grapheneos.org
    {0..3}.grapheneos.org
)

readonly hosts_releases=(
    {0..7}.releases.grapheneos.org
)

readonly hosts_network=(
    {0..3}.grapheneos.network
)

readonly hosts_attestation=(
    staging.attestation.app
    attestation.app
)

readonly hosts_web=(
    mail.grapheneos.org
    "${hosts_grapheneos[@]}"
    matrix.grapheneos.org
    discuss.grapheneos.org
    grapheneos.social
    "${hosts_releases[@]}"
    "${hosts_network[@]}"
    "${hosts_attestation[@]}"
)

readonly hosts_all=(
    "${hosts_dns[@]}"
    "${hosts_web[@]}"
)
