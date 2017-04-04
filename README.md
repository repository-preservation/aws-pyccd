# About

Project for running Open Data Cube on AWS.


## Setup

This project requires Python 3.6.

Create a virtual environment and install dependencies.

```
make setup
```

## Credentials

This project uses Boto3 to work with AWS, you will need to add credentials
to `~/.aws/config` that allow you to write to an S3 bucket.

```
[default]
aws_access_key_id = YOUR_ACCESS_KEY
aws_secret_access_key = YOUR_SECRET_KEY
```

## Usage

Start the notebook server.

```
bin/notebook-server
```


## License

TBD
