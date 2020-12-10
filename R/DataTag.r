# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.17.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DataTag Class
#'
#' @field id 
#' @field name 
#' @field tag 
#' @field statement_code 
#' @field statement_type 
#' @field parent 
#' @field sequence 
#' @field factor 
#' @field balance 
#' @field type 
#' @field unit 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DataTag <- R6::R6Class(
  'DataTag',
  public = list(
    `id` = NA,
    `name` = NA,
    `tag` = NA,
    `statement_code` = NA,
    `statement_type` = NA,
    `parent` = NA,
    `sequence` = NA,
    `factor` = NA,
    `balance` = NA,
    `type` = NA,
    `unit` = NA,
    initialize = function(`id`, `name`, `tag`, `statement_code`, `statement_type`, `parent`, `sequence`, `factor`, `balance`, `type`, `unit`){
      if (!missing(`id`)) {
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        self$`name` <- `name`
      }
      if (!missing(`tag`)) {
        self$`tag` <- `tag`
      }
      if (!missing(`statement_code`)) {
        self$`statement_code` <- `statement_code`
      }
      if (!missing(`statement_type`)) {
        self$`statement_type` <- `statement_type`
      }
      if (!missing(`parent`)) {
        self$`parent` <- `parent`
      }
      if (!missing(`sequence`)) {
        self$`sequence` <- `sequence`
      }
      if (!missing(`factor`)) {
        self$`factor` <- `factor`
      }
      if (!missing(`balance`)) {
        self$`balance` <- `balance`
      }
      if (!missing(`type`)) {
        self$`type` <- `type`
      }
      if (!missing(`unit`)) {
        self$`unit` <- `unit`
      }
    },
    toJSON = function() {
      DataTagObject <- list()
      if (!is.null(self$`id`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`id`) && ((length(self$`id`) == 0) || ((length(self$`id`) != 0 && R6::is.R6(self$`id`[[1]]))))) {
          DataTagObject[['id']] <- lapply(self$`id`, function(x) x$toJSON())
        } else {
          DataTagObject[['id']] <- jsonlite::toJSON(self$`id`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`name`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`name`) && ((length(self$`name`) == 0) || ((length(self$`name`) != 0 && R6::is.R6(self$`name`[[1]]))))) {
          DataTagObject[['name']] <- lapply(self$`name`, function(x) x$toJSON())
        } else {
          DataTagObject[['name']] <- jsonlite::toJSON(self$`name`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`tag`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`tag`) && ((length(self$`tag`) == 0) || ((length(self$`tag`) != 0 && R6::is.R6(self$`tag`[[1]]))))) {
          DataTagObject[['tag']] <- lapply(self$`tag`, function(x) x$toJSON())
        } else {
          DataTagObject[['tag']] <- jsonlite::toJSON(self$`tag`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`statement_code`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`statement_code`) && ((length(self$`statement_code`) == 0) || ((length(self$`statement_code`) != 0 && R6::is.R6(self$`statement_code`[[1]]))))) {
          DataTagObject[['statement_code']] <- lapply(self$`statement_code`, function(x) x$toJSON())
        } else {
          DataTagObject[['statement_code']] <- jsonlite::toJSON(self$`statement_code`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`statement_type`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`statement_type`) && ((length(self$`statement_type`) == 0) || ((length(self$`statement_type`) != 0 && R6::is.R6(self$`statement_type`[[1]]))))) {
          DataTagObject[['statement_type']] <- lapply(self$`statement_type`, function(x) x$toJSON())
        } else {
          DataTagObject[['statement_type']] <- jsonlite::toJSON(self$`statement_type`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`parent`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`parent`) && ((length(self$`parent`) == 0) || ((length(self$`parent`) != 0 && R6::is.R6(self$`parent`[[1]]))))) {
          DataTagObject[['parent']] <- lapply(self$`parent`, function(x) x$toJSON())
        } else {
          DataTagObject[['parent']] <- jsonlite::toJSON(self$`parent`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`sequence`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`sequence`) && ((length(self$`sequence`) == 0) || ((length(self$`sequence`) != 0 && R6::is.R6(self$`sequence`[[1]]))))) {
          DataTagObject[['sequence']] <- lapply(self$`sequence`, function(x) x$toJSON())
        } else {
          DataTagObject[['sequence']] <- jsonlite::toJSON(self$`sequence`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`factor`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`factor`) && ((length(self$`factor`) == 0) || ((length(self$`factor`) != 0 && R6::is.R6(self$`factor`[[1]]))))) {
          DataTagObject[['factor']] <- lapply(self$`factor`, function(x) x$toJSON())
        } else {
          DataTagObject[['factor']] <- jsonlite::toJSON(self$`factor`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`balance`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`balance`) && ((length(self$`balance`) == 0) || ((length(self$`balance`) != 0 && R6::is.R6(self$`balance`[[1]]))))) {
          DataTagObject[['balance']] <- lapply(self$`balance`, function(x) x$toJSON())
        } else {
          DataTagObject[['balance']] <- jsonlite::toJSON(self$`balance`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`type`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`type`) && ((length(self$`type`) == 0) || ((length(self$`type`) != 0 && R6::is.R6(self$`type`[[1]]))))) {
          DataTagObject[['type']] <- lapply(self$`type`, function(x) x$toJSON())
        } else {
          DataTagObject[['type']] <- jsonlite::toJSON(self$`type`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`unit`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`unit`) && ((length(self$`unit`) == 0) || ((length(self$`unit`) != 0 && R6::is.R6(self$`unit`[[1]]))))) {
          DataTagObject[['unit']] <- lapply(self$`unit`, function(x) x$toJSON())
        } else {
          DataTagObject[['unit']] <- jsonlite::toJSON(self$`unit`, auto_unbox = TRUE)
        }
      }

      DataTagObject
    },
    fromJSON = function(DataTagJson) {
      DataTagObject <- jsonlite::fromJSON(DataTagJson)
      if (!is.null(DataTagObject$`id`)) {
        self$`id` <- DataTagObject$`id`
      }
      if (!is.null(DataTagObject$`name`)) {
        self$`name` <- DataTagObject$`name`
      }
      if (!is.null(DataTagObject$`tag`)) {
        self$`tag` <- DataTagObject$`tag`
      }
      if (!is.null(DataTagObject$`statement_code`)) {
        self$`statement_code` <- DataTagObject$`statement_code`
      }
      if (!is.null(DataTagObject$`statement_type`)) {
        self$`statement_type` <- DataTagObject$`statement_type`
      }
      if (!is.null(DataTagObject$`parent`)) {
        self$`parent` <- DataTagObject$`parent`
      }
      if (!is.null(DataTagObject$`sequence`)) {
        self$`sequence` <- DataTagObject$`sequence`
      }
      if (!is.null(DataTagObject$`factor`)) {
        self$`factor` <- DataTagObject$`factor`
      }
      if (!is.null(DataTagObject$`balance`)) {
        self$`balance` <- DataTagObject$`balance`
      }
      if (!is.null(DataTagObject$`type`)) {
        self$`type` <- DataTagObject$`type`
      }
      if (!is.null(DataTagObject$`unit`)) {
        self$`unit` <- DataTagObject$`unit`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(DataTagJson) {
      DataTagObject <- jsonlite::fromJSON(DataTagJson, simplifyDataFrame = FALSE)
      self$setFromList(DataTagObject)
    },
    setFromList = function(listObject) {
      if (!is.null(listObject$`id`)) {
        self$`id` <- listObject$`id`
      }
      else {
        self$`id` <- NA 
      }

      if (!is.null(listObject$`name`)) {
        self$`name` <- listObject$`name`
      }
      else {
        self$`name` <- NA 
      }

      if (!is.null(listObject$`tag`)) {
        self$`tag` <- listObject$`tag`
      }
      else {
        self$`tag` <- NA 
      }

      if (!is.null(listObject$`statement_code`)) {
        self$`statement_code` <- listObject$`statement_code`
      }
      else {
        self$`statement_code` <- NA 
      }

      if (!is.null(listObject$`statement_type`)) {
        self$`statement_type` <- listObject$`statement_type`
      }
      else {
        self$`statement_type` <- NA 
      }

      if (!is.null(listObject$`parent`)) {
        self$`parent` <- listObject$`parent`
      }
      else {
        self$`parent` <- NA 
      }

      if (!is.null(listObject$`sequence`)) {
        self$`sequence` <- listObject$`sequence`
      }
      else {
        self$`sequence` <- NA 
      }

      if (!is.null(listObject$`factor`)) {
        self$`factor` <- listObject$`factor`
      }
      else {
        self$`factor` <- NA 
      }

      if (!is.null(listObject$`balance`)) {
        self$`balance` <- listObject$`balance`
      }
      else {
        self$`balance` <- NA 
      }

      if (!is.null(listObject$`type`)) {
        self$`type` <- listObject$`type`
      }
      else {
        self$`type` <- NA 
      }

      if (!is.null(listObject$`unit`)) {
        self$`unit` <- listObject$`unit`
      }
      else {
        self$`unit` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      listObject[["id"]] <- self$`id`
      listObject[["name"]] <- self$`name`
      listObject[["tag"]] <- self$`tag`
      listObject[["statement_code"]] <- self$`statement_code`
      listObject[["statement_type"]] <- self$`statement_type`
      listObject[["parent"]] <- self$`parent`
      listObject[["sequence"]] <- self$`sequence`
      listObject[["factor"]] <- self$`factor`
      listObject[["balance"]] <- self$`balance`
      listObject[["type"]] <- self$`type`
      listObject[["unit"]] <- self$`unit`
      return(listObject)
    }
  )
)
