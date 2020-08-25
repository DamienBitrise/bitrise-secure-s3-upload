# bitrise-secure-s3-upload
Simple Ruby based secure S3 Upload

## Required Secrets
- S3_CLIENT_ID
- S3_SECRET
- S3_BUCKET
- S3_REGION

**bitrise.yml snippet:**

    - git::https://github.com/DamienBitrise/bitrise-secure-s3-upload@master:
            inputs:
            - client_id: "$S3_CLIENT_ID"
            - secret: "$S3_SECRET"
            - bucket: "$S3_BUCKET"
            - region: "$S3_REGION"
            - object: "$BITRISE_BUILD_SLUG.zip"
            - filename: "$BITRISE_SOURCE_DIR/DerivedData.zip"
