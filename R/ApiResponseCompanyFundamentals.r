# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.18.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseCompanyFundamentals Class
#'
#' @field fundamentals 
#' @field company 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseCompanyFundamentals <- R6::R6Class(
  'ApiResponseCompanyFundamentals',
  public = list(
    `fundamentals` = NA,
    `fundamentals_data_frame` = NULL,
    `company` = NA,
    `next_page` = NA,
    initialize = function(`fundamentals`, `company`, `next_page`){
      if (!missing(`fundamentals`)) {
        self$`fundamentals` <- `fundamentals`
      }
      if (!missing(`company`)) {
        self$`company` <- `company`
      }
      if (!missing(`next_page`)) {
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseCompanyFundamentalsObject <- list()
      if (!is.null(self$`fundamentals`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`fundamentals`) && ((length(self$`fundamentals`) == 0) || ((length(self$`fundamentals`) != 0 && R6::is.R6(self$`fundamentals`[[1]]))))) {
          ApiResponseCompanyFundamentalsObject[['fundamentals']] <- lapply(self$`fundamentals`, function(x) x$toJSON())
        } else {
          ApiResponseCompanyFundamentalsObject[['fundamentals']] <- jsonlite::toJSON(self$`fundamentals`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`company`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`company`) && ((length(self$`company`) == 0) || ((length(self$`company`) != 0 && R6::is.R6(self$`company`[[1]]))))) {
          ApiResponseCompanyFundamentalsObject[['company']] <- lapply(self$`company`, function(x) x$toJSON())
        } else {
          ApiResponseCompanyFundamentalsObject[['company']] <- jsonlite::toJSON(self$`company`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseCompanyFundamentalsObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseCompanyFundamentalsObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseCompanyFundamentalsObject
    },
    fromJSON = function(ApiResponseCompanyFundamentalsJson) {
      ApiResponseCompanyFundamentalsObject <- jsonlite::fromJSON(ApiResponseCompanyFundamentalsJson)
      if (!is.null(ApiResponseCompanyFundamentalsObject$`fundamentals`)) {
        self$`fundamentals` <- ApiResponseCompanyFundamentalsObject$`fundamentals`
      }
      if (!is.null(ApiResponseCompanyFundamentalsObject$`company`)) {
        self$`company` <- ApiResponseCompanyFundamentalsObject$`company`
      }
      if (!is.null(ApiResponseCompanyFundamentalsObject$`next_page`)) {
        self$`next_page` <- ApiResponseCompanyFundamentalsObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseCompanyFundamentalsJson) {
      ApiResponseCompanyFundamentalsObject <- jsonlite::fromJSON(ApiResponseCompanyFundamentalsJson, simplifyDataFrame = FALSE)
      self$setFromList(ApiResponseCompanyFundamentalsObject)
    },
    setFromList = function(listObject) {


      self$`fundamentals` <- lapply(listObject$`fundamentals`, function(x) {
      FundamentalSummaryObject <- FundamentalSummary$new()
      FundamentalSummaryObject$setFromList(x)
      return(FundamentalSummaryObject)
      })

      fundamentals_list <- lapply(self$`fundamentals`, function(x) {
        return(x$getAsList()) 
      })

      self$`fundamentals_data_frame` <- do.call(rbind, lapply(fundamentals_list, data.frame))













      self$`company` <- CompanySummary$new()
      self$`company`$setFromList(listObject$`company`)

      if (!is.null(listObject$`next_page`)) {
        self$`next_page` <- listObject$`next_page`
      }
      else {
        self$`next_page` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      # listObject[["fundamentals"]] <- lapply(self$`fundamentals`, function(o) {
      #  return(o$getAsList())
      # })




        




      company_list <- self$`company`$getAsList()
      for (x in names(company_list)) {
        listObject[[paste("company_",x, sep = "")]] <- self$`company`[[x]]
      }
        
      listObject[["next_page"]] <- self$`next_page`
      return(listObject)
    }
  )
)
