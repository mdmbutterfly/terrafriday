variable "bucket_names" {
    type = map

    default = {
        weekly = "mdmbutterfly-weather-weekly"
        daily = "mdmbutterfly-weather-daily"
        hourly = "mdmbutterfly-weather-hourly"
    }
}

variable "bucket_tags" {
    type = map

    default = {
        weekly = { bucket_types = "weekly"}
        daily = { bucket_types = "daily"}
        hourly = { bucket_types = "hourly"}
    }
}

variable "bucket_lifecycle_rules" {
    type = map

    default = {
############        
        weekly = [
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
############
        daily = [
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

############

        hourly = [
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
