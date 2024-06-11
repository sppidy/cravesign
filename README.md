# Signing your builds

### Overview
The `keys.mk` file is a Makefile used in the Android build system to define the paths to various cryptographic keys necessary for signing different components of the Android operating system. These keys ensure the security and integrity of the system.

### Key Directory

- Make sure that keys (both ```pk8``` and ```.x509.pem```) are saved in vendor/keys and specifically the **keys should not be encrypted**
- Better way of implementing this method is to create a your private repository from this template repository and also add your key files to your private repository
- also add the following to your lineage_device.mk
  ```mk
  include vendor/keys/keys.mk
  ```
