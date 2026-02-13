# Rebrand output binary names without touching internal target names.
# Safe: only applies if the target exists.

function(aurumcpu_rebrand target newname)
  if(TARGET ${target})
    set_target_properties(${target} PROPERTIES OUTPUT_NAME ${newname})
  endif()
endfunction()

# Daemon + wallets (these might already be rebranded, but harmless)
aurumcpu_rebrand(monerod aurumcpud)
aurumcpu_rebrand(wallet aurumcpu-wallet-cli)
aurumcpu_rebrand(wallet_rpc_server aurumcpu-wallet-rpc)

# Blockchain tools
aurumcpu_rebrand(monero-blockchain-ancestry aurumcpu-blockchain-ancestry)
aurumcpu_rebrand(monero-blockchain-depth aurumcpu-blockchain-depth)
aurumcpu_rebrand(monero-blockchain-export aurumcpu-blockchain-export)
aurumcpu_rebrand(monero-blockchain-import aurumcpu-blockchain-import)
aurumcpu_rebrand(monero-blockchain-mark-spent-outputs aurumcpu-blockchain-mark-spent-outputs)
aurumcpu_rebrand(monero-blockchain-prune aurumcpu-blockchain-prune)
aurumcpu_rebrand(monero-blockchain-prune-known-spent-data aurumcpu-blockchain-prune-known-spent-data)
aurumcpu_rebrand(monero-blockchain-stats aurumcpu-blockchain-stats)
aurumcpu_rebrand(monero-blockchain-usage aurumcpu-blockchain-usage)

# Cert / multisig helpers
aurumcpu_rebrand(monero-gen-ssl-cert aurumcpu-gen-ssl-cert)
aurumcpu_rebrand(monero-gen-trusted-multisig aurumcpu-gen-trusted-multisig)

message(STATUS "AurumCPU: output binary rebrand rules loaded")

# ---- Fix: these tools are built from targets named blockchain_* / gen_* ----
aurumcpu_rebrand(blockchain_ancestry aurumcpu-blockchain-ancestry)
aurumcpu_rebrand(blockchain_depth aurumcpu-blockchain-depth)
aurumcpu_rebrand(blockchain_export aurumcpu-blockchain-export)
aurumcpu_rebrand(blockchain_import aurumcpu-blockchain-import)
aurumcpu_rebrand(blockchain_mark_spent_outputs aurumcpu-blockchain-mark-spent-outputs)
aurumcpu_rebrand(blockchain_prune aurumcpu-blockchain-prune)
aurumcpu_rebrand(blockchain_prune_known_spent_data aurumcpu-blockchain-prune-known-spent-data)
aurumcpu_rebrand(blockchain_stats aurumcpu-blockchain-stats)
aurumcpu_rebrand(blockchain_usage aurumcpu-blockchain-usage)

aurumcpu_rebrand(gen_ssl_cert aurumcpu-gen-ssl-cert)
aurumcpu_rebrand(gen_multisig aurumcpu-gen-trusted-multisig)
