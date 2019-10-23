# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.8.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseCryptoPrices Class
#'
#' @field prices 
#' @field pair 
#' @field exchange 
#' @field timeframe 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseCryptoPrices <- R6::R6Class(
  'ApiResponseCryptoPrices',
  public = list(
    `prices` = NA,
    `prices_data_frame` = NULL,
    `pair` = NA,
    `exchange` = NA,
    `timeframe` = NA,
    `next_page` = NA,
    initialize = function(`prices`, `pair`, `exchange`, `timeframe`, `next_page`){
      if (!missing(`prices`)) {
        self$`prices` <- `prices`
      }
      if (!missing(`pair`)) {
        self$`pair` <- `pair`
      }
      if (!missing(`exchange`)) {
        self$`exchange` <- `exchange`
      }
      if (!missing(`timeframe`)) {
        self$`timeframe` <- `timeframe`
      }
      if (!missing(`next_page`)) {
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseCryptoPricesObject <- list()
      if (!is.null(self$`prices`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`prices`) && ((length(self$`prices`) == 0) || ((length(self$`prices`) != 0 && R6::is.R6(self$`prices`[[1]]))))) {
          ApiResponseCryptoPricesObject[['prices']] <- lapply(self$`prices`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoPricesObject[['prices']] <- jsonlite::toJSON(self$`prices`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`pair`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`pair`) && ((length(self$`pair`) == 0) || ((length(self$`pair`) != 0 && R6::is.R6(self$`pair`[[1]]))))) {
          ApiResponseCryptoPricesObject[['pair']] <- lapply(self$`pair`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoPricesObject[['pair']] <- jsonlite::toJSON(self$`pair`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`exchange`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`exchange`) && ((length(self$`exchange`) == 0) || ((length(self$`exchange`) != 0 && R6::is.R6(self$`exchange`[[1]]))))) {
          ApiResponseCryptoPricesObject[['exchange']] <- lapply(self$`exchange`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoPricesObject[['exchange']] <- jsonlite::toJSON(self$`exchange`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`timeframe`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`timeframe`) && ((length(self$`timeframe`) == 0) || ((length(self$`timeframe`) != 0 && R6::is.R6(self$`timeframe`[[1]]))))) {
          ApiResponseCryptoPricesObject[['timeframe']] <- lapply(self$`timeframe`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoPricesObject[['timeframe']] <- jsonlite::toJSON(self$`timeframe`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseCryptoPricesObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoPricesObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseCryptoPricesObject
    },
    fromJSON = function(ApiResponseCryptoPricesJson) {
      ApiResponseCryptoPricesObject <- jsonlite::fromJSON(ApiResponseCryptoPricesJson)
      if (!is.null(ApiResponseCryptoPricesObject$`prices`)) {
        self$`prices` <- ApiResponseCryptoPricesObject$`prices`
      }
      if (!is.null(ApiResponseCryptoPricesObject$`pair`)) {
        self$`pair` <- ApiResponseCryptoPricesObject$`pair`
      }
      if (!is.null(ApiResponseCryptoPricesObject$`exchange`)) {
        self$`exchange` <- ApiResponseCryptoPricesObject$`exchange`
      }
      if (!is.null(ApiResponseCryptoPricesObject$`timeframe`)) {
        self$`timeframe` <- ApiResponseCryptoPricesObject$`timeframe`
      }
      if (!is.null(ApiResponseCryptoPricesObject$`next_page`)) {
        self$`next_page` <- ApiResponseCryptoPricesObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseCryptoPricesJson) {
      ApiResponseCryptoPricesObject <- jsonlite::fromJSON(ApiResponseCryptoPricesJson, simplifyDataFrame = FALSE)
      self$setFromList(ApiResponseCryptoPricesObject)
    },
    setFromList = function(listObject) {


      self$`prices` <- lapply(listObject$`prices`, function(x) {
      CryptoPriceObject <- CryptoPrice$new()
      CryptoPriceObject$setFromList(x)
      return(CryptoPriceObject)
      })

      prices_list <- lapply(self$`prices`, function(x) {
        return(x$getAsList()) 
      })

      self$`prices_data_frame` <- do.call(rbind, lapply(prices_list, data.frame))













      self$`pair` <- CryptoPairSummary$new()
      self$`pair`$setFromList(listObject$`pair`)








      self$`exchange` <- CryptoExchangeSummary$new()
      self$`exchange`$setFromList(listObject$`exchange`)

      if (!is.null(listObject$`timeframe`)) {
        self$`timeframe` <- listObject$`timeframe`
      }
      else {
        self$`timeframe` <- NA 
      }

      if (!is.null(listObject$`next_page`)) {
        self$`next_page` <- listObject$`next_page`
      }
      else {
        self$`next_page` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      listObject[["prices"]] <- lapply(self$`prices`, function(o) {
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
        
      listObject[["timeframe"]] <- self$`timeframe`
      listObject[["next_page"]] <- self$`next_page`
      return(listObject)
    }
  )
)
