# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.17.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseSecurityBollingerBands Class
#'
#' @field technicals 
#' @field indicator 
#' @field security 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseSecurityBollingerBands <- R6::R6Class(
  'ApiResponseSecurityBollingerBands',
  public = list(
    `technicals` = NA,
    `technicals_data_frame` = NULL,
    `indicator` = NA,
    `security` = NA,
    `next_page` = NA,
    initialize = function(`technicals`, `indicator`, `security`, `next_page`){
      if (!missing(`technicals`)) {
        self$`technicals` <- `technicals`
      }
      if (!missing(`indicator`)) {
        self$`indicator` <- `indicator`
      }
      if (!missing(`security`)) {
        self$`security` <- `security`
      }
      if (!missing(`next_page`)) {
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseSecurityBollingerBandsObject <- list()
      if (!is.null(self$`technicals`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`technicals`) && ((length(self$`technicals`) == 0) || ((length(self$`technicals`) != 0 && R6::is.R6(self$`technicals`[[1]]))))) {
          ApiResponseSecurityBollingerBandsObject[['technicals']] <- lapply(self$`technicals`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityBollingerBandsObject[['technicals']] <- jsonlite::toJSON(self$`technicals`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`indicator`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`indicator`) && ((length(self$`indicator`) == 0) || ((length(self$`indicator`) != 0 && R6::is.R6(self$`indicator`[[1]]))))) {
          ApiResponseSecurityBollingerBandsObject[['indicator']] <- lapply(self$`indicator`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityBollingerBandsObject[['indicator']] <- jsonlite::toJSON(self$`indicator`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`security`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`security`) && ((length(self$`security`) == 0) || ((length(self$`security`) != 0 && R6::is.R6(self$`security`[[1]]))))) {
          ApiResponseSecurityBollingerBandsObject[['security']] <- lapply(self$`security`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityBollingerBandsObject[['security']] <- jsonlite::toJSON(self$`security`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseSecurityBollingerBandsObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseSecurityBollingerBandsObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseSecurityBollingerBandsObject
    },
    fromJSON = function(ApiResponseSecurityBollingerBandsJson) {
      ApiResponseSecurityBollingerBandsObject <- jsonlite::fromJSON(ApiResponseSecurityBollingerBandsJson)
      if (!is.null(ApiResponseSecurityBollingerBandsObject$`technicals`)) {
        self$`technicals` <- ApiResponseSecurityBollingerBandsObject$`technicals`
      }
      if (!is.null(ApiResponseSecurityBollingerBandsObject$`indicator`)) {
        self$`indicator` <- ApiResponseSecurityBollingerBandsObject$`indicator`
      }
      if (!is.null(ApiResponseSecurityBollingerBandsObject$`security`)) {
        self$`security` <- ApiResponseSecurityBollingerBandsObject$`security`
      }
      if (!is.null(ApiResponseSecurityBollingerBandsObject$`next_page`)) {
        self$`next_page` <- ApiResponseSecurityBollingerBandsObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseSecurityBollingerBandsJson) {
      ApiResponseSecurityBollingerBandsObject <- jsonlite::fromJSON(ApiResponseSecurityBollingerBandsJson, simplifyDataFrame = FALSE)
      self$setFromList(ApiResponseSecurityBollingerBandsObject)
    },
    setFromList = function(listObject) {


      self$`technicals` <- lapply(listObject$`technicals`, function(x) {
      BollingerBandsTechnicalValueObject <- BollingerBandsTechnicalValue$new()
      BollingerBandsTechnicalValueObject$setFromList(x)
      return(BollingerBandsTechnicalValueObject)
      })

      technicals_list <- lapply(self$`technicals`, function(x) {
        return(x$getAsList()) 
      })

      self$`technicals_data_frame` <- do.call(rbind, lapply(technicals_list, data.frame))













      self$`indicator` <- TechnicalIndicator$new()
      self$`indicator`$setFromList(listObject$`indicator`)








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
      # listObject[["technicals"]] <- lapply(self$`technicals`, function(o) {
      #  return(o$getAsList())
      # })




        




      indicator_list <- self$`indicator`$getAsList()
      for (x in names(indicator_list)) {
        listObject[[paste("indicator_",x, sep = "")]] <- self$`indicator`[[x]]
      }
        




      security_list <- self$`security`$getAsList()
      for (x in names(security_list)) {
        listObject[[paste("security_",x, sep = "")]] <- self$`security`[[x]]
      }
        
      listObject[["next_page"]] <- self$`next_page`
      return(listObject)
    }
  )
)
