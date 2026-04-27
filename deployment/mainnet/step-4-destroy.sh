#!/bin/bash
rm -f destroy-tx.json

ckb-cli tx init --tx-file destroy-tx.json

ckb-cli tx add-multisig-config \
    --sighash-address ckb1qzda0cr08m85hc8jlnfp3zer7xulejywt49kt2rr0vthywaa50xwsqfjl5tvq3rd42099q3ps7gzhr22tytclmq0paent \
    --sighash-address ckb1qzda0cr08m85hc8jlnfp3zer7xulejywt49kt2rr0vthywaa50xwsqt4q36wdxa34k89g5snyw694jy0nxht8yshfyw55 \
    --sighash-address ckb1qzda0cr08m85hc8jlnfp3zer7xulejywt49kt2rr0vthywaa50xwsqfjpr2mhtfgzess0zl7xpua3uxe7altmtg2ptlqd \
    --threshold 2 \
    --require-first-n 0 \
    --multisig-code-hash v2 \
    --tx-file destroy-tx.json

ckb-cli tx add-input --tx-hash 0xd8cb3f3b109ab35e51cb0c849f2b66159e376e125c6b701d193a6a636eb3247d --index 0 --tx-file destroy-tx.json

ckb-cli tx add-output --to-sighash-address ckb1qyqwk4h9mka6umwaehye82dsjyugkkj5d88ql9nr3k --capacity 85293.999 --tx-file destroy-tx.json

ckb-cli tx info --tx-file destroy-tx.json

# 多签人2对交易进行签名
# ckb-cli tx sign-inputs --from-account ckb1qzda0cr08m85hc8jlnfp3zer7xulejywt49kt2rr0vthywaa50xwsqt4q36wdxa34k89g5snyw694jy0nxht8yshfyw55 --tx-file destroy-tx.json
# Password: 
# - lock-arg: 0xbc2dacbc7659dc2acbcc0efc0b54df808099e888
#   signature: 0xf124fb31553556c330e629d6e42ac5789dca1fb70402b639508a343567d9672f5c8937d113cc519f5cc54c5fd7919bee01b56523e64ae2cb5110ca630fa25fdb00

# 多签人1对交易进行签名
# ckb-cli tx sign-inputs --from-account ckb1qzda0cr08m85hc8jlnfp3zer7xulejywt49kt2rr0vthywaa50xwsqfjl5tvq3rd42099q3ps7gzhr22tytclmq0paent --tx-file destroy-tx.json
# - lock-arg: 0xbc2dacbc7659dc2acbcc0efc0b54df808099e888
#  signature: 0x5468a86c2bf2f7bfaa981072bb99b2f2d25c93eb6e1a9652249dc5ff473508f54d172cbe51f8ef791322eff865383b67efbfd7508c997102471ede17a61b74a501


# ckb-cli tx add-signature --lock-arg 0xbc2dacbc7659dc2acbcc0efc0b54df808099e888 --signature 0xf124fb31553556c330e629d6e42ac5789dca1fb70402b639508a343567d9672f5c8937d113cc519f5cc54c5fd7919bee01b56523e64ae2cb5110ca630fa25fdb00 --tx-file destroy-tx.json
# ckb-cli tx add-signature --lock-arg 0xbc2dacbc7659dc2acbcc0efc0b54df808099e888 --signature 0x5468a86c2bf2f7bfaa981072bb99b2f2d25c93eb6e1a9652249dc5ff473508f54d172cbe51f8ef791322eff865383b67efbfd7508c997102471ede17a61b74a501 --tx-file destroy-tx.json

# ckb-cli tx send --tx-file destroy-tx.json
# 0x1a4d5e3838d72dda8b3aa1119116e7c82bedb22098b15500b57c72f4bf119470