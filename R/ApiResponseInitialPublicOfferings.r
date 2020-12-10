# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.17.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseInitialPublicOfferings Class
#'
#' @field initial_public_offerings 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseInitialPublicOfferings <- R6::R6Class(
  'ApiResponseInitialPublicOfferings',
  public = list(
    `initial_public_offerings` = NA,
    `initial_public_offerings_data_frame` = NULL,
    `next_page` = NA,
    initialize = function(`initial_public_offerings`, `next_page`){
      if (!missing(`initial_public_offerings`)) {
        self$`initial_public_offerings` <- `initial_public_offerings`
      }
      if (!missing(`next_page`)) {
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseInitialPublicOfferingsObject <- list()
      if (!is.null(self$`initial_public_offerings`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`initial_public_offerings`) && ((length(self$`initial_public_offerings`) == 0) || ((length(self$`initial_public_offerings`) != 0 && R6::is.R6(self$`initial_public_offerings`[[1]]))))) {
          ApiResponseInitialPublicOfferingsObject[['initial_public_offerings']] <- lapply(self$`initial_public_offerings`, function(x) x$toJSON())
        } else {
          ApiResponseInitialPublicOfferingsObject[['initial_public_offerings']] <- jsonlite::toJSON(self$`initial_public_offerings`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseInitialPublicOfferingsObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseInitialPublicOfferingsObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseInitialPublicOfferingsObject
    },
    fromJSON = function(ApiResponseInitialPublicOfferingsJson) {
      ApiResponseInitialPublicOfferingsObject <- jsonlite::fromJSON(ApiResponseInitialPublicOfferingsJson)
      if (!is.null(ApiResponseInitialPublicOfferingsObject$`initial_public_offerings`)) {
        self$`initial_public_offerings` <- ApiResponseInitialPublicOfferingsObject$`initial_public_offerings`
      }
      if (!is.null(ApiResponseInitialPublicOfferingsObject$`next_page`)) {
        self$`next_page` <- ApiResponseInitialPublicOfferingsObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseInitialPublicOfferingsJson) {
      ApiResponseInitialPublicOfferingsObject <- jsonlite::fromJSON(ApiResponseInitialPublicOfferingsJson, simplifyDataFrame = FALSE)
      self$setFromList(ApiResponseInitialPublicOfferingsObject)
    },
    setFromList = function(listObject) {


      self$`initial_public_offerings` <- lapply(listObject$`initial_public_offerings`, function(x) {
      CompanyInitialPublicOfferingObject <- CompanyInitialPublicOffering$new()
      CompanyInitialPublicOfferingObject$setFromList(x)
      return(CompanyInitialPublicOfferingObject)
      })

      initial_public_offerings_list <- lapply(self$`initial_public_offerings`, function(x) {
        return(x$getAsList()) 
      })

      self$`initial_public_offerings_data_frame` <- do.call(rbind, lapply(initial_public_offerings_list, data.frame))






      if (!is.null(listObject$`next_page`)) {
        self$`next_page` <- listObject$`next_page`
      }
      else {
        self$`next_page` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      # listObject[["initial_public_offerings"]] <- lapply(self$`initial_public_offerings`, function(o) {
      #  return(o$getAsList())
      # })




        
      listObject[["next_page"]] <- self$`next_page`
      return(listObject)
    }
  )
)
