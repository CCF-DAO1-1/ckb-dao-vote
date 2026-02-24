#!/bin/bash

ckb-cli deploy sign-txs \
    --from-account ckb1qzda0cr08m85hc8jlnfp3zer7xulejywt49kt2rr0vthywaa50xwsqghpmvuqvetxwvcf9vjj0qj0x2naquhmagk5wf20 \
    --add-signatures \
    --info-file info.json
