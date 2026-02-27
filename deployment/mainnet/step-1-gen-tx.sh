#!/bin/bash
ckb-cli deploy gen-txs \
    --deployment-config ./deployment.toml \
    --migration-dir ./migrations \
    --fee-rate 2000 \
    --from-address ckb1qzda0cr08m85hc8jlnfp3zer7xulejywt49kt2rr0vthywaa50xwsqghpmvuqvetxwvcf9vjj0qj0x2naquhmagk5wf20 \
    --info-file info.json
