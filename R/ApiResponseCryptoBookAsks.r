# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.8.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseCryptoBookAsks Class
#'
#' @field asks 
#' @field pair 
#' @field exchange 
#' @field last_updated 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseCryptoBookAsks <- R6::R6Class(
  'ApiResponseCryptoBookAsks',
  public = list(
    `asks` = NA,
    `asks_data_frame` = NULL,
    `pair` = NA,
    `exchange` = NA,
    `last_updated` = NA,
    initialize = function(`asks`, `pair`, `exchange`, `last_updated`){
      if (!missing(`asks`)) {
        self$`asks` <- `asks`
      }
      if (!missing(`pair`)) {
        self$`pair` <- `pair`
      }
      if (!missing(`exchange`)) {
        self$`exchange` <- `exchange`
      }
      if (!missing(`last_updated`)) {
        self$`last_updated` <- `last_updated`
      }
    },
    toJSON = function() {
      ApiResponseCryptoBookAsksObject <- list()
      if (!is.null(self$`asks`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`asks`) && ((length(self$`asks`) == 0) || ((length(self$`asks`) != 0 && R6::is.R6(self$`asks`[[1]]))))) {
          ApiResponseCryptoBookAsksObject[['asks']] <- lapply(self$`asks`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoBookAsksObject[['asks']] <- jsonlite::toJSON(self$`asks`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`pair`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`pair`) && ((length(self$`pair`) == 0) || ((length(self$`pair`) != 0 && R6::is.R6(self$`pair`[[1]]))))) {
          ApiResponseCryptoBookAsksObject[['pair']] <- lapply(self$`pair`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoBookAsksObject[['pair']] <- jsonlite::toJSON(self$`pair`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`exchange`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`exchange`) && ((length(self$`exchange`) == 0) || ((length(self$`exchange`) != 0 && R6::is.R6(self$`exchange`[[1]]))))) {
          ApiResponseCryptoBookAsksObject[['exchange']] <- lapply(self$`exchange`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoBookAsksObject[['exchange']] <- jsonlite::toJSON(self$`exchange`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`last_updated`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`last_updated`) && ((length(self$`last_updated`) == 0) || ((length(self$`last_updated`) != 0 && R6::is.R6(self$`last_updated`[[1]]))))) {
          ApiResponseCryptoBookAsksObject[['last_updated']] <- lapply(self$`last_updated`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoBookAsksObject[['last_updated']] <- jsonlite::toJSON(self$`last_updated`, auto_unbox = TRUE)
        }
      }

      ApiResponseCryptoBookAsksObject
    },
    fromJSON = function(ApiResponseCryptoBookAsksJson) {
      ApiResponseCryptoBookAsksObject <- jsonlite::fromJSON(ApiResponseCryptoBookAsksJson)
      if (!is.null(ApiResponseCryptoBookAsksObject$`asks`)) {
        self$`asks` <- ApiResponseCryptoBookAsksObject$`asks`
      }
      if (!is.null(ApiResponseCryptoBookAsksObject$`pair`)) {
        self$`pair` <- ApiResponseCryptoBookAsksObject$`pair`
      }
      if (!is.null(ApiResponseCryptoBookAsksObject$`exchange`)) {
        self$`exchange` <- ApiResponseCryptoBookAsksObject$`exchange`
      }
      if (!is.null(ApiResponseCryptoBookAsksObject$`last_updated`)) {
        self$`last_updated` <- ApiResponseCryptoBookAsksObject$`last_updated`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseCryptoBookAsksJson) {
      ApiResponseCryptoBookAsksObject <- jsonlite::fromJSON(ApiResponseCryptoBookAsksJson, simplifyDataFrame = FALSE)
      self$setFromList(ApiResponseCryptoBookAsksObject)
    },
    setFromList = function(listObject) {


      self$`asks` <- lapply(listObject$`asks`, function(x) {
      CryptoBookEntryObject <- CryptoBookEntry$new()
      CryptoBookEntryObject$setFromList(x)
      return(CryptoBookEntryObject)
      })

      asks_list <- lapply(self$`asks`, function(x) {
        return(x$getAsList()) 
      })

      self$`asks_data_frame` <- do.call(rbind, lapply(asks_list, data.frame))













      self$`pair` <- CryptoPairSummary$new()
      self$`pair`$setFromList(listObject$`pair`)








      self$`exchange` <- CryptoExchangeSummary$new()
      self$`exchange`$setFromList(listObject$`exchange`)

      if (!is.null(listObject$`last_updated`)) {
        self$`last_updated` <- listObject$`last_updated`
      }
      else {
        self$`last_updated` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      listObject[["asks"]] <- lapply(self$`asks`, function(o) {
        return(o$getAsList())
      })




        




      pair_list <- self$`pair`$getAsList()
      for (x in names(pair_list)) {
        listObject[[paste("pair_",x, sep = "")]] <- self$`pair`[[x]]
      }
        




      exchange_list <- self$`exchange`$getAsList()
      for (x in names(exchange_list)) {
        listObject[[paste("exchange_",x, sep = "")]] <- self$`exchange`[[x]]
      }
        
      listObject[["last_updated"]] <- self$`last_updated`
      return(listObject)
    }
  )
)
