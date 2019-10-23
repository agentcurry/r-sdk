# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.8.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' CryptoExchange Class
#'
#' @field name 
#' @field code 
#' @field book_depth_available 
#' @field history_available 
#' @field snapshot_available 
#' @field trades_available 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CryptoExchange <- R6::R6Class(
  'CryptoExchange',
  public = list(
    `name` = NA,
    `code` = NA,
    `book_depth_available` = NA,
    `history_available` = NA,
    `snapshot_available` = NA,
    `trades_available` = NA,
    initialize = function(`name`, `code`, `book_depth_available`, `history_available`, `snapshot_available`, `trades_available`){
      if (!missing(`name`)) {
        self$`name` <- `name`
      }
      if (!missing(`code`)) {
        self$`code` <- `code`
      }
      if (!missing(`book_depth_available`)) {
        self$`book_depth_available` <- `book_depth_available`
      }
      if (!missing(`history_available`)) {
        self$`history_available` <- `history_available`
      }
      if (!missing(`snapshot_available`)) {
        self$`snapshot_available` <- `snapshot_available`
      }
      if (!missing(`trades_available`)) {
        self$`trades_available` <- `trades_available`
      }
    },
    toJSON = function() {
      CryptoExchangeObject <- list()
      if (!is.null(self$`name`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`name`) && ((length(self$`name`) == 0) || ((length(self$`name`) != 0 && R6::is.R6(self$`name`[[1]]))))) {
          CryptoExchangeObject[['name']] <- lapply(self$`name`, function(x) x$toJSON())
        } else {
          CryptoExchangeObject[['name']] <- jsonlite::toJSON(self$`name`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`code`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`code`) && ((length(self$`code`) == 0) || ((length(self$`code`) != 0 && R6::is.R6(self$`code`[[1]]))))) {
          CryptoExchangeObject[['code']] <- lapply(self$`code`, function(x) x$toJSON())
        } else {
          CryptoExchangeObject[['code']] <- jsonlite::toJSON(self$`code`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`book_depth_available`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`book_depth_available`) && ((length(self$`book_depth_available`) == 0) || ((length(self$`book_depth_available`) != 0 && R6::is.R6(self$`book_depth_available`[[1]]))))) {
          CryptoExchangeObject[['book_depth_available']] <- lapply(self$`book_depth_available`, function(x) x$toJSON())
        } else {
          CryptoExchangeObject[['book_depth_available']] <- jsonlite::toJSON(self$`book_depth_available`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`history_available`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`history_available`) && ((length(self$`history_available`) == 0) || ((length(self$`history_available`) != 0 && R6::is.R6(self$`history_available`[[1]]))))) {
          CryptoExchangeObject[['history_available']] <- lapply(self$`history_available`, function(x) x$toJSON())
        } else {
          CryptoExchangeObject[['history_available']] <- jsonlite::toJSON(self$`history_available`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`snapshot_available`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`snapshot_available`) && ((length(self$`snapshot_available`) == 0) || ((length(self$`snapshot_available`) != 0 && R6::is.R6(self$`snapshot_available`[[1]]))))) {
          CryptoExchangeObject[['snapshot_available']] <- lapply(self$`snapshot_available`, function(x) x$toJSON())
        } else {
          CryptoExchangeObject[['snapshot_available']] <- jsonlite::toJSON(self$`snapshot_available`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`trades_available`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`trades_available`) && ((length(self$`trades_available`) == 0) || ((length(self$`trades_available`) != 0 && R6::is.R6(self$`trades_available`[[1]]))))) {
          CryptoExchangeObject[['trades_available']] <- lapply(self$`trades_available`, function(x) x$toJSON())
        } else {
          CryptoExchangeObject[['trades_available']] <- jsonlite::toJSON(self$`trades_available`, auto_unbox = TRUE)
        }
      }

      CryptoExchangeObject
    },
    fromJSON = function(CryptoExchangeJson) {
      CryptoExchangeObject <- jsonlite::fromJSON(CryptoExchangeJson)
      if (!is.null(CryptoExchangeObject$`name`)) {
        self$`name` <- CryptoExchangeObject$`name`
      }
      if (!is.null(CryptoExchangeObject$`code`)) {
        self$`code` <- CryptoExchangeObject$`code`
      }
      if (!is.null(CryptoExchangeObject$`book_depth_available`)) {
        self$`book_depth_available` <- CryptoExchangeObject$`book_depth_available`
      }
      if (!is.null(CryptoExchangeObject$`history_available`)) {
        self$`history_available` <- CryptoExchangeObject$`history_available`
      }
      if (!is.null(CryptoExchangeObject$`snapshot_available`)) {
        self$`snapshot_available` <- CryptoExchangeObject$`snapshot_available`
      }
      if (!is.null(CryptoExchangeObject$`trades_available`)) {
        self$`trades_available` <- CryptoExchangeObject$`trades_available`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(CryptoExchangeJson) {
      CryptoExchangeObject <- jsonlite::fromJSON(CryptoExchangeJson, simplifyDataFrame = FALSE)
      self$setFromList(CryptoExchangeObject)
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






      if (!is.null(listObject$`book_depth_available`)) {
        self$`book_depth_available` <- listObject$`book_depth_available`
      }
      else {
        self$`book_depth_available` <- NA
      }








      if (!is.null(listObject$`history_available`)) {
        self$`history_available` <- listObject$`history_available`
      }
      else {
        self$`history_available` <- NA
      }








      if (!is.null(listObject$`snapshot_available`)) {
        self$`snapshot_available` <- listObject$`snapshot_available`
      }
      else {
        self$`snapshot_available` <- NA
      }








      if (!is.null(listObject$`trades_available`)) {
        self$`trades_available` <- listObject$`trades_available`
      }
      else {
        self$`trades_available` <- NA
      }



    },
    getAsList = function() {
      listObject = list()
      listObject[["name"]] <- self$`name`
      listObject[["code"]] <- self$`code`



      listObject[["book_depth_available"]] <- self$`book_depth_available`

        



      listObject[["history_available"]] <- self$`history_available`

        



      listObject[["snapshot_available"]] <- self$`snapshot_available`

        



      listObject[["trades_available"]] <- self$`trades_available`

        
      return(listObject)
    }
  )
)
