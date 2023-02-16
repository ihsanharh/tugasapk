echo "$RELEASE_KEYSTORE" > Ekeystore.jks
gpg -d --batch --passphrase $RELEASE_KEYSTORE_SECRET Ekeystore.jks > release-keystore.jks
cat release-keystore.jks