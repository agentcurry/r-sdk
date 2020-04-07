# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.10.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ReportedTag Class
#'
#' @field tag 
#' @field name 
#' @field balance 
#' @field unit 
#' @field abstract 
#' @field sequence 
#' @field depth 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReportedTag <- R6::R6Class(
  'ReportedTag',
  public = list(
    `tag` = NA,
    `name` = NA,
    `balance` = NA,
    `unit` = NA,
    `abstract` = NA,
    `sequence` = NA,
    `depth` = NA,
    initialize = function(`tag`, `name`, `balance`, `unit`, `abstract`, `sequence`, `depth`){
      if (!missing(`tag`)) {
        self$`tag` <- `tag`
      }
      if (!missing(`name`)) {
        self$`name` <- `name`
      }
      if (!missing(`balance`)) {
        self$`balance` <- `balance`
      }
      if (!missing(`unit`)) {
        self$`unit` <- `unit`
      }
      if (!missing(`abstract`)) {
        self$`abstract` <- `abstract`
      }
      if (!missing(`sequence`)) {
        self$`sequence` <- `sequence`
      }
      if (!missing(`depth`)) {
        self$`depth` <- `depth`
      }
    },
    toJSON = function() {
      ReportedTagObject <- list()
      if (!is.null(self$`tag`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`tag`) && ((length(self$`tag`) == 0) || ((length(self$`tag`) != 0 && R6::is.R6(self$`tag`[[1]]))))) {
          ReportedTagObject[['tag']] <- lapply(self$`tag`, function(x) x$toJSON())
        } else {
          ReportedTagObject[['tag']] <- jsonlite::toJSON(self$`tag`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`name`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`name`) && ((length(self$`name`) == 0) || ((length(self$`name`) != 0 && R6::is.R6(self$`name`[[1]]))))) {
          ReportedTagObject[['name']] <- lapply(self$`name`, function(x) x$toJSON())
        } else {
          ReportedTagObject[['name']] <- jsonlite::toJSON(self$`name`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`balance`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`balance`) && ((length(self$`balance`) == 0) || ((length(self$`balance`) != 0 && R6::is.R6(self$`balance`[[1]]))))) {
          ReportedTagObject[['balance']] <- lapply(self$`balance`, function(x) x$toJSON())
        } else {
          ReportedTagObject[['balance']] <- jsonlite::toJSON(self$`balance`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`unit`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`unit`) && ((length(self$`unit`) == 0) || ((length(self$`unit`) != 0 && R6::is.R6(self$`unit`[[1]]))))) {
          ReportedTagObject[['unit']] <- lapply(self$`unit`, function(x) x$toJSON())
        } else {
          ReportedTagObject[['unit']] <- jsonlite::toJSON(self$`unit`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`abstract`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`abstract`) && ((length(self$`abstract`) == 0) || ((length(self$`abstract`) != 0 && R6::is.R6(self$`abstract`[[1]]))))) {
          ReportedTagObject[['abstract']] <- lapply(self$`abstract`, function(x) x$toJSON())
        } else {
          ReportedTagObject[['abstract']] <- jsonlite::toJSON(self$`abstract`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`sequence`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`sequence`) && ((length(self$`sequence`) == 0) || ((length(self$`sequence`) != 0 && R6::is.R6(self$`sequence`[[1]]))))) {
          ReportedTagObject[['sequence']] <- lapply(self$`sequence`, function(x) x$toJSON())
        } else {
          ReportedTagObject[['sequence']] <- jsonlite::toJSON(self$`sequence`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`depth`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`depth`) && ((length(self$`depth`) == 0) || ((length(self$`depth`) != 0 && R6::is.R6(self$`depth`[[1]]))))) {
          ReportedTagObject[['depth']] <- lapply(self$`depth`, function(x) x$toJSON())
        } else {
          ReportedTagObject[['depth']] <- jsonlite::toJSON(self$`depth`, auto_unbox = TRUE)
        }
      }

      ReportedTagObject
    },
    fromJSON = function(ReportedTagJson) {
      ReportedTagObject <- jsonlite::fromJSON(ReportedTagJson)
      if (!is.null(ReportedTagObject$`tag`)) {
        self$`tag` <- ReportedTagObject$`tag`
      }
      if (!is.null(ReportedTagObject$`name`)) {
        self$`name` <- ReportedTagObject$`name`
      }
      if (!is.null(ReportedTagObject$`balance`)) {
        self$`balance` <- ReportedTagObject$`balance`
      }
      if (!is.null(ReportedTagObject$`unit`)) {
        self$`unit` <- ReportedTagObject$`unit`
      }
      if (!is.null(ReportedTagObject$`abstract`)) {
        self$`abstract` <- ReportedTagObject$`abstract`
      }
      if (!is.null(ReportedTagObject$`sequence`)) {
        self$`sequence` <- ReportedTagObject$`sequence`
      }
      if (!is.null(ReportedTagObject$`depth`)) {
        self$`depth` <- ReportedTagObject$`depth`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ReportedTagJson) {
      ReportedTagObject <- jsonlite::fromJSON(ReportedTagJson, simplifyDataFrame = FALSE)
      self$setFromList(ReportedTagObject)
    },
    setFromList = function(listObject) {
      if (!is.null(listObject$`tag`)) {
        self$`tag` <- listObject$`tag`
      }
      else {
        self$`tag` <- NA 
      }

      if (!is.null(listObject$`name`)) {
        self$`name` <- listObject$`name`
      }
      else {
        self$`name` <- NA 
      }

      if (!is.null(listObject$`balance`)) {
        self$`balance` <- listObject$`balance`
      }
      else {
        self$`balance` <- NA 
      }

      if (!is.null(listObject$`unit`)) {
        self$`unit` <- listObject$`unit`
      }
      else {
        self$`unit` <- NA 
      }






      if (!is.null(listObject$`abstract`)) {
        self$`abstract` <- listObject$`abstract`
      }
      else {
        self$`abstract` <- NA
      }



      if (!is.null(listObject$`sequence`)) {
        self$`sequence` <- listObject$`sequence`
      }
      else {
        self$`sequence` <- NA 
      }

      if (!is.null(listObject$`depth`)) {
        self$`depth` <- listObject$`depth`
      }
      else {
        self$`depth` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      listObject[["tag"]] <- self$`tag`
      listObject[["name"]] <- self$`name`
      listObject[["balance"]] <- self$`balance`
      listObject[["unit"]] <- self$`unit`



      listObject[["abstract"]] <- self$`abstract`

        
      listObject[["sequence"]] <- self$`sequence`
      listObject[["depth"]] <- self$`depth`
      return(listObject)
    }
  )
)
