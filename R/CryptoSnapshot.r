# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.8.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' CryptoSnapshot Class
#'
#' @field last_updated 
#' @field bid 
#' @field bid_size 
#' @field ask 
#' @field ask_size 
#' @field change 
#' @field change_percent 
#' @field volume 
#' @field open 
#' @field high 
#' @field low 
#' @field last_trade_side 
#' @field last_trade_time 
#' @field last_trade_price 
#' @field last_trade_size 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CryptoSnapshot <- R6::R6Class(
  'CryptoSnapshot',
  public = list(
    `last_updated` = NA,
    `bid` = NA,
    `bid_size` = NA,
    `ask` = NA,
    `ask_size` = NA,
    `change` = NA,
    `change_percent` = NA,
    `volume` = NA,
    `open` = NA,
    `high` = NA,
    `low` = NA,
    `last_trade_side` = NA,
    `last_trade_time` = NA,
    `last_trade_price` = NA,
    `last_trade_size` = NA,
    initialize = function(`last_updated`, `bid`, `bid_size`, `ask`, `ask_size`, `change`, `change_percent`, `volume`, `open`, `high`, `low`, `last_trade_side`, `last_trade_time`, `last_trade_price`, `last_trade_size`){
      if (!missing(`last_updated`)) {
        self$`last_updated` <- `last_updated`
      }
      if (!missing(`bid`)) {
        self$`bid` <- `bid`
      }
      if (!missing(`bid_size`)) {
        self$`bid_size` <- `bid_size`
      }
      if (!missing(`ask`)) {
        self$`ask` <- `ask`
      }
      if (!missing(`ask_size`)) {
        self$`ask_size` <- `ask_size`
      }
      if (!missing(`change`)) {
        self$`change` <- `change`
      }
      if (!missing(`change_percent`)) {
        self$`change_percent` <- `change_percent`
      }
      if (!missing(`volume`)) {
        self$`volume` <- `volume`
      }
      if (!missing(`open`)) {
        self$`open` <- `open`
      }
      if (!missing(`high`)) {
        self$`high` <- `high`
      }
      if (!missing(`low`)) {
        self$`low` <- `low`
      }
      if (!missing(`last_trade_side`)) {
        self$`last_trade_side` <- `last_trade_side`
      }
      if (!missing(`last_trade_time`)) {
        self$`last_trade_time` <- `last_trade_time`
      }
      if (!missing(`last_trade_price`)) {
        self$`last_trade_price` <- `last_trade_price`
      }
      if (!missing(`last_trade_size`)) {
        self$`last_trade_size` <- `last_trade_size`
      }
    },
    toJSON = function() {
      CryptoSnapshotObject <- list()
      if (!is.null(self$`last_updated`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`last_updated`) && ((length(self$`last_updated`) == 0) || ((length(self$`last_updated`) != 0 && R6::is.R6(self$`last_updated`[[1]]))))) {
          CryptoSnapshotObject[['last_updated']] <- lapply(self$`last_updated`, function(x) x$toJSON())
        } else {
          CryptoSnapshotObject[['last_updated']] <- jsonlite::toJSON(self$`last_updated`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`bid`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`bid`) && ((length(self$`bid`) == 0) || ((length(self$`bid`) != 0 && R6::is.R6(self$`bid`[[1]]))))) {
          CryptoSnapshotObject[['bid']] <- lapply(self$`bid`, function(x) x$toJSON())
        } else {
          CryptoSnapshotObject[['bid']] <- jsonlite::toJSON(self$`bid`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`bid_size`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`bid_size`) && ((length(self$`bid_size`) == 0) || ((length(self$`bid_size`) != 0 && R6::is.R6(self$`bid_size`[[1]]))))) {
          CryptoSnapshotObject[['bid_size']] <- lapply(self$`bid_size`, function(x) x$toJSON())
        } else {
          CryptoSnapshotObject[['bid_size']] <- jsonlite::toJSON(self$`bid_size`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`ask`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`ask`) && ((length(self$`ask`) == 0) || ((length(self$`ask`) != 0 && R6::is.R6(self$`ask`[[1]]))))) {
          CryptoSnapshotObject[['ask']] <- lapply(self$`ask`, function(x) x$toJSON())
        } else {
          CryptoSnapshotObject[['ask']] <- jsonlite::toJSON(self$`ask`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`ask_size`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`ask_size`) && ((length(self$`ask_size`) == 0) || ((length(self$`ask_size`) != 0 && R6::is.R6(self$`ask_size`[[1]]))))) {
          CryptoSnapshotObject[['ask_size']] <- lapply(self$`ask_size`, function(x) x$toJSON())
        } else {
          CryptoSnapshotObject[['ask_size']] <- jsonlite::toJSON(self$`ask_size`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`change`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`change`) && ((length(self$`change`) == 0) || ((length(self$`change`) != 0 && R6::is.R6(self$`change`[[1]]))))) {
          CryptoSnapshotObject[['change']] <- lapply(self$`change`, function(x) x$toJSON())
        } else {
          CryptoSnapshotObject[['change']] <- jsonlite::toJSON(self$`change`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`change_percent`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`change_percent`) && ((length(self$`change_percent`) == 0) || ((length(self$`change_percent`) != 0 && R6::is.R6(self$`change_percent`[[1]]))))) {
          CryptoSnapshotObject[['change_percent']] <- lapply(self$`change_percent`, function(x) x$toJSON())
        } else {
          CryptoSnapshotObject[['change_percent']] <- jsonlite::toJSON(self$`change_percent`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`volume`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`volume`) && ((length(self$`volume`) == 0) || ((length(self$`volume`) != 0 && R6::is.R6(self$`volume`[[1]]))))) {
          CryptoSnapshotObject[['volume']] <- lapply(self$`volume`, function(x) x$toJSON())
        } else {
          CryptoSnapshotObject[['volume']] <- jsonlite::toJSON(self$`volume`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`open`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`open`) && ((length(self$`open`) == 0) || ((length(self$`open`) != 0 && R6::is.R6(self$`open`[[1]]))))) {
          CryptoSnapshotObject[['open']] <- lapply(self$`open`, function(x) x$toJSON())
        } else {
          CryptoSnapshotObject[['open']] <- jsonlite::toJSON(self$`open`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`high`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`high`) && ((length(self$`high`) == 0) || ((length(self$`high`) != 0 && R6::is.R6(self$`high`[[1]]))))) {
          CryptoSnapshotObject[['high']] <- lapply(self$`high`, function(x) x$toJSON())
        } else {
          CryptoSnapshotObject[['high']] <- jsonlite::toJSON(self$`high`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`low`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`low`) && ((length(self$`low`) == 0) || ((length(self$`low`) != 0 && R6::is.R6(self$`low`[[1]]))))) {
          CryptoSnapshotObject[['low']] <- lapply(self$`low`, function(x) x$toJSON())
        } else {
          CryptoSnapshotObject[['low']] <- jsonlite::toJSON(self$`low`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`last_trade_side`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`last_trade_side`) && ((length(self$`last_trade_side`) == 0) || ((length(self$`last_trade_side`) != 0 && R6::is.R6(self$`last_trade_side`[[1]]))))) {
          CryptoSnapshotObject[['last_trade_side']] <- lapply(self$`last_trade_side`, function(x) x$toJSON())
        } else {
          CryptoSnapshotObject[['last_trade_side']] <- jsonlite::toJSON(self$`last_trade_side`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`last_trade_time`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`last_trade_time`) && ((length(self$`last_trade_time`) == 0) || ((length(self$`last_trade_time`) != 0 && R6::is.R6(self$`last_trade_time`[[1]]))))) {
          CryptoSnapshotObject[['last_trade_time']] <- lapply(self$`last_trade_time`, function(x) x$toJSON())
        } else {
          CryptoSnapshotObject[['last_trade_time']] <- jsonlite::toJSON(self$`last_trade_time`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`last_trade_price`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`last_trade_price`) && ((length(self$`last_trade_price`) == 0) || ((length(self$`last_trade_price`) != 0 && R6::is.R6(self$`last_trade_price`[[1]]))))) {
          CryptoSnapshotObject[['last_trade_price']] <- lapply(self$`last_trade_price`, function(x) x$toJSON())
        } else {
          CryptoSnapshotObject[['last_trade_price']] <- jsonlite::toJSON(self$`last_trade_price`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`last_trade_size`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`last_trade_size`) && ((length(self$`last_trade_size`) == 0) || ((length(self$`last_trade_size`) != 0 && R6::is.R6(self$`last_trade_size`[[1]]))))) {
          CryptoSnapshotObject[['last_trade_size']] <- lapply(self$`last_trade_size`, function(x) x$toJSON())
        } else {
          CryptoSnapshotObject[['last_trade_size']] <- jsonlite::toJSON(self$`last_trade_size`, auto_unbox = TRUE)
        }
      }

      CryptoSnapshotObject
    },
    fromJSON = function(CryptoSnapshotJson) {
      CryptoSnapshotObject <- jsonlite::fromJSON(CryptoSnapshotJson)
      if (!is.null(CryptoSnapshotObject$`last_updated`)) {
        self$`last_updated` <- CryptoSnapshotObject$`last_updated`
      }
      if (!is.null(CryptoSnapshotObject$`bid`)) {
        self$`bid` <- CryptoSnapshotObject$`bid`
      }
      if (!is.null(CryptoSnapshotObject$`bid_size`)) {
        self$`bid_size` <- CryptoSnapshotObject$`bid_size`
      }
      if (!is.null(CryptoSnapshotObject$`ask`)) {
        self$`ask` <- CryptoSnapshotObject$`ask`
      }
      if (!is.null(CryptoSnapshotObject$`ask_size`)) {
        self$`ask_size` <- CryptoSnapshotObject$`ask_size`
      }
      if (!is.null(CryptoSnapshotObject$`change`)) {
        self$`change` <- CryptoSnapshotObject$`change`
      }
      if (!is.null(CryptoSnapshotObject$`change_percent`)) {
        self$`change_percent` <- CryptoSnapshotObject$`change_percent`
      }
      if (!is.null(CryptoSnapshotObject$`volume`)) {
        self$`volume` <- CryptoSnapshotObject$`volume`
      }
      if (!is.null(CryptoSnapshotObject$`open`)) {
        self$`open` <- CryptoSnapshotObject$`open`
      }
      if (!is.null(CryptoSnapshotObject$`high`)) {
        self$`high` <- CryptoSnapshotObject$`high`
      }
      if (!is.null(CryptoSnapshotObject$`low`)) {
        self$`low` <- CryptoSnapshotObject$`low`
      }
      if (!is.null(CryptoSnapshotObject$`last_trade_side`)) {
        self$`last_trade_side` <- CryptoSnapshotObject$`last_trade_side`
      }
      if (!is.null(CryptoSnapshotObject$`last_trade_time`)) {
        self$`last_trade_time` <- CryptoSnapshotObject$`last_trade_time`
      }
      if (!is.null(CryptoSnapshotObject$`last_trade_price`)) {
        self$`last_trade_price` <- CryptoSnapshotObject$`last_trade_price`
      }
      if (!is.null(CryptoSnapshotObject$`last_trade_size`)) {
        self$`last_trade_size` <- CryptoSnapshotObject$`last_trade_size`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(CryptoSnapshotJson) {
      CryptoSnapshotObject <- jsonlite::fromJSON(CryptoSnapshotJson, simplifyDataFrame = FALSE)
      self$setFromList(CryptoSnapshotObject)
    },
    setFromList = function(listObject) {
      if (!is.null(listObject$`last_updated`)) {
        self$`last_updated` <- listObject$`last_updated`
      }
      else {
        self$`last_updated` <- NA 
      }

      if (!is.null(listObject$`bid`)) {
        self$`bid` <- listObject$`bid`
      }
      else {
        self$`bid` <- NA 
      }

      if (!is.null(listObject$`bid_size`)) {
        self$`bid_size` <- listObject$`bid_size`
      }
      else {
        self$`bid_size` <- NA 
      }

      if (!is.null(listObject$`ask`)) {
        self$`ask` <- listObject$`ask`
      }
      else {
        self$`ask` <- NA 
      }

      if (!is.null(listObject$`ask_size`)) {
        self$`ask_size` <- listObject$`ask_size`
      }
      else {
        self$`ask_size` <- NA 
      }

      if (!is.null(listObject$`change`)) {
        self$`change` <- listObject$`change`
      }
      else {
        self$`change` <- NA 
      }

      if (!is.null(listObject$`change_percent`)) {
        self$`change_percent` <- listObject$`change_percent`
      }
      else {
        self$`change_percent` <- NA 
      }

      if (!is.null(listObject$`volume`)) {
        self$`volume` <- listObject$`volume`
      }
      else {
        self$`volume` <- NA 
      }

      if (!is.null(listObject$`open`)) {
        self$`open` <- listObject$`open`
      }
      else {
        self$`open` <- NA 
      }

      if (!is.null(listObject$`high`)) {
        self$`high` <- listObject$`high`
      }
      else {
        self$`high` <- NA 
      }

      if (!is.null(listObject$`low`)) {
        self$`low` <- listObject$`low`
      }
      else {
        self$`low` <- NA 
      }

      if (!is.null(listObject$`last_trade_side`)) {
        self$`last_trade_side` <- listObject$`last_trade_side`
      }
      else {
        self$`last_trade_side` <- NA 
      }

      if (!is.null(listObject$`last_trade_time`)) {
        self$`last_trade_time` <- listObject$`last_trade_time`
      }
      else {
        self$`last_trade_time` <- NA 
      }

      if (!is.null(listObject$`last_trade_price`)) {
        self$`last_trade_price` <- listObject$`last_trade_price`
      }
      else {
        self$`last_trade_price` <- NA 
      }

      if (!is.null(listObject$`last_trade_size`)) {
        self$`last_trade_size` <- listObject$`last_trade_size`
      }
      else {
        self$`last_trade_size` <- NA 
      }

    },
    getAsList = function() {
      listObject = list()
      listObject[["last_updated"]] <- self$`last_updated`
      listObject[["bid"]] <- self$`bid`
      listObject[["bid_size"]] <- self$`bid_size`
      listObject[["ask"]] <- self$`ask`
      listObject[["ask_size"]] <- self$`ask_size`
      listObject[["change"]] <- self$`change`
      listObject[["change_percent"]] <- self$`change_percent`
      listObject[["volume"]] <- self$`volume`
      listObject[["open"]] <- self$`open`
      listObject[["high"]] <- self$`high`
      listObject[["low"]] <- self$`low`
      listObject[["last_trade_side"]] <- self$`last_trade_side`
      listObject[["last_trade_time"]] <- self$`last_trade_time`
      listObject[["last_trade_price"]] <- self$`last_trade_price`
      listObject[["last_trade_size"]] <- self$`last_trade_size`
      return(listObject)
    }
  )
)
