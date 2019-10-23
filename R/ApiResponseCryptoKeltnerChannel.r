# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.8.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseCryptoKeltnerChannel Class
#'
#' @field technicals 
#' @field indicator 
#' @field pair 
#' @field exchange 
#' @field timeframe 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseCryptoKeltnerChannel <- R6::R6Class(
  'ApiResponseCryptoKeltnerChannel',
  public = list(
    `technicals` = NA,
    `technicals_data_frame` = NULL,
    `indicator` = NA,
    `pair` = NA,
    `exchange` = NA,
    `timeframe` = NA,
    `next_page` = NA,
    initialize = function(`technicals`, `indicator`, `pair`, `exchange`, `timeframe`, `next_page`){
      if (!missing(`technicals`)) {
        self$`technicals` <- `technicals`
      }
      if (!missing(`indicator`)) {
        self$`indicator` <- `indicator`
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
      ApiResponseCryptoKeltnerChannelObject <- list()
      if (!is.null(self$`technicals`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`technicals`) && ((length(self$`technicals`) == 0) || ((length(self$`technicals`) != 0 && R6::is.R6(self$`technicals`[[1]]))))) {
          ApiResponseCryptoKeltnerChannelObject[['technicals']] <- lapply(self$`technicals`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoKeltnerChannelObject[['technicals']] <- jsonlite::toJSON(self$`technicals`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`indicator`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`indicator`) && ((length(self$`indicator`) == 0) || ((length(self$`indicator`) != 0 && R6::is.R6(self$`indicator`[[1]]))))) {
          ApiResponseCryptoKeltnerChannelObject[['indicator']] <- lapply(self$`indicator`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoKeltnerChannelObject[['indicator']] <- jsonlite::toJSON(self$`indicator`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`pair`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`pair`) && ((length(self$`pair`) == 0) || ((length(self$`pair`) != 0 && R6::is.R6(self$`pair`[[1]]))))) {
          ApiResponseCryptoKeltnerChannelObject[['pair']] <- lapply(self$`pair`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoKeltnerChannelObject[['pair']] <- jsonlite::toJSON(self$`pair`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`exchange`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`exchange`) && ((length(self$`exchange`) == 0) || ((length(self$`exchange`) != 0 && R6::is.R6(self$`exchange`[[1]]))))) {
          ApiResponseCryptoKeltnerChannelObject[['exchange']] <- lapply(self$`exchange`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoKeltnerChannelObject[['exchange']] <- jsonlite::toJSON(self$`exchange`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`timeframe`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`timeframe`) && ((length(self$`timeframe`) == 0) || ((length(self$`timeframe`) != 0 && R6::is.R6(self$`timeframe`[[1]]))))) {
          ApiResponseCryptoKeltnerChannelObject[['timeframe']] <- lapply(self$`timeframe`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoKeltnerChannelObject[['timeframe']] <- jsonlite::toJSON(self$`timeframe`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseCryptoKeltnerChannelObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseCryptoKeltnerChannelObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseCryptoKeltnerChannelObject
    },
    fromJSON = function(ApiResponseCryptoKeltnerChannelJson) {
      ApiResponseCryptoKeltnerChannelObject <- jsonlite::fromJSON(ApiResponseCryptoKeltnerChannelJson)
      if (!is.null(ApiResponseCryptoKeltnerChannelObject$`technicals`)) {
        self$`technicals` <- ApiResponseCryptoKeltnerChannelObject$`technicals`
      }
      if (!is.null(ApiResponseCryptoKeltnerChannelObject$`indicator`)) {
        self$`indicator` <- ApiResponseCryptoKeltnerChannelObject$`indicator`
      }
      if (!is.null(ApiResponseCryptoKeltnerChannelObject$`pair`)) {
        self$`pair` <- ApiResponseCryptoKeltnerChannelObject$`pair`
      }
      if (!is.null(ApiResponseCryptoKeltnerChannelObject$`exchange`)) {
        self$`exchange` <- ApiResponseCryptoKeltnerChannelObject$`exchange`
      }
      if (!is.null(ApiResponseCryptoKeltnerChannelObject$`timeframe`)) {
        self$`timeframe` <- ApiResponseCryptoKeltnerChannelObject$`timeframe`
      }
      if (!is.null(ApiResponseCryptoKeltnerChannelObject$`next_page`)) {
        self$`next_page` <- ApiResponseCryptoKeltnerChannelObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseCryptoKeltnerChannelJson) {
      ApiResponseCryptoKeltnerChannelObject <- jsonlite::fromJSON(ApiResponseCryptoKeltnerChannelJson, simplifyDataFrame = FALSE)
      self$setFromList(ApiResponseCryptoKeltnerChannelObject)
    },
    setFromList = function(listObject) {


      self$`technicals` <- lapply(listObject$`technicals`, function(x) {
      KeltnerChannelTechnicalValueObject <- KeltnerChannelTechnicalValue$new()
      KeltnerChannelTechnicalValueObject$setFromList(x)
      return(KeltnerChannelTechnicalValueObject)
      })

      technicals_list <- lapply(self$`technicals`, function(x) {
        return(x$getAsList()) 
      })

      self$`technicals_data_frame` <- do.call(rbind, lapply(technicals_list, data.frame))













      self$`indicator` <- TechnicalIndicator$new()
      self$`indicator`$setFromList(listObject$`indicator`)








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
      listObject[["technicals"]] <- lapply(self$`technicals`, function(o) {
        return(o$getAsList())
      })




        




      indicator_list <- self$`indicator`$getAsList()
      for (x in names(indicator_list)) {
        listObject[[paste("indicator_",x, sep = "")]] <- self$`indicator`[[x]]
      }
        




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
