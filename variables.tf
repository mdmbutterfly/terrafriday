variable project {

    type = map

    default = {

mdmbutterfly-weather-weekly = {
    tags = { bucket_types = "weekly"}
    lifecycle_rule = [
    {
      id      = "weekly"
      enabled = true

      tags = {
        bucket_types      = "weekly"
      }

      transition = [
        {
          days          = 36
          storage_class = "ONEZONE_IA"
          }, {
          days          = 60
          storage_class = "GLACIER"
        }
      ]

      expiration = {
        days = 365
      }

    },
  ]
}
mdmbutterfly-weather-daily = {
    tags = { bucket_types = "daily"}
    lifecycle_rule = [
    {
      id      = "daily"
      enabled = true

      tags = {
        bucket_types      = "daily"
      }

      transition = [
        {
          days          = 8
          storage_class = "ONEZONE_IA"
          }, {
          days          = 15
          storage_class = "GLACIER"
        }
      ]

      expiration = {
        days = 90
      }

     
    },
  ]
}
mdmbutterfly-weather-hourly = {
    tags = { bucket_types = "hourly"}
    lifecycle_rule = [
    {
      id      = "hourly"
      enabled = true

      tags = {
        bucket_types      = "hourly"
      }

      transition = [
        {
          days          = 2
          storage_class = "ONEZONE_IA"
          }, {
          days          = 8
          storage_class = "GLACIER"
        }
      ]

      expiration = {
        days = 90
      }

    },]

}
    }
}
