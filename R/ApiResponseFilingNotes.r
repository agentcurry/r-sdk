# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.8.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ApiResponseFilingNotes Class
#'
#' @field filing_notes 
#' @field next_page 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ApiResponseFilingNotes <- R6::R6Class(
  'ApiResponseFilingNotes',
  public = list(
    `filing_notes` = NA,
    `filing_notes_data_frame` = NULL,
    `next_page` = NA,
    initialize = function(`filing_notes`, `next_page`){
      if (!missing(`filing_notes`)) {
        self$`filing_notes` <- `filing_notes`
      }
      if (!missing(`next_page`)) {
        self$`next_page` <- `next_page`
      }
    },
    toJSON = function() {
      ApiResponseFilingNotesObject <- list()
      if (!is.null(self$`filing_notes`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`filing_notes`) && ((length(self$`filing_notes`) == 0) || ((length(self$`filing_notes`) != 0 && R6::is.R6(self$`filing_notes`[[1]]))))) {
          ApiResponseFilingNotesObject[['filing_notes']] <- lapply(self$`filing_notes`, function(x) x$toJSON())
        } else {
          ApiResponseFilingNotesObject[['filing_notes']] <- jsonlite::toJSON(self$`filing_notes`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_page`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_page`) && ((length(self$`next_page`) == 0) || ((length(self$`next_page`) != 0 && R6::is.R6(self$`next_page`[[1]]))))) {
          ApiResponseFilingNotesObject[['next_page']] <- lapply(self$`next_page`, function(x) x$toJSON())
        } else {
          ApiResponseFilingNotesObject[['next_page']] <- jsonlite::toJSON(self$`next_page`, auto_unbox = TRUE)
        }
      }

      ApiResponseFilingNotesObject
    },
    fromJSON = function(ApiResponseFilingNotesJson) {
      ApiResponseFilingNotesObject <- jsonlite::fromJSON(ApiResponseFilingNotesJson)
      if (!is.null(ApiResponseFilingNotesObject$`filing_notes`)) {
        self$`filing_notes` <- ApiResponseFilingNotesObject$`filing_notes`
      }
      if (!is.null(ApiResponseFilingNotesObject$`next_page`)) {
        self$`next_page` <- ApiResponseFilingNotesObject$`next_page`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ApiResponseFilingNotesJson) {
      ApiResponseFilingNotesObject <- jsonlite::fromJSON(ApiResponseFilingNotesJson, simplifyDataFrame = FALSE)
      self$setFromList(ApiResponseFilingNotesObject)
    },
    setFromList = function(listObject) {


      self$`filing_notes` <- lapply(listObject$`filing_notes`, function(x) {
      FilingNoteSummaryObject <- FilingNoteSummary$new()
      FilingNoteSummaryObject$setFromList(x)
      return(FilingNoteSummaryObject)
      })

      filing_notes_list <- lapply(self$`filing_notes`, function(x) {
        return(x$getAsList()) 
      })

      self$`filing_notes_data_frame` <- do.call(rbind, lapply(filing_notes_list, data.frame))






      if (!is.null(listObject$`next_page`)) {
        self$`next_page` <- listObject$`next_page`
      }
      else {
        self$`next_page` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      listObject[["filing_notes"]] <- lapply(self$`filing_notes`, function(o) {
        return(o$getAsList())
      })




        
      listObject[["next_page"]] <- self$`next_page`
      return(listObject)
    }
  )
)
