# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.18.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SecurityScreenResultData Class
#'
#' @field tag 
#' @field number_value 
#' @field text_value 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SecurityScreenResultData <- R6::R6Class(
  'SecurityScreenResultData',
  public = list(
    `tag` = NA,
    `number_value` = NA,
    `text_value` = NA,
    initialize = function(`tag`, `number_value`, `text_value`){
      if (!missing(`tag`)) {
        self$`tag` <- `tag`
      }
      if (!missing(`number_value`)) {
        self$`number_value` <- `number_value`
      }
      if (!missing(`text_value`)) {
        self$`text_value` <- `text_value`
      }
    },
    toJSON = function() {
      SecurityScreenResultDataObject <- list()
      if (!is.null(self$`tag`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`tag`) && ((length(self$`tag`) == 0) || ((length(self$`tag`) != 0 && R6::is.R6(self$`tag`[[1]]))))) {
          SecurityScreenResultDataObject[['tag']] <- lapply(self$`tag`, function(x) x$toJSON())
        } else {
          SecurityScreenResultDataObject[['tag']] <- jsonlite::toJSON(self$`tag`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`number_value`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`number_value`) && ((length(self$`number_value`) == 0) || ((length(self$`number_value`) != 0 && R6::is.R6(self$`number_value`[[1]]))))) {
          SecurityScreenResultDataObject[['number_value']] <- lapply(self$`number_value`, function(x) x$toJSON())
        } else {
          SecurityScreenResultDataObject[['number_value']] <- jsonlite::toJSON(self$`number_value`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`text_value`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`text_value`) && ((length(self$`text_value`) == 0) || ((length(self$`text_value`) != 0 && R6::is.R6(self$`text_value`[[1]]))))) {
          SecurityScreenResultDataObject[['text_value']] <- lapply(self$`text_value`, function(x) x$toJSON())
        } else {
          SecurityScreenResultDataObject[['text_value']] <- jsonlite::toJSON(self$`text_value`, auto_unbox = TRUE)
        }
      }

      SecurityScreenResultDataObject
    },
    fromJSON = function(SecurityScreenResultDataJson) {
      SecurityScreenResultDataObject <- jsonlite::fromJSON(SecurityScreenResultDataJson)
      if (!is.null(SecurityScreenResultDataObject$`tag`)) {
        self$`tag` <- SecurityScreenResultDataObject$`tag`
      }
      if (!is.null(SecurityScreenResultDataObject$`number_value`)) {
        self$`number_value` <- SecurityScreenResultDataObject$`number_value`
      }
      if (!is.null(SecurityScreenResultDataObject$`text_value`)) {
        self$`text_value` <- SecurityScreenResultDataObject$`text_value`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(SecurityScreenResultDataJson) {
      SecurityScreenResultDataObject <- jsonlite::fromJSON(SecurityScreenResultDataJson, simplifyDataFrame = FALSE)
      self$setFromList(SecurityScreenResultDataObject)
    },
    setFromList = function(listObject) {
      if (!is.null(listObject$`tag`)) {
        self$`tag` <- listObject$`tag`
      }
      else {
        self$`tag` <- NA 
      }

      if (!is.null(listObject$`number_value`)) {
        self$`number_value` <- listObject$`number_value`
      }
      else {
        self$`number_value` <- NA 
      }

      if (!is.null(listObject$`text_value`)) {
        self$`text_value` <- listObject$`text_value`
      }
      else {
        self$`text_value` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      listObject[["tag"]] <- self$`tag`
      listObject[["number_value"]] <- self$`number_value`
      listObject[["text_value"]] <- self$`text_value`
      return(listObject)
    }
  )
)
