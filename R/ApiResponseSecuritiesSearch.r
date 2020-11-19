# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.16.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseSecuritiesSearch Class
#'
#' @field securities 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseSecuritiesSearch <- R6::R6Class(
  'ApiResponseSecuritiesSearch',
  public = list(
    `securities` = NA,
    `securities_data_frame` = NULL,
    initialize = function(`securities`){
      if (!missing(`securities`)) {
        self$`securities` <- `securities`
      }
    },
    toJSON = function() {
      ApiResponseSecuritiesSearchObject <- list()
      if (!is.null(self$`securities`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`securities`) && ((length(self$`securities`) == 0) || ((length(self$`securities`) != 0 && R6::is.R6(self$`securities`[[1]]))))) {
          ApiResponseSecuritiesSearchObject[['securities']] <- lapply(self$`securities`, function(x) x$toJSON())
        } else {
          ApiResponseSecuritiesSearchObject[['securities']] <- jsonlite::toJSON(self$`securities`, auto_unbox = TRUE)
        }
      }

      ApiResponseSecuritiesSearchObject
    },
    fromJSON = function(ApiResponseSecuritiesSearchJson) {
      ApiResponseSecuritiesSearchObject <- jsonlite::fromJSON(ApiResponseSecuritiesSearchJson)
      if (!is.null(ApiResponseSecuritiesSearchObject$`securities`)) {
        self$`securities` <- ApiResponseSecuritiesSearchObject$`securities`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseSecuritiesSearchJson) {
      ApiResponseSecuritiesSearchObject <- jsonlite::fromJSON(ApiResponseSecuritiesSearchJson, simplifyDataFrame = FALSE)
      self$setFromList(ApiResponseSecuritiesSearchObject)
    },
    setFromList = function(listObject) {


      self$`securities` <- lapply(listObject$`securities`, function(x) {
      SecuritySummaryObject <- SecuritySummary$new()
      SecuritySummaryObject$setFromList(x)
      return(SecuritySummaryObject)
      })

      securities_list <- lapply(self$`securities`, function(x) {
        return(x$getAsList()) 
      })

      self$`securities_data_frame` <- do.call(rbind, lapply(securities_list, data.frame))






    },
    getAsList = function() {
      listObject = list()
      # listObject[["securities"]] <- lapply(self$`securities`, function(o) {
      #  return(o$getAsList())
      # })




        
      return(listObject)
    }
  )
)
