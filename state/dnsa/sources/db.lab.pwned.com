$TTL    3600;
$ORIGIN lab.pwned.com.
@                    SOA   ns1.lab.pwned.com. (
                                chris.pwned.com.    ; e-mail address
                                2019062608          ; serial number
                                3600                ; refresh period
                                600                 ; retry period
                                604800              ; expire time
                                1800 )              ; minimum ttl


                      NS    ns1
ns1                 AAAA    2605:e000:1520:93c::153
esx001              AAAA    2605:e000:1520:93c::101
esx002              AAAA    2605:e000:1520:93c::102
fai001              AAAA    2605:e000:1520:93c::3
fai                CNAME    fai001
k8s-control-plane   AAAA    2605:e000:1520:93c::130
                       A    192.168.1.130
k8smaster001        AAAA    2605:e000:1520:93c::131
                       A    192.168.1.131
k8smaster002        AAAA    2605:e000:1520:93c::132
                       A    192.168.1.132
k8smaster003        AAAA    2605:e000:1520:93c::133
                       A    192.168.1.133
k8sworker001        AAAA    2605:e000:1520:93c::134
                       A    192.168.1.134
k8sworker002        AAAA    2605:e000:1520:93c::135
                       A    192.168.1.135
k8sworker003        AAAA    2605:e000:1520:93c::136
                       A    192.168.1.136
k8sworker004        AAAA    2605:e000:1520:93c::137
                       A    192.168.1.137
k8sworker005        AAAA    2605:e000:1520:93c::138
                       A    192.168.1.138
k8sworker006        AAAA    2605:e000:1520:93c::139
                       A    192.168.1.139
mysql001            AAAA    2605:e000:1520:93c::55
mysql              CNAME    mysql001
nas001              AAAA    2605:e000:1520:93c::201
nas                CNAME    nas001
pihole001           AAAA    2605:e000:1520:93c::53
pihole             CNAME    pihole001
salt001                A    192.168.1.5
;salt001            AAAA    2605:e000:1520:93c::5
salt               CNAME    salt001
vct001              AAAA    2605:e000:1520:93c::100
vcenter            CNAME    vct001
