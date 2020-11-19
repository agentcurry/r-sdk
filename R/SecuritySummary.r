# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.16.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SecuritySummary Class
#'
#' @field id 
#' @field company_id 
#' @field name 
#' @field code 
#' @field currency 
#' @field ticker 
#' @field composite_ticker 
#' @field figi 
#' @field composite_figi 
#' @field share_class_figi 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SecuritySummary <- R6::R6Class(
  'SecuritySummary',
  public = list(
    `id` = NA,
    `company_id` = NA,
    `name` = NA,
    `code` = NA,
    `currency` = NA,
    `ticker` = NA,
    `composite_ticker` = NA,
    `figi` = NA,
    `composite_figi` = NA,
    `share_class_figi` = NA,
    initialize = function(`id`, `company_id`, `name`, `code`, `currency`, `ticker`, `composite_ticker`, `figi`, `composite_figi`, `share_class_figi`){
      if (!missing(`id`)) {
        self$`id` <- `id`
      }
      if (!missing(`company_id`)) {
        self$`company_id` <- `company_id`
      }
      if (!missing(`name`)) {
        self$`name` <- `name`
      }
      if (!missing(`code`)) {
        self$`code` <- `code`
      }
      if (!missing(`currency`)) {
        self$`currency` <- `currency`
      }
      if (!missing(`ticker`)) {
        self$`ticker` <- `ticker`
      }
      if (!missing(`composite_ticker`)) {
        self$`composite_ticker` <- `composite_ticker`
      }
      if (!missing(`figi`)) {
        self$`figi` <- `figi`
      }
      if (!missing(`composite_figi`)) {
        self$`composite_figi` <- `composite_figi`
      }
      if (!missing(`share_class_figi`)) {
        self$`share_class_figi` <- `share_class_figi`
      }
    },
    toJSON = function() {
      SecuritySummaryObject <- list()
      if (!is.null(self$`id`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`id`) && ((length(self$`id`) == 0) || ((length(self$`id`) != 0 && R6::is.R6(self$`id`[[1]]))))) {
          SecuritySummaryObject[['id']] <- lapply(self$`id`, function(x) x$toJSON())
        } else {
          SecuritySummaryObject[['id']] <- jsonlite::toJSON(self$`id`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`company_id`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`company_id`) && ((length(self$`company_id`) == 0) || ((length(self$`company_id`) != 0 && R6::is.R6(self$`company_id`[[1]]))))) {
          SecuritySummaryObject[['company_id']] <- lapply(self$`company_id`, function(x) x$toJSON())
        } else {
          SecuritySummaryObject[['company_id']] <- jsonlite::toJSON(self$`company_id`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`name`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`name`) && ((length(self$`name`) == 0) || ((length(self$`name`) != 0 && R6::is.R6(self$`name`[[1]]))))) {
          SecuritySummaryObject[['name']] <- lapply(self$`name`, function(x) x$toJSON())
        } else {
          SecuritySummaryObject[['name']] <- jsonlite::toJSON(self$`name`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`code`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`code`) && ((length(self$`code`) == 0) || ((length(self$`code`) != 0 && R6::is.R6(self$`code`[[1]]))))) {
          SecuritySummaryObject[['code']] <- lapply(self$`code`, function(x) x$toJSON())
        } else {
          SecuritySummaryObject[['code']] <- jsonlite::toJSON(self$`code`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`currency`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`currency`) && ((length(self$`currency`) == 0) || ((length(self$`currency`) != 0 && R6::is.R6(self$`currency`[[1]]))))) {
          SecuritySummaryObject[['currency']] <- lapply(self$`currency`, function(x) x$toJSON())
        } else {
          SecuritySummaryObject[['currency']] <- jsonlite::toJSON(self$`currency`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`ticker`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`ticker`) && ((length(self$`ticker`) == 0) || ((length(self$`ticker`) != 0 && R6::is.R6(self$`ticker`[[1]]))))) {
          SecuritySummaryObject[['ticker']] <- lapply(self$`ticker`, function(x) x$toJSON())
        } else {
          SecuritySummaryObject[['ticker']] <- jsonlite::toJSON(self$`ticker`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`composite_ticker`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`composite_ticker`) && ((length(self$`composite_ticker`) == 0) || ((length(self$`composite_ticker`) != 0 && R6::is.R6(self$`composite_ticker`[[1]]))))) {
          SecuritySummaryObject[['composite_ticker']] <- lapply(self$`composite_ticker`, function(x) x$toJSON())
        } else {
          SecuritySummaryObject[['composite_ticker']] <- jsonlite::toJSON(self$`composite_ticker`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`figi`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`figi`) && ((length(self$`figi`) == 0) || ((length(self$`figi`) != 0 && R6::is.R6(self$`figi`[[1]]))))) {
          SecuritySummaryObject[['figi']] <- lapply(self$`figi`, function(x) x$toJSON())
        } else {
          SecuritySummaryObject[['figi']] <- jsonlite::toJSON(self$`figi`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`composite_figi`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`composite_figi`) && ((length(self$`composite_figi`) == 0) || ((length(self$`composite_figi`) != 0 && R6::is.R6(self$`composite_figi`[[1]]))))) {
          SecuritySummaryObject[['composite_figi']] <- lapply(self$`composite_figi`, function(x) x$toJSON())
        } else {
          SecuritySummaryObject[['composite_figi']] <- jsonlite::toJSON(self$`composite_figi`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`share_class_figi`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`share_class_figi`) && ((length(self$`share_class_figi`) == 0) || ((length(self$`share_class_figi`) != 0 && R6::is.R6(self$`share_class_figi`[[1]]))))) {
          SecuritySummaryObject[['share_class_figi']] <- lapply(self$`share_class_figi`, function(x) x$toJSON())
        } else {
          SecuritySummaryObject[['share_class_figi']] <- jsonlite::toJSON(self$`share_class_figi`, auto_unbox = TRUE)
        }
      }

      SecuritySummaryObject
    },
    fromJSON = function(SecuritySummaryJson) {
      SecuritySummaryObject <- jsonlite::fromJSON(SecuritySummaryJson)
      if (!is.null(SecuritySummaryObject$`id`)) {
        self$`id` <- SecuritySummaryObject$`id`
      }
      if (!is.null(SecuritySummaryObject$`company_id`)) {
        self$`company_id` <- SecuritySummaryObject$`company_id`
      }
      if (!is.null(SecuritySummaryObject$`name`)) {
        self$`name` <- SecuritySummaryObject$`name`
      }
      if (!is.null(SecuritySummaryObject$`code`)) {
        self$`code` <- SecuritySummaryObject$`code`
      }
      if (!is.null(SecuritySummaryObject$`currency`)) {
        self$`currency` <- SecuritySummaryObject$`currency`
      }
      if (!is.null(SecuritySummaryObject$`ticker`)) {
        self$`ticker` <- SecuritySummaryObject$`ticker`
      }
      if (!is.null(SecuritySummaryObject$`composite_ticker`)) {
        self$`composite_ticker` <- SecuritySummaryObject$`composite_ticker`
      }
      if (!is.null(SecuritySummaryObject$`figi`)) {
        self$`figi` <- SecuritySummaryObject$`figi`
      }
      if (!is.null(SecuritySummaryObject$`composite_figi`)) {
        self$`composite_figi` <- SecuritySummaryObject$`composite_figi`
      }
      if (!is.null(SecuritySummaryObject$`share_class_figi`)) {
        self$`share_class_figi` <- SecuritySummaryObject$`share_class_figi`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(SecuritySummaryJson) {
      SecuritySummaryObject <- jsonlite::fromJSON(SecuritySummaryJson, simplifyDataFrame = FALSE)
      self$setFromList(SecuritySummaryObject)
    },
    setFromList = function(listObject) {
      if (!is.null(listObject$`id`)) {
        self$`id` <- listObject$`id`
      }
      else {
        self$`id` <- NA 
      }

      if (!is.null(listObject$`company_id`)) {
        self$`company_id` <- listObject$`company_id`
      }
      else {
        self$`company_id` <- NA 
      }

      if (!is.null(listObject$`name`)) {
        self$`name` <- listObject$`name`
      }
      else {
        self$`name` <- NA 
      }

      if (!is.null(listObject$`code`)) {
        self$`code` <- listObject$`code`
      }
      else {
        self$`code` <- NA 
      }

      if (!is.null(listObject$`currency`)) {
        self$`currency` <- listObject$`currency`
      }
      else {
        self$`currency` <- NA 
      }

      if (!is.null(listObject$`ticker`)) {
        self$`ticker` <- listObject$`ticker`
      }
      else {
        self$`ticker` <- NA 
      }

      if (!is.null(listObject$`composite_ticker`)) {
        self$`composite_ticker` <- listObject$`composite_ticker`
      }
      else {
        self$`composite_ticker` <- NA 
      }

      if (!is.null(listObject$`figi`)) {
        self$`figi` <- listObject$`figi`
      }
      else {
        self$`figi` <- NA 
      }

      if (!is.null(listObject$`composite_figi`)) {
        self$`composite_figi` <- listObject$`composite_figi`
      }
      else {
        self$`composite_figi` <- NA 
      }

      if (!is.null(listObject$`share_class_figi`)) {
        self$`share_class_figi` <- listObject$`share_class_figi`
      }
      else {
        self$`share_class_figi` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      listObject[["id"]] <- self$`id`
      listObject[["company_id"]] <- self$`company_id`
      listObject[["name"]] <- self$`name`
      listObject[["code"]] <- self$`code`
      listObject[["currency"]] <- self$`currency`
      listObject[["ticker"]] <- self$`ticker`
      listObject[["composite_ticker"]] <- self$`composite_ticker`
      listObject[["figi"]] <- self$`figi`
      listObject[["composite_figi"]] <- self$`composite_figi`
      listObject[["share_class_figi"]] <- self$`share_class_figi`
      return(listObject)
    }
  )
)
