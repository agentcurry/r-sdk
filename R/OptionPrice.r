# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.10.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' OptionPrice Class
#'
#' @field date 
#' @field close 
#' @field close_bid 
#' @field close_ask 
#' @field volume 
#' @field volume_bid 
#' @field volume_ask 
#' @field trades 
#' @field open_interest 
#' @field open_interest_change 
#' @field next_day_open_interest 
#' @field implied_volatility 
#' @field implied_volatility_change 
#' @field delta 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OptionPrice <- R6::R6Class(
  'OptionPrice',
  public = list(
    `date` = NA,
    `close` = NA,
    `close_bid` = NA,
    `close_ask` = NA,
    `volume` = NA,
    `volume_bid` = NA,
    `volume_ask` = NA,
    `trades` = NA,
    `open_interest` = NA,
    `open_interest_change` = NA,
    `next_day_open_interest` = NA,
    `implied_volatility` = NA,
    `implied_volatility_change` = NA,
    `delta` = NA,
    initialize = function(`date`, `close`, `close_bid`, `close_ask`, `volume`, `volume_bid`, `volume_ask`, `trades`, `open_interest`, `open_interest_change`, `next_day_open_interest`, `implied_volatility`, `implied_volatility_change`, `delta`){
      if (!missing(`date`)) {
        self$`date` <- `date`
      }
      if (!missing(`close`)) {
        self$`close` <- `close`
      }
      if (!missing(`close_bid`)) {
        self$`close_bid` <- `close_bid`
      }
      if (!missing(`close_ask`)) {
        self$`close_ask` <- `close_ask`
      }
      if (!missing(`volume`)) {
        self$`volume` <- `volume`
      }
      if (!missing(`volume_bid`)) {
        self$`volume_bid` <- `volume_bid`
      }
      if (!missing(`volume_ask`)) {
        self$`volume_ask` <- `volume_ask`
      }
      if (!missing(`trades`)) {
        self$`trades` <- `trades`
      }
      if (!missing(`open_interest`)) {
        self$`open_interest` <- `open_interest`
      }
      if (!missing(`open_interest_change`)) {
        self$`open_interest_change` <- `open_interest_change`
      }
      if (!missing(`next_day_open_interest`)) {
        self$`next_day_open_interest` <- `next_day_open_interest`
      }
      if (!missing(`implied_volatility`)) {
        self$`implied_volatility` <- `implied_volatility`
      }
      if (!missing(`implied_volatility_change`)) {
        self$`implied_volatility_change` <- `implied_volatility_change`
      }
      if (!missing(`delta`)) {
        self$`delta` <- `delta`
      }
    },
    toJSON = function() {
      OptionPriceObject <- list()
      if (!is.null(self$`date`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`date`) && ((length(self$`date`) == 0) || ((length(self$`date`) != 0 && R6::is.R6(self$`date`[[1]]))))) {
          OptionPriceObject[['date']] <- lapply(self$`date`, function(x) x$toJSON())
        } else {
          OptionPriceObject[['date']] <- jsonlite::toJSON(self$`date`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`close`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`close`) && ((length(self$`close`) == 0) || ((length(self$`close`) != 0 && R6::is.R6(self$`close`[[1]]))))) {
          OptionPriceObject[['close']] <- lapply(self$`close`, function(x) x$toJSON())
        } else {
          OptionPriceObject[['close']] <- jsonlite::toJSON(self$`close`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`close_bid`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`close_bid`) && ((length(self$`close_bid`) == 0) || ((length(self$`close_bid`) != 0 && R6::is.R6(self$`close_bid`[[1]]))))) {
          OptionPriceObject[['close_bid']] <- lapply(self$`close_bid`, function(x) x$toJSON())
        } else {
          OptionPriceObject[['close_bid']] <- jsonlite::toJSON(self$`close_bid`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`close_ask`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`close_ask`) && ((length(self$`close_ask`) == 0) || ((length(self$`close_ask`) != 0 && R6::is.R6(self$`close_ask`[[1]]))))) {
          OptionPriceObject[['close_ask']] <- lapply(self$`close_ask`, function(x) x$toJSON())
        } else {
          OptionPriceObject[['close_ask']] <- jsonlite::toJSON(self$`close_ask`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`volume`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`volume`) && ((length(self$`volume`) == 0) || ((length(self$`volume`) != 0 && R6::is.R6(self$`volume`[[1]]))))) {
          OptionPriceObject[['volume']] <- lapply(self$`volume`, function(x) x$toJSON())
        } else {
          OptionPriceObject[['volume']] <- jsonlite::toJSON(self$`volume`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`volume_bid`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`volume_bid`) && ((length(self$`volume_bid`) == 0) || ((length(self$`volume_bid`) != 0 && R6::is.R6(self$`volume_bid`[[1]]))))) {
          OptionPriceObject[['volume_bid']] <- lapply(self$`volume_bid`, function(x) x$toJSON())
        } else {
          OptionPriceObject[['volume_bid']] <- jsonlite::toJSON(self$`volume_bid`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`volume_ask`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`volume_ask`) && ((length(self$`volume_ask`) == 0) || ((length(self$`volume_ask`) != 0 && R6::is.R6(self$`volume_ask`[[1]]))))) {
          OptionPriceObject[['volume_ask']] <- lapply(self$`volume_ask`, function(x) x$toJSON())
        } else {
          OptionPriceObject[['volume_ask']] <- jsonlite::toJSON(self$`volume_ask`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`trades`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`trades`) && ((length(self$`trades`) == 0) || ((length(self$`trades`) != 0 && R6::is.R6(self$`trades`[[1]]))))) {
          OptionPriceObject[['trades']] <- lapply(self$`trades`, function(x) x$toJSON())
        } else {
          OptionPriceObject[['trades']] <- jsonlite::toJSON(self$`trades`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`open_interest`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`open_interest`) && ((length(self$`open_interest`) == 0) || ((length(self$`open_interest`) != 0 && R6::is.R6(self$`open_interest`[[1]]))))) {
          OptionPriceObject[['open_interest']] <- lapply(self$`open_interest`, function(x) x$toJSON())
        } else {
          OptionPriceObject[['open_interest']] <- jsonlite::toJSON(self$`open_interest`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`open_interest_change`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`open_interest_change`) && ((length(self$`open_interest_change`) == 0) || ((length(self$`open_interest_change`) != 0 && R6::is.R6(self$`open_interest_change`[[1]]))))) {
          OptionPriceObject[['open_interest_change']] <- lapply(self$`open_interest_change`, function(x) x$toJSON())
        } else {
          OptionPriceObject[['open_interest_change']] <- jsonlite::toJSON(self$`open_interest_change`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`next_day_open_interest`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`next_day_open_interest`) && ((length(self$`next_day_open_interest`) == 0) || ((length(self$`next_day_open_interest`) != 0 && R6::is.R6(self$`next_day_open_interest`[[1]]))))) {
          OptionPriceObject[['next_day_open_interest']] <- lapply(self$`next_day_open_interest`, function(x) x$toJSON())
        } else {
          OptionPriceObject[['next_day_open_interest']] <- jsonlite::toJSON(self$`next_day_open_interest`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`implied_volatility`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`implied_volatility`) && ((length(self$`implied_volatility`) == 0) || ((length(self$`implied_volatility`) != 0 && R6::is.R6(self$`implied_volatility`[[1]]))))) {
          OptionPriceObject[['implied_volatility']] <- lapply(self$`implied_volatility`, function(x) x$toJSON())
        } else {
          OptionPriceObject[['implied_volatility']] <- jsonlite::toJSON(self$`implied_volatility`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`implied_volatility_change`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`implied_volatility_change`) && ((length(self$`implied_volatility_change`) == 0) || ((length(self$`implied_volatility_change`) != 0 && R6::is.R6(self$`implied_volatility_change`[[1]]))))) {
          OptionPriceObject[['implied_volatility_change']] <- lapply(self$`implied_volatility_change`, function(x) x$toJSON())
        } else {
          OptionPriceObject[['implied_volatility_change']] <- jsonlite::toJSON(self$`implied_volatility_change`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`delta`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`delta`) && ((length(self$`delta`) == 0) || ((length(self$`delta`) != 0 && R6::is.R6(self$`delta`[[1]]))))) {
          OptionPriceObject[['delta']] <- lapply(self$`delta`, function(x) x$toJSON())
        } else {
          OptionPriceObject[['delta']] <- jsonlite::toJSON(self$`delta`, auto_unbox = TRUE)
        }
      }

      OptionPriceObject
    },
    fromJSON = function(OptionPriceJson) {
      OptionPriceObject <- jsonlite::fromJSON(OptionPriceJson)
      if (!is.null(OptionPriceObject$`date`)) {
        self$`date` <- OptionPriceObject$`date`
      }
      if (!is.null(OptionPriceObject$`close`)) {
        self$`close` <- OptionPriceObject$`close`
      }
      if (!is.null(OptionPriceObject$`close_bid`)) {
        self$`close_bid` <- OptionPriceObject$`close_bid`
      }
      if (!is.null(OptionPriceObject$`close_ask`)) {
        self$`close_ask` <- OptionPriceObject$`close_ask`
      }
      if (!is.null(OptionPriceObject$`volume`)) {
        self$`volume` <- OptionPriceObject$`volume`
      }
      if (!is.null(OptionPriceObject$`volume_bid`)) {
        self$`volume_bid` <- OptionPriceObject$`volume_bid`
      }
      if (!is.null(OptionPriceObject$`volume_ask`)) {
        self$`volume_ask` <- OptionPriceObject$`volume_ask`
      }
      if (!is.null(OptionPriceObject$`trades`)) {
        self$`trades` <- OptionPriceObject$`trades`
      }
      if (!is.null(OptionPriceObject$`open_interest`)) {
        self$`open_interest` <- OptionPriceObject$`open_interest`
      }
      if (!is.null(OptionPriceObject$`open_interest_change`)) {
        self$`open_interest_change` <- OptionPriceObject$`open_interest_change`
      }
      if (!is.null(OptionPriceObject$`next_day_open_interest`)) {
        self$`next_day_open_interest` <- OptionPriceObject$`next_day_open_interest`
      }
      if (!is.null(OptionPriceObject$`implied_volatility`)) {
        self$`implied_volatility` <- OptionPriceObject$`implied_volatility`
      }
      if (!is.null(OptionPriceObject$`implied_volatility_change`)) {
        self$`implied_volatility_change` <- OptionPriceObject$`implied_volatility_change`
      }
      if (!is.null(OptionPriceObject$`delta`)) {
        self$`delta` <- OptionPriceObject$`delta`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(OptionPriceJson) {
      OptionPriceObject <- jsonlite::fromJSON(OptionPriceJson, simplifyDataFrame = FALSE)
      self$setFromList(OptionPriceObject)
    },
    setFromList = function(listObject) {
      if (!is.null(listObject$`date`)) {
        self$`date` <- listObject$`date`
      }
      else {
        self$`date` <- NA 
      }

      if (!is.null(listObject$`close`)) {
        self$`close` <- listObject$`close`
      }
      else {
        self$`close` <- NA 
      }

      if (!is.null(listObject$`close_bid`)) {
        self$`close_bid` <- listObject$`close_bid`
      }
      else {
        self$`close_bid` <- NA 
      }

      if (!is.null(listObject$`close_ask`)) {
        self$`close_ask` <- listObject$`close_ask`
      }
      else {
        self$`close_ask` <- NA 
      }

      if (!is.null(listObject$`volume`)) {
        self$`volume` <- listObject$`volume`
      }
      else {
        self$`volume` <- NA 
      }

      if (!is.null(listObject$`volume_bid`)) {
        self$`volume_bid` <- listObject$`volume_bid`
      }
      else {
        self$`volume_bid` <- NA 
      }

      if (!is.null(listObject$`volume_ask`)) {
        self$`volume_ask` <- listObject$`volume_ask`
      }
      else {
        self$`volume_ask` <- NA 
      }

      if (!is.null(listObject$`trades`)) {
        self$`trades` <- listObject$`trades`
      }
      else {
        self$`trades` <- NA 
      }

      if (!is.null(listObject$`open_interest`)) {
        self$`open_interest` <- listObject$`open_interest`
      }
      else {
        self$`open_interest` <- NA 
      }

      if (!is.null(listObject$`open_interest_change`)) {
        self$`open_interest_change` <- listObject$`open_interest_change`
      }
      else {
        self$`open_interest_change` <- NA 
      }

      if (!is.null(listObject$`next_day_open_interest`)) {
        self$`next_day_open_interest` <- listObject$`next_day_open_interest`
      }
      else {
        self$`next_day_open_interest` <- NA 
      }

      if (!is.null(listObject$`implied_volatility`)) {
        self$`implied_volatility` <- listObject$`implied_volatility`
      }
      else {
        self$`implied_volatility` <- NA 
      }

      if (!is.null(listObject$`implied_volatility_change`)) {
        self$`implied_volatility_change` <- listObject$`implied_volatility_change`
      }
      else {
        self$`implied_volatility_change` <- NA 
      }

      if (!is.null(listObject$`delta`)) {
        self$`delta` <- listObject$`delta`
      }
      else {
        self$`delta` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      listObject[["date"]] <- self$`date`
      listObject[["close"]] <- self$`close`
      listObject[["close_bid"]] <- self$`close_bid`
      listObject[["close_ask"]] <- self$`close_ask`
      listObject[["volume"]] <- self$`volume`
      listObject[["volume_bid"]] <- self$`volume_bid`
      listObject[["volume_ask"]] <- self$`volume_ask`
      listObject[["trades"]] <- self$`trades`
      listObject[["open_interest"]] <- self$`open_interest`
      listObject[["open_interest_change"]] <- self$`open_interest_change`
      listObject[["next_day_open_interest"]] <- self$`next_day_open_interest`
      listObject[["implied_volatility"]] <- self$`implied_volatility`
      listObject[["implied_volatility_change"]] <- self$`implied_volatility_change`
      listObject[["delta"]] <- self$`delta`
      return(listObject)
    }
  )
)
