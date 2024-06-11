# Signing Your Builds

## Overview

The `keys.mk` file is a Makefile used in the Android build system to define the paths to various cryptographic keys necessary for signing different components of the Android operating system. These keys ensure the security and integrity of the system.

## Key Directory

- Ensure that the keys (both `.pk8` and `.x509.pem`) are saved in `vendor/keys` and are **not encrypted**.
- A better approach is to create a private repository from this template repository and add your key files to your private repository.


## Required Keys
The following keys are required for signing your Android build:
- `platform`
- `releasekey`
- `shared`
- `media`
- `testkey`
- `verity`
- `sdk_sandbox`

### Generating the Keys
You can generate the necessary keys using the following script. Copy and paste this script into your terminal, ensuring you are in the root directory of the ROM:

```sh
subject='/C=US/ST=California/L=Mountain View/O=Android/OU=Android/CN=Android/emailAddress=android@android.com'
for cert in media platform releasekey sdk_sandbox shared testkey verity; do \
    ./development/tools/make_key vendor/keys/$cert "$subject"; \
done
```
> **Note**: You can change the values in the subject according to your preferences.

### Detailed Instructions for Generating Keys
1. **Install OpenSSL**: Ensure OpenSSL is installed on your system.
   - For debian-based systems
       ```sh
       sudo apt-get install openssl
       ```
   - For Arch-based systems
       ```sh
       sudo pacman -S openssl
       ```

2. **Generate Keys**: Use the provided script to generate keys. Each key will consist of a `.x509.pem` certificate and a `.pk8` private key.

   *Note : Generate keys without password, the keys should not be encrypted.*

   The subject line in the script specifies the details for the certificate:
   - `C`: Country
   - `ST`: State
   - `L`: Locality (City)
   - `O`: Organization
   - `OU`: Organizational Unit
   - `CN`: Common Name
   - `emailAddress`: Email address associated with the certificate

4. **Store Keys**: Ensure the generated keys are stored in the `vendor/keys` directory. The structure should look like this:
   ```
   vendor/keys/
   ├── platform.x509.pem
   ├── platform.pk8
   ├── releasekey.x509.pem
   ├── releasekey.pk8
   ├── shared.x509.pem
   ├── shared.pk8
   ├── media.x509.pem
   ├── media.pk8
   ├── testkey.x509.pem
   ├── testkey.pk8
   ├── verity.x509.pem
   ├── verity.pk8
   ├── sdk_sandbox.x509.pem
   ├── sdk_sandbox.pk8
   ├── keys.mk
   ```

### Adding Keys to Your Build
To include the keys in your Android build, add the following line to your `lineage_<device>.mk` file:
```makefile
include vendor/keys/keys.mk
```

## Conclusion
By following these steps, you can generate, store, and use cryptographic keys to sign various components of your Android build. This ensures that your build is secure and maintains the integrity of the operating system.
