# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.18.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseSecurityZacksSalesSurprises Class
#'
#' @field sales_surprises 
#' @field security 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseSecurityZacksSalesSurprises <- R6::R6Class(
  'ApiResponseSecurityZacksSalesSurprises',
  public = list(
    `sales_surprises` = NA,
    `sales_surprises_data_frame` = NULL,
    `security` = NA,
    `next_page` = NA,
    initialize = function(`sales_surprises`, `security`, `next_page`){
      if (!missing(`sales_surprises`)) {
        self$`sales_surprises` <- `sales_surprises`
      }
      if (!missing(`security`)) {
        self$`security` <- `security`
      }
      if (!missing(`next_page`)) {
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseSecurityZacksSalesSurprisesObject <- list()
      if (!is.null(self$`sales_surprises`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`sales_surprises`) && ((length(self$`sales_surprises`) == 0) || ((length(self$`sales_surprises`) != 0 && R6::is.R6(self$`sales_surprises`[[1]]))))) {
          ApiResponseSecurityZacksSalesSurprisesObject[['sales_surprises']] <- lapply(self$`sales_surprises`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityZacksSalesSurprisesObject[['sales_surprises']] <- jsonlite::toJSON(self$`sales_surprises`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`security`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`security`) && ((length(self$`security`) == 0) || ((length(self$`security`) != 0 && R6::is.R6(self$`security`[[1]]))))) {
          ApiResponseSecurityZacksSalesSurprisesObject[['security']] <- lapply(self$`security`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityZacksSalesSurprisesObject[['security']] <- jsonlite::toJSON(self$`security`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseSecurityZacksSalesSurprisesObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityZacksSalesSurprisesObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseSecurityZacksSalesSurprisesObject
    },
    fromJSON = function(ApiResponseSecurityZacksSalesSurprisesJson) {
      ApiResponseSecurityZacksSalesSurprisesObject <- jsonlite::fromJSON(ApiResponseSecurityZacksSalesSurprisesJson)
      if (!is.null(ApiResponseSecurityZacksSalesSurprisesObject$`sales_surprises`)) {
        self$`sales_surprises` <- ApiResponseSecurityZacksSalesSurprisesObject$`sales_surprises`
      }
      if (!is.null(ApiResponseSecurityZacksSalesSurprisesObject$`security`)) {
        self$`security` <- ApiResponseSecurityZacksSalesSurprisesObject$`security`
      }
      if (!is.null(ApiResponseSecurityZacksSalesSurprisesObject$`next_page`)) {
        self$`next_page` <- ApiResponseSecurityZacksSalesSurprisesObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseSecurityZacksSalesSurprisesJson) {
      ApiResponseSecurityZacksSalesSurprisesObject <- jsonlite::fromJSON(ApiResponseSecurityZacksSalesSurprisesJson, simplifyDataFrame = FALSE)
      self$setFromList(ApiResponseSecurityZacksSalesSurprisesObject)
    },
    setFromList = function(listObject) {


      self$`sales_surprises` <- lapply(listObject$`sales_surprises`, function(x) {
      ZacksSalesSurpriseSummaryObject <- ZacksSalesSurpriseSummary$new()
      ZacksSalesSurpriseSummaryObject$setFromList(x)
      return(ZacksSalesSurpriseSummaryObject)
      })

      sales_surprises_list <- lapply(self$`sales_surprises`, function(x) {
        return(x$getAsList()) 
      })

      self$`sales_surprises_data_frame` <- do.call(rbind, lapply(sales_surprises_list, data.frame))













      self$`security` <- SecuritySummary$new()
      self$`security`$setFromList(listObject$`security`)

      if (!is.null(listObject$`next_page`)) {
        self$`next_page` <- listObject$`next_page`
      }
      else {
        self$`next_page` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      # listObject[["sales_surprises"]] <- lapply(self$`sales_surprises`, function(o) {
      #  return(o$getAsList())
      # })




        




      security_list <- self$`security`$getAsList()
      for (x in names(security_list)) {
        listObject[[paste("security_",x, sep = "")]] <- self$`security`[[x]]
      }
        
      listObject[["next_page"]] <- self$`next_page`
      return(listObject)
    }
  )
)
