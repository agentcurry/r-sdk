# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.8.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' CryptoPairSummary Class
#'
#' @field name 
#' @field code 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CryptoPairSummary <- R6::R6Class(
  'CryptoPairSummary',
  public = list(
    `name` = NA,
    `code` = NA,
    initialize = function(`name`, `code`){
      if (!missing(`name`)) {
        self$`name` <- `name`
      }
      if (!missing(`code`)) {
        self$`code` <- `code`
      }
    },
    toJSON = function() {
      CryptoPairSummaryObject <- list()
      if (!is.null(self$`name`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`name`) && ((length(self$`name`) == 0) || ((length(self$`name`) != 0 && R6::is.R6(self$`name`[[1]]))))) {
          CryptoPairSummaryObject[['name']] <- lapply(self$`name`, function(x) x$toJSON())
        } else {
          CryptoPairSummaryObject[['name']] <- jsonlite::toJSON(self$`name`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`code`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`code`) && ((length(self$`code`) == 0) || ((length(self$`code`) != 0 && R6::is.R6(self$`code`[[1]]))))) {
          CryptoPairSummaryObject[['code']] <- lapply(self$`code`, function(x) x$toJSON())
        } else {
          CryptoPairSummaryObject[['code']] <- jsonlite::toJSON(self$`code`, auto_unbox = TRUE)
        }
      }

      CryptoPairSummaryObject
    },
    fromJSON = function(CryptoPairSummaryJson) {
      CryptoPairSummaryObject <- jsonlite::fromJSON(CryptoPairSummaryJson)
      if (!is.null(CryptoPairSummaryObject$`name`)) {
        self$`name` <- CryptoPairSummaryObject$`name`
      }
      if (!is.null(CryptoPairSummaryObject$`code`)) {
        self$`code` <- CryptoPairSummaryObject$`code`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(CryptoPairSummaryJson) {
      CryptoPairSummaryObject <- jsonlite::fromJSON(CryptoPairSummaryJson, simplifyDataFrame = FALSE)
      self$setFromList(CryptoPairSummaryObject)
    },
    setFromList = function(listObject) {
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

    },
    getAsList = function() {
      listObject = list()
      listObject[["name"]] <- self$`name`
      listObject[["code"]] <- self$`code`
      return(listObject)
    }
  )
)
