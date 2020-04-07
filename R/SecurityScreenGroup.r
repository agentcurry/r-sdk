# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.10.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SecurityScreenGroup Class
#'
#' @field operator 
#' @field clauses 
#' @field groups 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SecurityScreenGroup <- R6::R6Class(
  'SecurityScreenGroup',
  public = list(
    `operator` = NA,
    `clauses` = NA,
    `clauses_data_frame` = NULL,
    `groups` = NA,
    `groups_data_frame` = NULL,
    initialize = function(`operator`, `clauses`, `groups`){
      if (!missing(`operator`)) {
        self$`operator` <- `operator`
      }
      if (!missing(`clauses`)) {
        self$`clauses` <- `clauses`
      }
      if (!missing(`groups`)) {
        self$`groups` <- `groups`
      }
    },
    toJSON = function() {
      SecurityScreenGroupObject <- list()
      if (!is.null(self$`operator`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`operator`) && ((length(self$`operator`) == 0) || ((length(self$`operator`) != 0 && R6::is.R6(self$`operator`[[1]]))))) {
          SecurityScreenGroupObject[['operator']] <- lapply(self$`operator`, function(x) x$toJSON())
        } else {
          SecurityScreenGroupObject[['operator']] <- jsonlite::toJSON(self$`operator`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`clauses`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`clauses`) && ((length(self$`clauses`) == 0) || ((length(self$`clauses`) != 0 && R6::is.R6(self$`clauses`[[1]]))))) {
          SecurityScreenGroupObject[['clauses']] <- lapply(self$`clauses`, function(x) x$toJSON())
        } else {
          SecurityScreenGroupObject[['clauses']] <- jsonlite::toJSON(self$`clauses`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`groups`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`groups`) && ((length(self$`groups`) == 0) || ((length(self$`groups`) != 0 && R6::is.R6(self$`groups`[[1]]))))) {
          SecurityScreenGroupObject[['groups']] <- lapply(self$`groups`, function(x) x$toJSON())
        } else {
          SecurityScreenGroupObject[['groups']] <- jsonlite::toJSON(self$`groups`, auto_unbox = TRUE)
        }
      }

      SecurityScreenGroupObject
    },
    fromJSON = function(SecurityScreenGroupJson) {
      SecurityScreenGroupObject <- jsonlite::fromJSON(SecurityScreenGroupJson)
      if (!is.null(SecurityScreenGroupObject$`operator`)) {
        self$`operator` <- SecurityScreenGroupObject$`operator`
      }
      if (!is.null(SecurityScreenGroupObject$`clauses`)) {
        self$`clauses` <- SecurityScreenGroupObject$`clauses`
      }
      if (!is.null(SecurityScreenGroupObject$`groups`)) {
        self$`groups` <- SecurityScreenGroupObject$`groups`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(SecurityScreenGroupJson) {
      SecurityScreenGroupObject <- jsonlite::fromJSON(SecurityScreenGroupJson, simplifyDataFrame = FALSE)
      self$setFromList(SecurityScreenGroupObject)
    },
    setFromList = function(listObject) {
      if (!is.null(listObject$`operator`)) {
        self$`operator` <- listObject$`operator`
      }
      else {
        self$`operator` <- NA 
      }



      self$`clauses` <- lapply(listObject$`clauses`, function(x) {
      SecurityScreenClauseObject <- SecurityScreenClause$new()
      SecurityScreenClauseObject$setFromList(x)
      return(SecurityScreenClauseObject)
      })

      clauses_list <- lapply(self$`clauses`, function(x) {
        return(x$getAsList()) 
      })

      self$`clauses_data_frame` <- do.call(rbind, lapply(clauses_list, data.frame))








      self$`groups` <- lapply(listObject$`groups`, function(x) {
      SecurityScreenGroupObject <- SecurityScreenGroup$new()
      SecurityScreenGroupObject$setFromList(x)
      return(SecurityScreenGroupObject)
      })

      groups_list <- lapply(self$`groups`, function(x) {
        return(x$getAsList()) 
      })

      self$`groups_data_frame` <- do.call(rbind, lapply(groups_list, data.frame))






    },
    getAsList = function() {
      listObject = list()
      listObject[["operator"]] <- self$`operator`
      # listObject[["clauses"]] <- lapply(self$`clauses`, function(o) {
      #  return(o$getAsList())
      # })




        
      # listObject[["groups"]] <- lapply(self$`groups`, function(o) {
      #  return(o$getAsList())
      # })




        
      return(listObject)
    }
  )
)
