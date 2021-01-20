# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.18.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ZacksLongTermGrowthRate Class
#'
#' @field mean 
#' @field median 
#' @field count 
#' @field high 
#' @field low 
#' @field std_dev 
#' @field revisions_upward 
#' @field revisions_downward 
#' @field mean_7_days_ago 
#' @field mean_30_days_ago 
#' @field mean_60_days_ago 
#' @field mean_90_days_ago 
#' @field revisions_upward_last_7_days 
#' @field revisions_downward_last_7_days 
#' @field revisions_upward_last_30_days 
#' @field revisions_downward_last_30_days 
#' @field revisions_upward_last_60_days 
#' @field revisions_downward_last_60_days 
#' @field revisions_upward_last_90_days 
#' @field revisions_downward_last_90_days 
#' @field revisions_upward_last_120_days 
#' @field revisions_downward_last_120_days 
#' @field revisions_upward_last_150_days 
#' @field revisions_downward_last_150_days 
#' @field security 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ZacksLongTermGrowthRate <- R6::R6Class(
  'ZacksLongTermGrowthRate',
  public = list(
    `mean` = NA,
    `median` = NA,
    `count` = NA,
    `high` = NA,
    `low` = NA,
    `std_dev` = NA,
    `revisions_upward` = NA,
    `revisions_downward` = NA,
    `mean_7_days_ago` = NA,
    `mean_30_days_ago` = NA,
    `mean_60_days_ago` = NA,
    `mean_90_days_ago` = NA,
    `revisions_upward_last_7_days` = NA,
    `revisions_downward_last_7_days` = NA,
    `revisions_upward_last_30_days` = NA,
    `revisions_downward_last_30_days` = NA,
    `revisions_upward_last_60_days` = NA,
    `revisions_downward_last_60_days` = NA,
    `revisions_upward_last_90_days` = NA,
    `revisions_downward_last_90_days` = NA,
    `revisions_upward_last_120_days` = NA,
    `revisions_downward_last_120_days` = NA,
    `revisions_upward_last_150_days` = NA,
    `revisions_downward_last_150_days` = NA,
    `security` = NA,
    initialize = function(`mean`, `median`, `count`, `high`, `low`, `std_dev`, `revisions_upward`, `revisions_downward`, `mean_7_days_ago`, `mean_30_days_ago`, `mean_60_days_ago`, `mean_90_days_ago`, `revisions_upward_last_7_days`, `revisions_downward_last_7_days`, `revisions_upward_last_30_days`, `revisions_downward_last_30_days`, `revisions_upward_last_60_days`, `revisions_downward_last_60_days`, `revisions_upward_last_90_days`, `revisions_downward_last_90_days`, `revisions_upward_last_120_days`, `revisions_downward_last_120_days`, `revisions_upward_last_150_days`, `revisions_downward_last_150_days`, `security`){
      if (!missing(`mean`)) {
        self$`mean` <- `mean`
      }
      if (!missing(`median`)) {
        self$`median` <- `median`
      }
      if (!missing(`count`)) {
        self$`count` <- `count`
      }
      if (!missing(`high`)) {
        self$`high` <- `high`
      }
      if (!missing(`low`)) {
        self$`low` <- `low`
      }
      if (!missing(`std_dev`)) {
        self$`std_dev` <- `std_dev`
      }
      if (!missing(`revisions_upward`)) {
        self$`revisions_upward` <- `revisions_upward`
      }
      if (!missing(`revisions_downward`)) {
        self$`revisions_downward` <- `revisions_downward`
      }
      if (!missing(`mean_7_days_ago`)) {
        self$`mean_7_days_ago` <- `mean_7_days_ago`
      }
      if (!missing(`mean_30_days_ago`)) {
        self$`mean_30_days_ago` <- `mean_30_days_ago`
      }
      if (!missing(`mean_60_days_ago`)) {
        self$`mean_60_days_ago` <- `mean_60_days_ago`
      }
      if (!missing(`mean_90_days_ago`)) {
        self$`mean_90_days_ago` <- `mean_90_days_ago`
      }
      if (!missing(`revisions_upward_last_7_days`)) {
        self$`revisions_upward_last_7_days` <- `revisions_upward_last_7_days`
      }
      if (!missing(`revisions_downward_last_7_days`)) {
        self$`revisions_downward_last_7_days` <- `revisions_downward_last_7_days`
      }
      if (!missing(`revisions_upward_last_30_days`)) {
        self$`revisions_upward_last_30_days` <- `revisions_upward_last_30_days`
      }
      if (!missing(`revisions_downward_last_30_days`)) {
        self$`revisions_downward_last_30_days` <- `revisions_downward_last_30_days`
      }
      if (!missing(`revisions_upward_last_60_days`)) {
        self$`revisions_upward_last_60_days` <- `revisions_upward_last_60_days`
      }
      if (!missing(`revisions_downward_last_60_days`)) {
        self$`revisions_downward_last_60_days` <- `revisions_downward_last_60_days`
      }
      if (!missing(`revisions_upward_last_90_days`)) {
        self$`revisions_upward_last_90_days` <- `revisions_upward_last_90_days`
      }
      if (!missing(`revisions_downward_last_90_days`)) {
        self$`revisions_downward_last_90_days` <- `revisions_downward_last_90_days`
      }
      if (!missing(`revisions_upward_last_120_days`)) {
        self$`revisions_upward_last_120_days` <- `revisions_upward_last_120_days`
      }
      if (!missing(`revisions_downward_last_120_days`)) {
        self$`revisions_downward_last_120_days` <- `revisions_downward_last_120_days`
      }
      if (!missing(`revisions_upward_last_150_days`)) {
        self$`revisions_upward_last_150_days` <- `revisions_upward_last_150_days`
      }
      if (!missing(`revisions_downward_last_150_days`)) {
        self$`revisions_downward_last_150_days` <- `revisions_downward_last_150_days`
      }
      if (!missing(`security`)) {
        self$`security` <- `security`
      }
    },
    toJSON = function() {
      ZacksLongTermGrowthRateObject <- list()
      if (!is.null(self$`mean`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`mean`) && ((length(self$`mean`) == 0) || ((length(self$`mean`) != 0 && R6::is.R6(self$`mean`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['mean']] <- lapply(self$`mean`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['mean']] <- jsonlite::toJSON(self$`mean`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`median`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`median`) && ((length(self$`median`) == 0) || ((length(self$`median`) != 0 && R6::is.R6(self$`median`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['median']] <- lapply(self$`median`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['median']] <- jsonlite::toJSON(self$`median`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`count`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`count`) && ((length(self$`count`) == 0) || ((length(self$`count`) != 0 && R6::is.R6(self$`count`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['count']] <- lapply(self$`count`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['count']] <- jsonlite::toJSON(self$`count`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`high`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`high`) && ((length(self$`high`) == 0) || ((length(self$`high`) != 0 && R6::is.R6(self$`high`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['high']] <- lapply(self$`high`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['high']] <- jsonlite::toJSON(self$`high`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`low`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`low`) && ((length(self$`low`) == 0) || ((length(self$`low`) != 0 && R6::is.R6(self$`low`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['low']] <- lapply(self$`low`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['low']] <- jsonlite::toJSON(self$`low`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`std_dev`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`std_dev`) && ((length(self$`std_dev`) == 0) || ((length(self$`std_dev`) != 0 && R6::is.R6(self$`std_dev`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['std_dev']] <- lapply(self$`std_dev`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['std_dev']] <- jsonlite::toJSON(self$`std_dev`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`revisions_upward`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`revisions_upward`) && ((length(self$`revisions_upward`) == 0) || ((length(self$`revisions_upward`) != 0 && R6::is.R6(self$`revisions_upward`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['revisions_upward']] <- lapply(self$`revisions_upward`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['revisions_upward']] <- jsonlite::toJSON(self$`revisions_upward`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`revisions_downward`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`revisions_downward`) && ((length(self$`revisions_downward`) == 0) || ((length(self$`revisions_downward`) != 0 && R6::is.R6(self$`revisions_downward`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['revisions_downward']] <- lapply(self$`revisions_downward`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['revisions_downward']] <- jsonlite::toJSON(self$`revisions_downward`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`mean_7_days_ago`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`mean_7_days_ago`) && ((length(self$`mean_7_days_ago`) == 0) || ((length(self$`mean_7_days_ago`) != 0 && R6::is.R6(self$`mean_7_days_ago`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['mean_7_days_ago']] <- lapply(self$`mean_7_days_ago`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['mean_7_days_ago']] <- jsonlite::toJSON(self$`mean_7_days_ago`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`mean_30_days_ago`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`mean_30_days_ago`) && ((length(self$`mean_30_days_ago`) == 0) || ((length(self$`mean_30_days_ago`) != 0 && R6::is.R6(self$`mean_30_days_ago`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['mean_30_days_ago']] <- lapply(self$`mean_30_days_ago`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['mean_30_days_ago']] <- jsonlite::toJSON(self$`mean_30_days_ago`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`mean_60_days_ago`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`mean_60_days_ago`) && ((length(self$`mean_60_days_ago`) == 0) || ((length(self$`mean_60_days_ago`) != 0 && R6::is.R6(self$`mean_60_days_ago`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['mean_60_days_ago']] <- lapply(self$`mean_60_days_ago`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['mean_60_days_ago']] <- jsonlite::toJSON(self$`mean_60_days_ago`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`mean_90_days_ago`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`mean_90_days_ago`) && ((length(self$`mean_90_days_ago`) == 0) || ((length(self$`mean_90_days_ago`) != 0 && R6::is.R6(self$`mean_90_days_ago`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['mean_90_days_ago']] <- lapply(self$`mean_90_days_ago`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['mean_90_days_ago']] <- jsonlite::toJSON(self$`mean_90_days_ago`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`revisions_upward_last_7_days`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`revisions_upward_last_7_days`) && ((length(self$`revisions_upward_last_7_days`) == 0) || ((length(self$`revisions_upward_last_7_days`) != 0 && R6::is.R6(self$`revisions_upward_last_7_days`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['revisions_upward_last_7_days']] <- lapply(self$`revisions_upward_last_7_days`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['revisions_upward_last_7_days']] <- jsonlite::toJSON(self$`revisions_upward_last_7_days`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`revisions_downward_last_7_days`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`revisions_downward_last_7_days`) && ((length(self$`revisions_downward_last_7_days`) == 0) || ((length(self$`revisions_downward_last_7_days`) != 0 && R6::is.R6(self$`revisions_downward_last_7_days`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['revisions_downward_last_7_days']] <- lapply(self$`revisions_downward_last_7_days`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['revisions_downward_last_7_days']] <- jsonlite::toJSON(self$`revisions_downward_last_7_days`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`revisions_upward_last_30_days`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`revisions_upward_last_30_days`) && ((length(self$`revisions_upward_last_30_days`) == 0) || ((length(self$`revisions_upward_last_30_days`) != 0 && R6::is.R6(self$`revisions_upward_last_30_days`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['revisions_upward_last_30_days']] <- lapply(self$`revisions_upward_last_30_days`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['revisions_upward_last_30_days']] <- jsonlite::toJSON(self$`revisions_upward_last_30_days`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`revisions_downward_last_30_days`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`revisions_downward_last_30_days`) && ((length(self$`revisions_downward_last_30_days`) == 0) || ((length(self$`revisions_downward_last_30_days`) != 0 && R6::is.R6(self$`revisions_downward_last_30_days`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['revisions_downward_last_30_days']] <- lapply(self$`revisions_downward_last_30_days`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['revisions_downward_last_30_days']] <- jsonlite::toJSON(self$`revisions_downward_last_30_days`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`revisions_upward_last_60_days`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`revisions_upward_last_60_days`) && ((length(self$`revisions_upward_last_60_days`) == 0) || ((length(self$`revisions_upward_last_60_days`) != 0 && R6::is.R6(self$`revisions_upward_last_60_days`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['revisions_upward_last_60_days']] <- lapply(self$`revisions_upward_last_60_days`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['revisions_upward_last_60_days']] <- jsonlite::toJSON(self$`revisions_upward_last_60_days`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`revisions_downward_last_60_days`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`revisions_downward_last_60_days`) && ((length(self$`revisions_downward_last_60_days`) == 0) || ((length(self$`revisions_downward_last_60_days`) != 0 && R6::is.R6(self$`revisions_downward_last_60_days`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['revisions_downward_last_60_days']] <- lapply(self$`revisions_downward_last_60_days`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['revisions_downward_last_60_days']] <- jsonlite::toJSON(self$`revisions_downward_last_60_days`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`revisions_upward_last_90_days`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`revisions_upward_last_90_days`) && ((length(self$`revisions_upward_last_90_days`) == 0) || ((length(self$`revisions_upward_last_90_days`) != 0 && R6::is.R6(self$`revisions_upward_last_90_days`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['revisions_upward_last_90_days']] <- lapply(self$`revisions_upward_last_90_days`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['revisions_upward_last_90_days']] <- jsonlite::toJSON(self$`revisions_upward_last_90_days`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`revisions_downward_last_90_days`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`revisions_downward_last_90_days`) && ((length(self$`revisions_downward_last_90_days`) == 0) || ((length(self$`revisions_downward_last_90_days`) != 0 && R6::is.R6(self$`revisions_downward_last_90_days`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['revisions_downward_last_90_days']] <- lapply(self$`revisions_downward_last_90_days`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['revisions_downward_last_90_days']] <- jsonlite::toJSON(self$`revisions_downward_last_90_days`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`revisions_upward_last_120_days`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`revisions_upward_last_120_days`) && ((length(self$`revisions_upward_last_120_days`) == 0) || ((length(self$`revisions_upward_last_120_days`) != 0 && R6::is.R6(self$`revisions_upward_last_120_days`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['revisions_upward_last_120_days']] <- lapply(self$`revisions_upward_last_120_days`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['revisions_upward_last_120_days']] <- jsonlite::toJSON(self$`revisions_upward_last_120_days`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`revisions_downward_last_120_days`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`revisions_downward_last_120_days`) && ((length(self$`revisions_downward_last_120_days`) == 0) || ((length(self$`revisions_downward_last_120_days`) != 0 && R6::is.R6(self$`revisions_downward_last_120_days`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['revisions_downward_last_120_days']] <- lapply(self$`revisions_downward_last_120_days`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['revisions_downward_last_120_days']] <- jsonlite::toJSON(self$`revisions_downward_last_120_days`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`revisions_upward_last_150_days`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`revisions_upward_last_150_days`) && ((length(self$`revisions_upward_last_150_days`) == 0) || ((length(self$`revisions_upward_last_150_days`) != 0 && R6::is.R6(self$`revisions_upward_last_150_days`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['revisions_upward_last_150_days']] <- lapply(self$`revisions_upward_last_150_days`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['revisions_upward_last_150_days']] <- jsonlite::toJSON(self$`revisions_upward_last_150_days`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`revisions_downward_last_150_days`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`revisions_downward_last_150_days`) && ((length(self$`revisions_downward_last_150_days`) == 0) || ((length(self$`revisions_downward_last_150_days`) != 0 && R6::is.R6(self$`revisions_downward_last_150_days`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['revisions_downward_last_150_days']] <- lapply(self$`revisions_downward_last_150_days`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['revisions_downward_last_150_days']] <- jsonlite::toJSON(self$`revisions_downward_last_150_days`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`security`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`security`) && ((length(self$`security`) == 0) || ((length(self$`security`) != 0 && R6::is.R6(self$`security`[[1]]))))) {
          ZacksLongTermGrowthRateObject[['security']] <- lapply(self$`security`, function(x) x$toJSON())
        } else {
          ZacksLongTermGrowthRateObject[['security']] <- jsonlite::toJSON(self$`security`, auto_unbox = TRUE)
        }
      }

      ZacksLongTermGrowthRateObject
    },
    fromJSON = function(ZacksLongTermGrowthRateJson) {
      ZacksLongTermGrowthRateObject <- jsonlite::fromJSON(ZacksLongTermGrowthRateJson)
      if (!is.null(ZacksLongTermGrowthRateObject$`mean`)) {
        self$`mean` <- ZacksLongTermGrowthRateObject$`mean`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`median`)) {
        self$`median` <- ZacksLongTermGrowthRateObject$`median`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`count`)) {
        self$`count` <- ZacksLongTermGrowthRateObject$`count`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`high`)) {
        self$`high` <- ZacksLongTermGrowthRateObject$`high`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`low`)) {
        self$`low` <- ZacksLongTermGrowthRateObject$`low`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`std_dev`)) {
        self$`std_dev` <- ZacksLongTermGrowthRateObject$`std_dev`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`revisions_upward`)) {
        self$`revisions_upward` <- ZacksLongTermGrowthRateObject$`revisions_upward`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`revisions_downward`)) {
        self$`revisions_downward` <- ZacksLongTermGrowthRateObject$`revisions_downward`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`mean_7_days_ago`)) {
        self$`mean_7_days_ago` <- ZacksLongTermGrowthRateObject$`mean_7_days_ago`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`mean_30_days_ago`)) {
        self$`mean_30_days_ago` <- ZacksLongTermGrowthRateObject$`mean_30_days_ago`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`mean_60_days_ago`)) {
        self$`mean_60_days_ago` <- ZacksLongTermGrowthRateObject$`mean_60_days_ago`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`mean_90_days_ago`)) {
        self$`mean_90_days_ago` <- ZacksLongTermGrowthRateObject$`mean_90_days_ago`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`revisions_upward_last_7_days`)) {
        self$`revisions_upward_last_7_days` <- ZacksLongTermGrowthRateObject$`revisions_upward_last_7_days`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`revisions_downward_last_7_days`)) {
        self$`revisions_downward_last_7_days` <- ZacksLongTermGrowthRateObject$`revisions_downward_last_7_days`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`revisions_upward_last_30_days`)) {
        self$`revisions_upward_last_30_days` <- ZacksLongTermGrowthRateObject$`revisions_upward_last_30_days`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`revisions_downward_last_30_days`)) {
        self$`revisions_downward_last_30_days` <- ZacksLongTermGrowthRateObject$`revisions_downward_last_30_days`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`revisions_upward_last_60_days`)) {
        self$`revisions_upward_last_60_days` <- ZacksLongTermGrowthRateObject$`revisions_upward_last_60_days`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`revisions_downward_last_60_days`)) {
        self$`revisions_downward_last_60_days` <- ZacksLongTermGrowthRateObject$`revisions_downward_last_60_days`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`revisions_upward_last_90_days`)) {
        self$`revisions_upward_last_90_days` <- ZacksLongTermGrowthRateObject$`revisions_upward_last_90_days`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`revisions_downward_last_90_days`)) {
        self$`revisions_downward_last_90_days` <- ZacksLongTermGrowthRateObject$`revisions_downward_last_90_days`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`revisions_upward_last_120_days`)) {
        self$`revisions_upward_last_120_days` <- ZacksLongTermGrowthRateObject$`revisions_upward_last_120_days`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`revisions_downward_last_120_days`)) {
        self$`revisions_downward_last_120_days` <- ZacksLongTermGrowthRateObject$`revisions_downward_last_120_days`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`revisions_upward_last_150_days`)) {
        self$`revisions_upward_last_150_days` <- ZacksLongTermGrowthRateObject$`revisions_upward_last_150_days`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`revisions_downward_last_150_days`)) {
        self$`revisions_downward_last_150_days` <- ZacksLongTermGrowthRateObject$`revisions_downward_last_150_days`
      }
      if (!is.null(ZacksLongTermGrowthRateObject$`security`)) {
        self$`security` <- ZacksLongTermGrowthRateObject$`security`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ZacksLongTermGrowthRateJson) {
      ZacksLongTermGrowthRateObject <- jsonlite::fromJSON(ZacksLongTermGrowthRateJson, simplifyDataFrame = FALSE)
      self$setFromList(ZacksLongTermGrowthRateObject)
    },
    setFromList = function(listObject) {
      if (!is.null(listObject$`mean`)) {
        self$`mean` <- listObject$`mean`
      }
      else {
        self$`mean` <- NA 
      }

      if (!is.null(listObject$`median`)) {
        self$`median` <- listObject$`median`
      }
      else {
        self$`median` <- NA 
      }

      if (!is.null(listObject$`count`)) {
        self$`count` <- listObject$`count`
      }
      else {
        self$`count` <- NA 
      }

      if (!is.null(listObject$`high`)) {
        self$`high` <- listObject$`high`
      }
      else {
        self$`high` <- NA 
      }

      if (!is.null(listObject$`low`)) {
        self$`low` <- listObject$`low`
      }
      else {
        self$`low` <- NA 
      }

      if (!is.null(listObject$`std_dev`)) {
        self$`std_dev` <- listObject$`std_dev`
      }
      else {
        self$`std_dev` <- NA 
      }

      if (!is.null(listObject$`revisions_upward`)) {
        self$`revisions_upward` <- listObject$`revisions_upward`
      }
      else {
        self$`revisions_upward` <- NA 
      }

      if (!is.null(listObject$`revisions_downward`)) {
        self$`revisions_downward` <- listObject$`revisions_downward`
      }
      else {
        self$`revisions_downward` <- NA 
      }

      if (!is.null(listObject$`mean_7_days_ago`)) {
        self$`mean_7_days_ago` <- listObject$`mean_7_days_ago`
      }
      else {
        self$`mean_7_days_ago` <- NA 
      }

      if (!is.null(listObject$`mean_30_days_ago`)) {
        self$`mean_30_days_ago` <- listObject$`mean_30_days_ago`
      }
      else {
        self$`mean_30_days_ago` <- NA 
      }

      if (!is.null(listObject$`mean_60_days_ago`)) {
        self$`mean_60_days_ago` <- listObject$`mean_60_days_ago`
      }
      else {
        self$`mean_60_days_ago` <- NA 
      }

      if (!is.null(listObject$`mean_90_days_ago`)) {
        self$`mean_90_days_ago` <- listObject$`mean_90_days_ago`
      }
      else {
        self$`mean_90_days_ago` <- NA 
      }

      if (!is.null(listObject$`revisions_upward_last_7_days`)) {
        self$`revisions_upward_last_7_days` <- listObject$`revisions_upward_last_7_days`
      }
      else {
        self$`revisions_upward_last_7_days` <- NA 
      }

      if (!is.null(listObject$`revisions_downward_last_7_days`)) {
        self$`revisions_downward_last_7_days` <- listObject$`revisions_downward_last_7_days`
      }
      else {
        self$`revisions_downward_last_7_days` <- NA 
      }

      if (!is.null(listObject$`revisions_upward_last_30_days`)) {
        self$`revisions_upward_last_30_days` <- listObject$`revisions_upward_last_30_days`
      }
      else {
        self$`revisions_upward_last_30_days` <- NA 
      }

      if (!is.null(listObject$`revisions_downward_last_30_days`)) {
        self$`revisions_downward_last_30_days` <- listObject$`revisions_downward_last_30_days`
      }
      else {
        self$`revisions_downward_last_30_days` <- NA 
      }

      if (!is.null(listObject$`revisions_upward_last_60_days`)) {
        self$`revisions_upward_last_60_days` <- listObject$`revisions_upward_last_60_days`
      }
      else {
        self$`revisions_upward_last_60_days` <- NA 
      }

      if (!is.null(listObject$`revisions_downward_last_60_days`)) {
        self$`revisions_downward_last_60_days` <- listObject$`revisions_downward_last_60_days`
      }
      else {
        self$`revisions_downward_last_60_days` <- NA 
      }

      if (!is.null(listObject$`revisions_upward_last_90_days`)) {
        self$`revisions_upward_last_90_days` <- listObject$`revisions_upward_last_90_days`
      }
      else {
        self$`revisions_upward_last_90_days` <- NA 
      }

      if (!is.null(listObject$`revisions_downward_last_90_days`)) {
        self$`revisions_downward_last_90_days` <- listObject$`revisions_downward_last_90_days`
      }
      else {
        self$`revisions_downward_last_90_days` <- NA 
      }

      if (!is.null(listObject$`revisions_upward_last_120_days`)) {
        self$`revisions_upward_last_120_days` <- listObject$`revisions_upward_last_120_days`
      }
      else {
        self$`revisions_upward_last_120_days` <- NA 
      }

      if (!is.null(listObject$`revisions_downward_last_120_days`)) {
        self$`revisions_downward_last_120_days` <- listObject$`revisions_downward_last_120_days`
      }
      else {
        self$`revisions_downward_last_120_days` <- NA 
      }

      if (!is.null(listObject$`revisions_upward_last_150_days`)) {
        self$`revisions_upward_last_150_days` <- listObject$`revisions_upward_last_150_days`
      }
      else {
        self$`revisions_upward_last_150_days` <- NA 
      }

      if (!is.null(listObject$`revisions_downward_last_150_days`)) {
        self$`revisions_downward_last_150_days` <- listObject$`revisions_downward_last_150_days`
      }
      else {
        self$`revisions_downward_last_150_days` <- NA 
      }








      self$`security` <- SecuritySummary$new()
      self$`security`$setFromList(listObject$`security`)

    },
    getAsList = function() {
      listObject = list()
      listObject[["mean"]] <- self$`mean`
      listObject[["median"]] <- self$`median`
      listObject[["count"]] <- self$`count`
      listObject[["high"]] <- self$`high`
      listObject[["low"]] <- self$`low`
      listObject[["std_dev"]] <- self$`std_dev`
      listObject[["revisions_upward"]] <- self$`revisions_upward`
      listObject[["revisions_downward"]] <- self$`revisions_downward`
      listObject[["mean_7_days_ago"]] <- self$`mean_7_days_ago`
      listObject[["mean_30_days_ago"]] <- self$`mean_30_days_ago`
      listObject[["mean_60_days_ago"]] <- self$`mean_60_days_ago`
      listObject[["mean_90_days_ago"]] <- self$`mean_90_days_ago`
      listObject[["revisions_upward_last_7_days"]] <- self$`revisions_upward_last_7_days`
      listObject[["revisions_downward_last_7_days"]] <- self$`revisions_downward_last_7_days`
      listObject[["revisions_upward_last_30_days"]] <- self$`revisions_upward_last_30_days`
      listObject[["revisions_downward_last_30_days"]] <- self$`revisions_downward_last_30_days`
      listObject[["revisions_upward_last_60_days"]] <- self$`revisions_upward_last_60_days`
      listObject[["revisions_downward_last_60_days"]] <- self$`revisions_downward_last_60_days`
      listObject[["revisions_upward_last_90_days"]] <- self$`revisions_upward_last_90_days`
      listObject[["revisions_downward_last_90_days"]] <- self$`revisions_downward_last_90_days`
      listObject[["revisions_upward_last_120_days"]] <- self$`revisions_upward_last_120_days`
      listObject[["revisions_downward_last_120_days"]] <- self$`revisions_downward_last_120_days`
      listObject[["revisions_upward_last_150_days"]] <- self$`revisions_upward_last_150_days`
      listObject[["revisions_downward_last_150_days"]] <- self$`revisions_downward_last_150_days`




      security_list <- self$`security`$getAsList()
      for (x in names(security_list)) {
        listObject[[paste("security_",x, sep = "")]] <- self$`security`[[x]]
      }
        
      return(listObject)
    }
  )
)
