# AWS S3 Terraform module

Terraform module which creates S3 bucket and S3 bucket objects resources on AWS.

## Usage

```hcl
module "bucket" {
  source = "./s3_module"

  name = "my-super-bucket-name"
}
```

## Conditional creation




## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|name|Bucket unique name|string|null| ✅ |
|acl|Bucket ACL|string|private|  |

## Outputs

| Name | Description |
|------|-------------|
|name|Bucket name|
|arn|Bucket ARN|



## Authors

Module managed by [Yuri Mussi](https://github.com/ymussi)

## License

- MIT
