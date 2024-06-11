# This Makefile defines the paths to cryptographic keys used in the Android build process.

# Define the directory containing the keys
KEYS_DIR := vendor/keys

# Product default development certificate and key
PRODUCT_DEFAULT_DEV_CERTIFICATE := $(KEYS_DIR)/platform
PRODUCT_DEFAULT_DEV_KEY := $(KEYS_DIR)/platform

# OTA (Over-the-Air) update keys
PRODUCT_OTA_PUBLIC_KEYS := $(KEYS_DIR)/releasekey
PRODUCT_OTA_PRIVATE_KEY := $(KEYS_DIR)/releasekey

# Shared library keys
PRODUCT_SHARED_LIBRARY_KEY := $(KEYS_DIR)/shared
PRODUCT_SHARED_LIBRARY_PRIVATE_KEY := $(KEYS_DIR)/shared

# Media keys
PRODUCT_MEDIA_CERTIFICATE := $(KEYS_DIR)/media
PRODUCT_MEDIA_PRIVATE_KEY := $(KEYS_DIR)/media

# Test keys
PRODUCT_TESTKEY_CERTIFICATE := $(KEYS_DIR)/testkey
PRODUCT_TESTKEY_PRIVATE_KEY := $(KEYS_DIR)/testkey

# Verified Boot (Verity) keys
PRODUCT_VERITY_PUBLIC_KEYS := $(KEYS_DIR)/verity
PRODUCT_VERITY_PRIVATE_KEY := $(KEYS_DIR)/verity

# SDK Sandbox keys
PRODUCT_SDK_SANDBOX_CERTIFICATE := $(KEYS_DIR)/sdk_sandbox
PRODUCT_SDK_SANDBOX_PRIVATE_KEY := $(KEYS_DIR)/sdk_sandbox

# Additional keys can be added as necessary
# PRODUCT_EXTRA_CERTIFICATE := $(KEYS_DIR)/extra.x509.pem
# PRODUCT_EXTRA_PRIVATE_KEY := $(KEYS_DIR)/extra.pk8
