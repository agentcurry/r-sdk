# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.8.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' CompanyNews Class
#'
#' @field id 
#' @field title 
#' @field publication_date 
#' @field url 
#' @field summary 
#' @field company 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CompanyNews <- R6::R6Class(
  'CompanyNews',
  public = list(
    `id` = NA,
    `title` = NA,
    `publication_date` = NA,
    `url` = NA,
    `summary` = NA,
    `company` = NA,
    initialize = function(`id`, `title`, `publication_date`, `url`, `summary`, `company`){
      if (!missing(`id`)) {
        self$`id` <- `id`
      }
      if (!missing(`title`)) {
        self$`title` <- `title`
      }
      if (!missing(`publication_date`)) {
        self$`publication_date` <- `publication_date`
      }
      if (!missing(`url`)) {
        self$`url` <- `url`
      }
      if (!missing(`summary`)) {
        self$`summary` <- `summary`
      }
      if (!missing(`company`)) {
        self$`company` <- `company`
      }
    },
    toJSON = function() {
      CompanyNewsObject <- list()
      if (!is.null(self$`id`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`id`) && ((length(self$`id`) == 0) || ((length(self$`id`) != 0 && R6::is.R6(self$`id`[[1]]))))) {
          CompanyNewsObject[['id']] <- lapply(self$`id`, function(x) x$toJSON())
        } else {
          CompanyNewsObject[['id']] <- jsonlite::toJSON(self$`id`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`title`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`title`) && ((length(self$`title`) == 0) || ((length(self$`title`) != 0 && R6::is.R6(self$`title`[[1]]))))) {
          CompanyNewsObject[['title']] <- lapply(self$`title`, function(x) x$toJSON())
        } else {
          CompanyNewsObject[['title']] <- jsonlite::toJSON(self$`title`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`publication_date`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`publication_date`) && ((length(self$`publication_date`) == 0) || ((length(self$`publication_date`) != 0 && R6::is.R6(self$`publication_date`[[1]]))))) {
          CompanyNewsObject[['publication_date']] <- lapply(self$`publication_date`, function(x) x$toJSON())
        } else {
          CompanyNewsObject[['publication_date']] <- jsonlite::toJSON(self$`publication_date`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`url`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`url`) && ((length(self$`url`) == 0) || ((length(self$`url`) != 0 && R6::is.R6(self$`url`[[1]]))))) {
          CompanyNewsObject[['url']] <- lapply(self$`url`, function(x) x$toJSON())
        } else {
          CompanyNewsObject[['url']] <- jsonlite::toJSON(self$`url`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`summary`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`summary`) && ((length(self$`summary`) == 0) || ((length(self$`summary`) != 0 && R6::is.R6(self$`summary`[[1]]))))) {
          CompanyNewsObject[['summary']] <- lapply(self$`summary`, function(x) x$toJSON())
        } else {
          CompanyNewsObject[['summary']] <- jsonlite::toJSON(self$`summary`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`company`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`company`) && ((length(self$`company`) == 0) || ((length(self$`company`) != 0 && R6::is.R6(self$`company`[[1]]))))) {
          CompanyNewsObject[['company']] <- lapply(self$`company`, function(x) x$toJSON())
        } else {
          CompanyNewsObject[['company']] <- jsonlite::toJSON(self$`company`, auto_unbox = TRUE)
        }
      }

      CompanyNewsObject
    },
    fromJSON = function(CompanyNewsJson) {
      CompanyNewsObject <- jsonlite::fromJSON(CompanyNewsJson)
      if (!is.null(CompanyNewsObject$`id`)) {
        self$`id` <- CompanyNewsObject$`id`
      }
      if (!is.null(CompanyNewsObject$`title`)) {
        self$`title` <- CompanyNewsObject$`title`
      }
      if (!is.null(CompanyNewsObject$`publication_date`)) {
        self$`publication_date` <- CompanyNewsObject$`publication_date`
      }
      if (!is.null(CompanyNewsObject$`url`)) {
        self$`url` <- CompanyNewsObject$`url`
      }
      if (!is.null(CompanyNewsObject$`summary`)) {
        self$`summary` <- CompanyNewsObject$`summary`
      }
      if (!is.null(CompanyNewsObject$`company`)) {
        self$`company` <- CompanyNewsObject$`company`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(CompanyNewsJson) {
      CompanyNewsObject <- jsonlite::fromJSON(CompanyNewsJson, simplifyDataFrame = FALSE)
      self$setFromList(CompanyNewsObject)
    },
    setFromList = function(listObject) {
      if (!is.null(listObject$`id`)) {
        self$`id` <- listObject$`id`
      }
      else {
        self$`id` <- NA 
      }

      if (!is.null(listObject$`title`)) {
        self$`title` <- listObject$`title`
      }
      else {
        self$`title` <- NA 
      }





      if (!is.null(listObject$`publication_date`)) {
        self$`publication_date` <- as.POSIXct(listObject$`publication_date`, tz = "GMT", "%Y-%m-%dT%H:%M:%OS")
      }
      else {
        self$`publication_date` <- NA 
      }




      if (!is.null(listObject$`url`)) {
        self$`url` <- listObject$`url`
      }
      else {
        self$`url` <- NA 
      }

      if (!is.null(listObject$`summary`)) {
        self$`summary` <- listObject$`summary`
      }
      else {
        self$`summary` <- NA 
      }








      self$`company` <- CompanySummary$new()
      self$`company`$setFromList(listObject$`company`)

    },
    getAsList = function() {
      listObject = list()
      listObject[["id"]] <- self$`id`
      listObject[["title"]] <- self$`title`


      listObject[["publication_date"]] <- self$`publication_date`


        
      listObject[["url"]] <- self$`url`
      listObject[["summary"]] <- self$`summary`




      company_list <- self$`company`$getAsList()
      for (x in names(company_list)) {
        listObject[[paste("company_",x, sep = "")]] <- self$`company`[[x]]
      }
        
      return(listObject)
    }
  )
)
