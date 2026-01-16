#!/usr/bin/env bash
set -euo pipefail

if [[ -z "${SAP_BASE_URL:-}" ]]; then
  echo "SAP_BASE_URL is required (example: https://my.sap.host)"
  exit 1
fi

service_path="/sap/opu/odata/sap/ZSERVBENDING/Empleados"
url="${SAP_BASE_URL%/}${service_path}"

if [[ -n "${SAP_USER:-}" && -n "${SAP_PASSWORD:-}" ]]; then
  curl -sS -u "${SAP_USER}:${SAP_PASSWORD}" "${url}" | head -c 2000
  echo
  exit 0
fi

curl -sS "${url}" | head -c 2000
echo
