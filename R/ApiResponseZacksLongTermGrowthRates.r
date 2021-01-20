# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.18.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseZacksLongTermGrowthRates Class
#'
#' @field long_term_growth_estimates 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseZacksLongTermGrowthRates <- R6::R6Class(
  'ApiResponseZacksLongTermGrowthRates',
  public = list(
    `long_term_growth_estimates` = NA,
    `long_term_growth_estimates_data_frame` = NULL,
    `next_page` = NA,
    initialize = function(`long_term_growth_estimates`, `next_page`){
      if (!missing(`long_term_growth_estimates`)) {
        self$`long_term_growth_estimates` <- `long_term_growth_estimates`
      }
      if (!missing(`next_page`)) {
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseZacksLongTermGrowthRatesObject <- list()
      if (!is.null(self$`long_term_growth_estimates`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`long_term_growth_estimates`) && ((length(self$`long_term_growth_estimates`) == 0) || ((length(self$`long_term_growth_estimates`) != 0 && R6::is.R6(self$`long_term_growth_estimates`[[1]]))))) {
          ApiResponseZacksLongTermGrowthRatesObject[['long_term_growth_estimates']] <- lapply(self$`long_term_growth_estimates`, function(x) x$toJSON())
        } else {
          ApiResponseZacksLongTermGrowthRatesObject[['long_term_growth_estimates']] <- jsonlite::toJSON(self$`long_term_growth_estimates`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseZacksLongTermGrowthRatesObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseZacksLongTermGrowthRatesObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseZacksLongTermGrowthRatesObject
    },
    fromJSON = function(ApiResponseZacksLongTermGrowthRatesJson) {
      ApiResponseZacksLongTermGrowthRatesObject <- jsonlite::fromJSON(ApiResponseZacksLongTermGrowthRatesJson)
      if (!is.null(ApiResponseZacksLongTermGrowthRatesObject$`long_term_growth_estimates`)) {
        self$`long_term_growth_estimates` <- ApiResponseZacksLongTermGrowthRatesObject$`long_term_growth_estimates`
      }
      if (!is.null(ApiResponseZacksLongTermGrowthRatesObject$`next_page`)) {
        self$`next_page` <- ApiResponseZacksLongTermGrowthRatesObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseZacksLongTermGrowthRatesJson) {
      ApiResponseZacksLongTermGrowthRatesObject <- jsonlite::fromJSON(ApiResponseZacksLongTermGrowthRatesJson, simplifyDataFrame = FALSE)
      self$setFromList(ApiResponseZacksLongTermGrowthRatesObject)
    },
    setFromList = function(listObject) {


      self$`long_term_growth_estimates` <- lapply(listObject$`long_term_growth_estimates`, function(x) {
      ZacksLongTermGrowthRateObject <- ZacksLongTermGrowthRate$new()
      ZacksLongTermGrowthRateObject$setFromList(x)
      return(ZacksLongTermGrowthRateObject)
      })

      long_term_growth_estimates_list <- lapply(self$`long_term_growth_estimates`, function(x) {
        return(x$getAsList()) 
      })

      self$`long_term_growth_estimates_data_frame` <- do.call(rbind, lapply(long_term_growth_estimates_list, data.frame))






      if (!is.null(listObject$`next_page`)) {
        self$`next_page` <- listObject$`next_page`
      }
      else {
        self$`next_page` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      # listObject[["long_term_growth_estimates"]] <- lapply(self$`long_term_growth_estimates`, function(o) {
      #  return(o$getAsList())
      # })




        
      listObject[["next_page"]] <- self$`next_page`
      return(listObject)
    }
  )
)
