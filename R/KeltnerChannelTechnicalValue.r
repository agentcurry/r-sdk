# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.18.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' KeltnerChannelTechnicalValue Class
#'
#' @field date_time 
#' @field lower_band 
#' @field middle_band 
#' @field upper_band 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
KeltnerChannelTechnicalValue <- R6::R6Class(
  'KeltnerChannelTechnicalValue',
  public = list(
    `date_time` = NA,
    `lower_band` = NA,
    `middle_band` = NA,
    `upper_band` = NA,
    initialize = function(`date_time`, `lower_band`, `middle_band`, `upper_band`){
      if (!missing(`date_time`)) {
        self$`date_time` <- `date_time`
      }
      if (!missing(`lower_band`)) {
        self$`lower_band` <- `lower_band`
      }
      if (!missing(`middle_band`)) {
        self$`middle_band` <- `middle_band`
      }
      if (!missing(`upper_band`)) {
        self$`upper_band` <- `upper_band`
      }
    },
    toJSON = function() {
      KeltnerChannelTechnicalValueObject <- list()
      if (!is.null(self$`date_time`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`date_time`) && ((length(self$`date_time`) == 0) || ((length(self$`date_time`) != 0 && R6::is.R6(self$`date_time`[[1]]))))) {
          KeltnerChannelTechnicalValueObject[['date_time']] <- lapply(self$`date_time`, function(x) x$toJSON())
        } else {
          KeltnerChannelTechnicalValueObject[['date_time']] <- jsonlite::toJSON(self$`date_time`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`lower_band`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`lower_band`) && ((length(self$`lower_band`) == 0) || ((length(self$`lower_band`) != 0 && R6::is.R6(self$`lower_band`[[1]]))))) {
          KeltnerChannelTechnicalValueObject[['lower_band']] <- lapply(self$`lower_band`, function(x) x$toJSON())
        } else {
          KeltnerChannelTechnicalValueObject[['lower_band']] <- jsonlite::toJSON(self$`lower_band`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`middle_band`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`middle_band`) && ((length(self$`middle_band`) == 0) || ((length(self$`middle_band`) != 0 && R6::is.R6(self$`middle_band`[[1]]))))) {
          KeltnerChannelTechnicalValueObject[['middle_band']] <- lapply(self$`middle_band`, function(x) x$toJSON())
        } else {
          KeltnerChannelTechnicalValueObject[['middle_band']] <- jsonlite::toJSON(self$`middle_band`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`upper_band`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`upper_band`) && ((length(self$`upper_band`) == 0) || ((length(self$`upper_band`) != 0 && R6::is.R6(self$`upper_band`[[1]]))))) {
          KeltnerChannelTechnicalValueObject[['upper_band']] <- lapply(self$`upper_band`, function(x) x$toJSON())
        } else {
          KeltnerChannelTechnicalValueObject[['upper_band']] <- jsonlite::toJSON(self$`upper_band`, auto_unbox = TRUE)
        }
      }

      KeltnerChannelTechnicalValueObject
    },
    fromJSON = function(KeltnerChannelTechnicalValueJson) {
      KeltnerChannelTechnicalValueObject <- jsonlite::fromJSON(KeltnerChannelTechnicalValueJson)
      if (!is.null(KeltnerChannelTechnicalValueObject$`date_time`)) {
        self$`date_time` <- KeltnerChannelTechnicalValueObject$`date_time`
      }
      if (!is.null(KeltnerChannelTechnicalValueObject$`lower_band`)) {
        self$`lower_band` <- KeltnerChannelTechnicalValueObject$`lower_band`
      }
      if (!is.null(KeltnerChannelTechnicalValueObject$`middle_band`)) {
        self$`middle_band` <- KeltnerChannelTechnicalValueObject$`middle_band`
      }
      if (!is.null(KeltnerChannelTechnicalValueObject$`upper_band`)) {
        self$`upper_band` <- KeltnerChannelTechnicalValueObject$`upper_band`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(KeltnerChannelTechnicalValueJson) {
      KeltnerChannelTechnicalValueObject <- jsonlite::fromJSON(KeltnerChannelTechnicalValueJson, simplifyDataFrame = FALSE)
      self$setFromList(KeltnerChannelTechnicalValueObject)
    },
    setFromList = function(listObject) {




      if (!is.null(listObject$`date_time`)) {
        self$`date_time` <- as.POSIXct(listObject$`date_time`, tz = "GMT", "%Y-%m-%dT%H:%M:%OS")
      }
      else {
        self$`date_time` <- NA 
      }




      if (!is.null(listObject$`lower_band`)) {
        self$`lower_band` <- listObject$`lower_band`
      }
      else {
        self$`lower_band` <- NA 
      }

      if (!is.null(listObject$`middle_band`)) {
        self$`middle_band` <- listObject$`middle_band`
      }
      else {
        self$`middle_band` <- NA 
      }

      if (!is.null(listObject$`upper_band`)) {
        self$`upper_band` <- listObject$`upper_band`
      }
      else {
        self$`upper_band` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()


      listObject[["date_time"]] <- self$`date_time`


        
      listObject[["lower_band"]] <- self$`lower_band`
      listObject[["middle_band"]] <- self$`middle_band`
      listObject[["upper_band"]] <- self$`upper_band`
      return(listObject)
    }
  )
)
