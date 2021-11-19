rm cms.csv
curl http://api.mainnet-beta.solana.com -X POST -H "Content-Type: application/json" -d '
  {
    "jsonrpc": "2.0",
    "id": 1,
    "method": "getProgramAccounts",
    "params": [
      "cndyAnrLdpjq1Ssp1z8xxDsB8dxe7u4HL5Nxi2K5WXZ",
      {
	"encoding": "jsonParsed",
        "filters": [
          {
            "memcmp": {
              "offset": 8,
              "bytes": "F9Z3JWZhBmChENpmg96y7q6YBzu4eky9EYDByDzHPdbS"
            }
          }
        ]
      }
    ]
  }
' | jq -r '.result[].account.lamports' >> cms.csv
