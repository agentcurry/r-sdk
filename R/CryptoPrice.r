# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.8.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' CryptoPrice Class
#'
#' @field time 
#' @field open 
#' @field high 
#' @field low 
#' @field close 
#' @field volume 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CryptoPrice <- R6::R6Class(
  'CryptoPrice',
  public = list(
    `time` = NA,
    `open` = NA,
    `high` = NA,
    `low` = NA,
    `close` = NA,
    `volume` = NA,
    initialize = function(`time`, `open`, `high`, `low`, `close`, `volume`){
      if (!missing(`time`)) {
        self$`time` <- `time`
      }
      if (!missing(`open`)) {
        self$`open` <- `open`
      }
      if (!missing(`high`)) {
        self$`high` <- `high`
      }
      if (!missing(`low`)) {
        self$`low` <- `low`
      }
      if (!missing(`close`)) {
        self$`close` <- `close`
      }
      if (!missing(`volume`)) {
        self$`volume` <- `volume`
      }
    },
    toJSON = function() {
      CryptoPriceObject <- list()
      if (!is.null(self$`time`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`time`) && ((length(self$`time`) == 0) || ((length(self$`time`) != 0 && R6::is.R6(self$`time`[[1]]))))) {
          CryptoPriceObject[['time']] <- lapply(self$`time`, function(x) x$toJSON())
        } else {
          CryptoPriceObject[['time']] <- jsonlite::toJSON(self$`time`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`open`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`open`) && ((length(self$`open`) == 0) || ((length(self$`open`) != 0 && R6::is.R6(self$`open`[[1]]))))) {
          CryptoPriceObject[['open']] <- lapply(self$`open`, function(x) x$toJSON())
        } else {
          CryptoPriceObject[['open']] <- jsonlite::toJSON(self$`open`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`high`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`high`) && ((length(self$`high`) == 0) || ((length(self$`high`) != 0 && R6::is.R6(self$`high`[[1]]))))) {
          CryptoPriceObject[['high']] <- lapply(self$`high`, function(x) x$toJSON())
        } else {
          CryptoPriceObject[['high']] <- jsonlite::toJSON(self$`high`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`low`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`low`) && ((length(self$`low`) == 0) || ((length(self$`low`) != 0 && R6::is.R6(self$`low`[[1]]))))) {
          CryptoPriceObject[['low']] <- lapply(self$`low`, function(x) x$toJSON())
        } else {
          CryptoPriceObject[['low']] <- jsonlite::toJSON(self$`low`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`close`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`close`) && ((length(self$`close`) == 0) || ((length(self$`close`) != 0 && R6::is.R6(self$`close`[[1]]))))) {
          CryptoPriceObject[['close']] <- lapply(self$`close`, function(x) x$toJSON())
        } else {
          CryptoPriceObject[['close']] <- jsonlite::toJSON(self$`close`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`volume`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`volume`) && ((length(self$`volume`) == 0) || ((length(self$`volume`) != 0 && R6::is.R6(self$`volume`[[1]]))))) {
          CryptoPriceObject[['volume']] <- lapply(self$`volume`, function(x) x$toJSON())
        } else {
          CryptoPriceObject[['volume']] <- jsonlite::toJSON(self$`volume`, auto_unbox = TRUE)
        }
      }

      CryptoPriceObject
    },
    fromJSON = function(CryptoPriceJson) {
      CryptoPriceObject <- jsonlite::fromJSON(CryptoPriceJson)
      if (!is.null(CryptoPriceObject$`time`)) {
        self$`time` <- CryptoPriceObject$`time`
      }
      if (!is.null(CryptoPriceObject$`open`)) {
        self$`open` <- CryptoPriceObject$`open`
      }
      if (!is.null(CryptoPriceObject$`high`)) {
        self$`high` <- CryptoPriceObject$`high`
      }
      if (!is.null(CryptoPriceObject$`low`)) {
        self$`low` <- CryptoPriceObject$`low`
      }
      if (!is.null(CryptoPriceObject$`close`)) {
        self$`close` <- CryptoPriceObject$`close`
      }
      if (!is.null(CryptoPriceObject$`volume`)) {
        self$`volume` <- CryptoPriceObject$`volume`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(CryptoPriceJson) {
      CryptoPriceObject <- jsonlite::fromJSON(CryptoPriceJson, simplifyDataFrame = FALSE)
      self$setFromList(CryptoPriceObject)
    },
    setFromList = function(listObject) {




      if (!is.null(listObject$`time`)) {
        self$`time` <- as.POSIXct(listObject$`time`, tz = "GMT", "%Y-%m-%dT%H:%M:%OS")
      }
      else {
        self$`time` <- NA 
      }




      if (!is.null(listObject$`open`)) {
        self$`open` <- listObject$`open`
      }
      else {
        self$`open` <- NA 
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

      if (!is.null(listObject$`close`)) {
        self$`close` <- listObject$`close`
      }
      else {
        self$`close` <- NA 
      }

      if (!is.null(listObject$`volume`)) {
        self$`volume` <- listObject$`volume`
      }
      else {
        self$`volume` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()


      listObject[["time"]] <- self$`time`


        
      listObject[["open"]] <- self$`open`
      listObject[["high"]] <- self$`high`
      listObject[["low"]] <- self$`low`
      listObject[["close"]] <- self$`close`
      listObject[["volume"]] <- self$`volume`
      return(listObject)
    }
  )
)
