# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.18.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseForexPrices Class
#'
#' @field prices 
#' @field pair 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseForexPrices <- R6::R6Class(
  'ApiResponseForexPrices',
  public = list(
    `prices` = NA,
    `prices_data_frame` = NULL,
    `pair` = NA,
    `next_page` = NA,
    initialize = function(`prices`, `pair`, `next_page`){
      if (!missing(`prices`)) {
        self$`prices` <- `prices`
      }
      if (!missing(`pair`)) {
        self$`pair` <- `pair`
      }
      if (!missing(`next_page`)) {
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseForexPricesObject <- list()
      if (!is.null(self$`prices`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`prices`) && ((length(self$`prices`) == 0) || ((length(self$`prices`) != 0 && R6::is.R6(self$`prices`[[1]]))))) {
          ApiResponseForexPricesObject[['prices']] <- lapply(self$`prices`, function(x) x$toJSON())
        } else {
          ApiResponseForexPricesObject[['prices']] <- jsonlite::toJSON(self$`prices`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`pair`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`pair`) && ((length(self$`pair`) == 0) || ((length(self$`pair`) != 0 && R6::is.R6(self$`pair`[[1]]))))) {
          ApiResponseForexPricesObject[['pair']] <- lapply(self$`pair`, function(x) x$toJSON())
        } else {
          ApiResponseForexPricesObject[['pair']] <- jsonlite::toJSON(self$`pair`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseForexPricesObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseForexPricesObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseForexPricesObject
    },
    fromJSON = function(ApiResponseForexPricesJson) {
      ApiResponseForexPricesObject <- jsonlite::fromJSON(ApiResponseForexPricesJson)
      if (!is.null(ApiResponseForexPricesObject$`prices`)) {
        self$`prices` <- ApiResponseForexPricesObject$`prices`
      }
      if (!is.null(ApiResponseForexPricesObject$`pair`)) {
        self$`pair` <- ApiResponseForexPricesObject$`pair`
      }
      if (!is.null(ApiResponseForexPricesObject$`next_page`)) {
        self$`next_page` <- ApiResponseForexPricesObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseForexPricesJson) {
      ApiResponseForexPricesObject <- jsonlite::fromJSON(ApiResponseForexPricesJson, simplifyDataFrame = FALSE)
      self$setFromList(ApiResponseForexPricesObject)
    },
    setFromList = function(listObject) {


      self$`prices` <- lapply(listObject$`prices`, function(x) {
      ForexPriceObject <- ForexPrice$new()
      ForexPriceObject$setFromList(x)
      return(ForexPriceObject)
      })

      prices_list <- lapply(self$`prices`, function(x) {
        return(x$getAsList()) 
      })

      self$`prices_data_frame` <- do.call(rbind, lapply(prices_list, data.frame))













      self$`pair` <- ForexPair$new()
      self$`pair`$setFromList(listObject$`pair`)

      if (!is.null(listObject$`next_page`)) {
        self$`next_page` <- listObject$`next_page`
      }
      else {
        self$`next_page` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      # listObject[["prices"]] <- lapply(self$`prices`, function(o) {
      #  return(o$getAsList())
      # })




        




      pair_list <- self$`pair`$getAsList()
      for (x in names(pair_list)) {
        listObject[[paste("pair_",x, sep = "")]] <- self$`pair`[[x]]
      }
        
      listObject[["next_page"]] <- self$`next_page`
      return(listObject)
    }
  )
)
