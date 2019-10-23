# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.8.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseCryptoBookBids Class
#'
#' @field bids 
#' @field pair 
#' @field exchange 
#' @field last_updated 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseCryptoBookBids <- R6::R6Class(
  'ApiResponseCryptoBookBids',
  public = list(
    `bids` = NA,
    `bids_data_frame` = NULL,
    `pair` = NA,
    `exchange` = NA,
    `last_updated` = NA,
    initialize = function(`bids`, `pair`, `exchange`, `last_updated`){
      if (!missing(`bids`)) {
        self$`bids` <- `bids`
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
      ApiResponseCryptoBookBidsObject <- list()
      if (!is.null(self$`bids`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`bids`) && ((length(self$`bids`) == 0) || ((length(self$`bids`) != 0 && R6::is.R6(self$`bids`[[1]]))))) {
          ApiResponseCryptoBookBidsObject[['bids']] <- lapply(self$`bids`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoBookBidsObject[['bids']] <- jsonlite::toJSON(self$`bids`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`pair`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`pair`) && ((length(self$`pair`) == 0) || ((length(self$`pair`) != 0 && R6::is.R6(self$`pair`[[1]]))))) {
          ApiResponseCryptoBookBidsObject[['pair']] <- lapply(self$`pair`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoBookBidsObject[['pair']] <- jsonlite::toJSON(self$`pair`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`exchange`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`exchange`) && ((length(self$`exchange`) == 0) || ((length(self$`exchange`) != 0 && R6::is.R6(self$`exchange`[[1]]))))) {
          ApiResponseCryptoBookBidsObject[['exchange']] <- lapply(self$`exchange`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoBookBidsObject[['exchange']] <- jsonlite::toJSON(self$`exchange`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`last_updated`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`last_updated`) && ((length(self$`last_updated`) == 0) || ((length(self$`last_updated`) != 0 && R6::is.R6(self$`last_updated`[[1]]))))) {
          ApiResponseCryptoBookBidsObject[['last_updated']] <- lapply(self$`last_updated`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoBookBidsObject[['last_updated']] <- jsonlite::toJSON(self$`last_updated`, auto_unbox = TRUE)
        }
      }

      ApiResponseCryptoBookBidsObject
    },
    fromJSON = function(ApiResponseCryptoBookBidsJson) {
      ApiResponseCryptoBookBidsObject <- jsonlite::fromJSON(ApiResponseCryptoBookBidsJson)
      if (!is.null(ApiResponseCryptoBookBidsObject$`bids`)) {
        self$`bids` <- ApiResponseCryptoBookBidsObject$`bids`
      }
      if (!is.null(ApiResponseCryptoBookBidsObject$`pair`)) {
        self$`pair` <- ApiResponseCryptoBookBidsObject$`pair`
      }
      if (!is.null(ApiResponseCryptoBookBidsObject$`exchange`)) {
        self$`exchange` <- ApiResponseCryptoBookBidsObject$`exchange`
      }
      if (!is.null(ApiResponseCryptoBookBidsObject$`last_updated`)) {
        self$`last_updated` <- ApiResponseCryptoBookBidsObject$`last_updated`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseCryptoBookBidsJson) {
      ApiResponseCryptoBookBidsObject <- jsonlite::fromJSON(ApiResponseCryptoBookBidsJson, simplifyDataFrame = FALSE)
      self$setFromList(ApiResponseCryptoBookBidsObject)
    },
    setFromList = function(listObject) {


      self$`bids` <- lapply(listObject$`bids`, function(x) {
      CryptoBookEntryObject <- CryptoBookEntry$new()
      CryptoBookEntryObject$setFromList(x)
      return(CryptoBookEntryObject)
      })

      bids_list <- lapply(self$`bids`, function(x) {
        return(x$getAsList()) 
      })

      self$`bids_data_frame` <- do.call(rbind, lapply(bids_list, data.frame))













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
      listObject[["bids"]] <- lapply(self$`bids`, function(o) {
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
