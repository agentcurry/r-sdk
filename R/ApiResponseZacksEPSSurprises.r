# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.16.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseZacksEPSSurprises Class
#'
#' @field eps_surprises 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseZacksEPSSurprises <- R6::R6Class(
  'ApiResponseZacksEPSSurprises',
  public = list(
    `eps_surprises` = NA,
    `eps_surprises_data_frame` = NULL,
    `next_page` = NA,
    initialize = function(`eps_surprises`, `next_page`){
      if (!missing(`eps_surprises`)) {
        self$`eps_surprises` <- `eps_surprises`
      }
      if (!missing(`next_page`)) {
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseZacksEPSSurprisesObject <- list()
      if (!is.null(self$`eps_surprises`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`eps_surprises`) && ((length(self$`eps_surprises`) == 0) || ((length(self$`eps_surprises`) != 0 && R6::is.R6(self$`eps_surprises`[[1]]))))) {
          ApiResponseZacksEPSSurprisesObject[['eps_surprises']] <- lapply(self$`eps_surprises`, function(x) x$toJSON())
        } else {
          ApiResponseZacksEPSSurprisesObject[['eps_surprises']] <- jsonlite::toJSON(self$`eps_surprises`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseZacksEPSSurprisesObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseZacksEPSSurprisesObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseZacksEPSSurprisesObject
    },
    fromJSON = function(ApiResponseZacksEPSSurprisesJson) {
      ApiResponseZacksEPSSurprisesObject <- jsonlite::fromJSON(ApiResponseZacksEPSSurprisesJson)
      if (!is.null(ApiResponseZacksEPSSurprisesObject$`eps_surprises`)) {
        self$`eps_surprises` <- ApiResponseZacksEPSSurprisesObject$`eps_surprises`
      }
      if (!is.null(ApiResponseZacksEPSSurprisesObject$`next_page`)) {
        self$`next_page` <- ApiResponseZacksEPSSurprisesObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseZacksEPSSurprisesJson) {
      ApiResponseZacksEPSSurprisesObject <- jsonlite::fromJSON(ApiResponseZacksEPSSurprisesJson, simplifyDataFrame = FALSE)
      self$setFromList(ApiResponseZacksEPSSurprisesObject)
    },
    setFromList = function(listObject) {


      self$`eps_surprises` <- lapply(listObject$`eps_surprises`, function(x) {
      ZacksEPSSurpriseObject <- ZacksEPSSurprise$new()
      ZacksEPSSurpriseObject$setFromList(x)
      return(ZacksEPSSurpriseObject)
      })

      eps_surprises_list <- lapply(self$`eps_surprises`, function(x) {
        return(x$getAsList()) 
      })

      self$`eps_surprises_data_frame` <- do.call(rbind, lapply(eps_surprises_list, data.frame))






      if (!is.null(listObject$`next_page`)) {
        self$`next_page` <- listObject$`next_page`
      }
      else {
        self$`next_page` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      # listObject[["eps_surprises"]] <- lapply(self$`eps_surprises`, function(o) {
      #  return(o$getAsList())
      # })




        
      listObject[["next_page"]] <- self$`next_page`
      return(listObject)
    }
  )
)
