module "s3" {
    source = "./modules/s3"
    bucketname = "s3-projectapp-wris"
}

module "cloudfront" {
    source = "./modules/cloudfront"
    bucket_name = module.s3.bucket_name
    bucket_id = module.s3.bucket_id
    website_domain = module.s3.website_domain
  
}