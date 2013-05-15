# uploader

Uploader is a sample app that uses the *[Paperclip](https://github.com/thoughtbot/paperclip)* and *[jquery-fileupload](https://github.com/tors/jquery-fileupload-rails)* gems to allow users to upload files via drag and drop. Files are hosted on Amazon S3.

## AWS credentials

Uploader is set up to use Amazon S3 to host the files. To use S3, you'll need to create a file to store your credentials at ./config/aws.yml

The file should look similar to the following:
    development:
      bucket: mybucketname
      access_key_id: XKBBISmykeyid377A
      secret_access_key: safdshfuosecretaccesskeynsdfjl4ujklbnlkh

    test:
      bucket: mybucketname
      access_key_id: XKBBISmykeyid377A
      secret_access_key: safdshfuosecretaccesskeynsdfjl4ujklbnlkh

    production:
      bucket: mybucketname
      access_key_id: XKBBISmykeyid377A
      secret_access_key: safdshfuosecretaccesskeynsdfjl4ujklbnlkh

