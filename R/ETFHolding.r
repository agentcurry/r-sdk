# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.17.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ETFHolding Class
#'
#' @field as_of_date 
#' @field name 
#' @field ticker 
#' @field type 
#' @field composite_figi 
#' @field isin 
#' @field ric 
#' @field sedol 
#' @field face 
#' @field coupon 
#' @field market_value_held 
#' @field notional_value 
#' @field maturity 
#' @field quantity_held 
#' @field weighting 
#' @field quantity_units 
#' @field quantity_per_share 
#' @field contract_expiry_date 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ETFHolding <- R6::R6Class(
  'ETFHolding',
  public = list(
    `as_of_date` = NA,
    `name` = NA,
    `ticker` = NA,
    `type` = NA,
    `composite_figi` = NA,
    `isin` = NA,
    `ric` = NA,
    `sedol` = NA,
    `face` = NA,
    `coupon` = NA,
    `market_value_held` = NA,
    `notional_value` = NA,
    `maturity` = NA,
    `quantity_held` = NA,
    `weighting` = NA,
    `quantity_units` = NA,
    `quantity_per_share` = NA,
    `contract_expiry_date` = NA,
    initialize = function(`as_of_date`, `name`, `ticker`, `type`, `composite_figi`, `isin`, `ric`, `sedol`, `face`, `coupon`, `market_value_held`, `notional_value`, `maturity`, `quantity_held`, `weighting`, `quantity_units`, `quantity_per_share`, `contract_expiry_date`){
      if (!missing(`as_of_date`)) {
        self$`as_of_date` <- `as_of_date`
      }
      if (!missing(`name`)) {
        self$`name` <- `name`
      }
      if (!missing(`ticker`)) {
        self$`ticker` <- `ticker`
      }
      if (!missing(`type`)) {
        self$`type` <- `type`
      }
      if (!missing(`composite_figi`)) {
        self$`composite_figi` <- `composite_figi`
      }
      if (!missing(`isin`)) {
        self$`isin` <- `isin`
      }
      if (!missing(`ric`)) {
        self$`ric` <- `ric`
      }
      if (!missing(`sedol`)) {
        self$`sedol` <- `sedol`
      }
      if (!missing(`face`)) {
        self$`face` <- `face`
      }
      if (!missing(`coupon`)) {
        self$`coupon` <- `coupon`
      }
      if (!missing(`market_value_held`)) {
        self$`market_value_held` <- `market_value_held`
      }
      if (!missing(`notional_value`)) {
        self$`notional_value` <- `notional_value`
      }
      if (!missing(`maturity`)) {
        self$`maturity` <- `maturity`
      }
      if (!missing(`quantity_held`)) {
        self$`quantity_held` <- `quantity_held`
      }
      if (!missing(`weighting`)) {
        self$`weighting` <- `weighting`
      }
      if (!missing(`quantity_units`)) {
        self$`quantity_units` <- `quantity_units`
      }
      if (!missing(`quantity_per_share`)) {
        self$`quantity_per_share` <- `quantity_per_share`
      }
      if (!missing(`contract_expiry_date`)) {
        self$`contract_expiry_date` <- `contract_expiry_date`
      }
    },
    toJSON = function() {
      ETFHoldingObject <- list()
      if (!is.null(self$`as_of_date`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`as_of_date`) && ((length(self$`as_of_date`) == 0) || ((length(self$`as_of_date`) != 0 && R6::is.R6(self$`as_of_date`[[1]]))))) {
          ETFHoldingObject[['as_of_date']] <- lapply(self$`as_of_date`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['as_of_date']] <- jsonlite::toJSON(self$`as_of_date`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`name`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`name`) && ((length(self$`name`) == 0) || ((length(self$`name`) != 0 && R6::is.R6(self$`name`[[1]]))))) {
          ETFHoldingObject[['name']] <- lapply(self$`name`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['name']] <- jsonlite::toJSON(self$`name`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`ticker`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`ticker`) && ((length(self$`ticker`) == 0) || ((length(self$`ticker`) != 0 && R6::is.R6(self$`ticker`[[1]]))))) {
          ETFHoldingObject[['ticker']] <- lapply(self$`ticker`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['ticker']] <- jsonlite::toJSON(self$`ticker`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`type`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`type`) && ((length(self$`type`) == 0) || ((length(self$`type`) != 0 && R6::is.R6(self$`type`[[1]]))))) {
          ETFHoldingObject[['type']] <- lapply(self$`type`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['type']] <- jsonlite::toJSON(self$`type`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`composite_figi`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`composite_figi`) && ((length(self$`composite_figi`) == 0) || ((length(self$`composite_figi`) != 0 && R6::is.R6(self$`composite_figi`[[1]]))))) {
          ETFHoldingObject[['composite_figi']] <- lapply(self$`composite_figi`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['composite_figi']] <- jsonlite::toJSON(self$`composite_figi`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`isin`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`isin`) && ((length(self$`isin`) == 0) || ((length(self$`isin`) != 0 && R6::is.R6(self$`isin`[[1]]))))) {
          ETFHoldingObject[['isin']] <- lapply(self$`isin`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['isin']] <- jsonlite::toJSON(self$`isin`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`ric`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`ric`) && ((length(self$`ric`) == 0) || ((length(self$`ric`) != 0 && R6::is.R6(self$`ric`[[1]]))))) {
          ETFHoldingObject[['ric']] <- lapply(self$`ric`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['ric']] <- jsonlite::toJSON(self$`ric`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`sedol`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`sedol`) && ((length(self$`sedol`) == 0) || ((length(self$`sedol`) != 0 && R6::is.R6(self$`sedol`[[1]]))))) {
          ETFHoldingObject[['sedol']] <- lapply(self$`sedol`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['sedol']] <- jsonlite::toJSON(self$`sedol`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`face`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`face`) && ((length(self$`face`) == 0) || ((length(self$`face`) != 0 && R6::is.R6(self$`face`[[1]]))))) {
          ETFHoldingObject[['face']] <- lapply(self$`face`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['face']] <- jsonlite::toJSON(self$`face`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`coupon`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`coupon`) && ((length(self$`coupon`) == 0) || ((length(self$`coupon`) != 0 && R6::is.R6(self$`coupon`[[1]]))))) {
          ETFHoldingObject[['coupon']] <- lapply(self$`coupon`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['coupon']] <- jsonlite::toJSON(self$`coupon`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`market_value_held`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`market_value_held`) && ((length(self$`market_value_held`) == 0) || ((length(self$`market_value_held`) != 0 && R6::is.R6(self$`market_value_held`[[1]]))))) {
          ETFHoldingObject[['market_value_held']] <- lapply(self$`market_value_held`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['market_value_held']] <- jsonlite::toJSON(self$`market_value_held`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`notional_value`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`notional_value`) && ((length(self$`notional_value`) == 0) || ((length(self$`notional_value`) != 0 && R6::is.R6(self$`notional_value`[[1]]))))) {
          ETFHoldingObject[['notional_value']] <- lapply(self$`notional_value`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['notional_value']] <- jsonlite::toJSON(self$`notional_value`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`maturity`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`maturity`) && ((length(self$`maturity`) == 0) || ((length(self$`maturity`) != 0 && R6::is.R6(self$`maturity`[[1]]))))) {
          ETFHoldingObject[['maturity']] <- lapply(self$`maturity`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['maturity']] <- jsonlite::toJSON(self$`maturity`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`quantity_held`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`quantity_held`) && ((length(self$`quantity_held`) == 0) || ((length(self$`quantity_held`) != 0 && R6::is.R6(self$`quantity_held`[[1]]))))) {
          ETFHoldingObject[['quantity_held']] <- lapply(self$`quantity_held`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['quantity_held']] <- jsonlite::toJSON(self$`quantity_held`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`weighting`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`weighting`) && ((length(self$`weighting`) == 0) || ((length(self$`weighting`) != 0 && R6::is.R6(self$`weighting`[[1]]))))) {
          ETFHoldingObject[['weighting']] <- lapply(self$`weighting`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['weighting']] <- jsonlite::toJSON(self$`weighting`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`quantity_units`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`quantity_units`) && ((length(self$`quantity_units`) == 0) || ((length(self$`quantity_units`) != 0 && R6::is.R6(self$`quantity_units`[[1]]))))) {
          ETFHoldingObject[['quantity_units']] <- lapply(self$`quantity_units`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['quantity_units']] <- jsonlite::toJSON(self$`quantity_units`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`quantity_per_share`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`quantity_per_share`) && ((length(self$`quantity_per_share`) == 0) || ((length(self$`quantity_per_share`) != 0 && R6::is.R6(self$`quantity_per_share`[[1]]))))) {
          ETFHoldingObject[['quantity_per_share']] <- lapply(self$`quantity_per_share`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['quantity_per_share']] <- jsonlite::toJSON(self$`quantity_per_share`, auto_unbox = TRUE)
        }
      }
      if (!is.null(self$`contract_expiry_date`)) {
        # If the object is an empty list or a list of R6 Objects
        if (is.list(self$`contract_expiry_date`) && ((length(self$`contract_expiry_date`) == 0) || ((length(self$`contract_expiry_date`) != 0 && R6::is.R6(self$`contract_expiry_date`[[1]]))))) {
          ETFHoldingObject[['contract_expiry_date']] <- lapply(self$`contract_expiry_date`, function(x) x$toJSON())
        } else {
          ETFHoldingObject[['contract_expiry_date']] <- jsonlite::toJSON(self$`contract_expiry_date`, auto_unbox = TRUE)
        }
      }

      ETFHoldingObject
    },
    fromJSON = function(ETFHoldingJson) {
      ETFHoldingObject <- jsonlite::fromJSON(ETFHoldingJson)
      if (!is.null(ETFHoldingObject$`as_of_date`)) {
        self$`as_of_date` <- ETFHoldingObject$`as_of_date`
      }
      if (!is.null(ETFHoldingObject$`name`)) {
        self$`name` <- ETFHoldingObject$`name`
      }
      if (!is.null(ETFHoldingObject$`ticker`)) {
        self$`ticker` <- ETFHoldingObject$`ticker`
      }
      if (!is.null(ETFHoldingObject$`type`)) {
        self$`type` <- ETFHoldingObject$`type`
      }
      if (!is.null(ETFHoldingObject$`composite_figi`)) {
        self$`composite_figi` <- ETFHoldingObject$`composite_figi`
      }
      if (!is.null(ETFHoldingObject$`isin`)) {
        self$`isin` <- ETFHoldingObject$`isin`
      }
      if (!is.null(ETFHoldingObject$`ric`)) {
        self$`ric` <- ETFHoldingObject$`ric`
      }
      if (!is.null(ETFHoldingObject$`sedol`)) {
        self$`sedol` <- ETFHoldingObject$`sedol`
      }
      if (!is.null(ETFHoldingObject$`face`)) {
        self$`face` <- ETFHoldingObject$`face`
      }
      if (!is.null(ETFHoldingObject$`coupon`)) {
        self$`coupon` <- ETFHoldingObject$`coupon`
      }
      if (!is.null(ETFHoldingObject$`market_value_held`)) {
        self$`market_value_held` <- ETFHoldingObject$`market_value_held`
      }
      if (!is.null(ETFHoldingObject$`notional_value`)) {
        self$`notional_value` <- ETFHoldingObject$`notional_value`
      }
      if (!is.null(ETFHoldingObject$`maturity`)) {
        self$`maturity` <- ETFHoldingObject$`maturity`
      }
      if (!is.null(ETFHoldingObject$`quantity_held`)) {
        self$`quantity_held` <- ETFHoldingObject$`quantity_held`
      }
      if (!is.null(ETFHoldingObject$`weighting`)) {
        self$`weighting` <- ETFHoldingObject$`weighting`
      }
      if (!is.null(ETFHoldingObject$`quantity_units`)) {
        self$`quantity_units` <- ETFHoldingObject$`quantity_units`
      }
      if (!is.null(ETFHoldingObject$`quantity_per_share`)) {
        self$`quantity_per_share` <- ETFHoldingObject$`quantity_per_share`
      }
      if (!is.null(ETFHoldingObject$`contract_expiry_date`)) {
        self$`contract_expiry_date` <- ETFHoldingObject$`contract_expiry_date`
      }
    },
    toJSONString = function() {
      jsonlite::toJSON(self$toJSON(), auto_unbox = TRUE, pretty = TRUE)
    },
    fromJSONString = function(ETFHoldingJson) {
      ETFHoldingObject <- jsonlite::fromJSON(ETFHoldingJson, simplifyDataFrame = FALSE)
      self$setFromList(ETFHoldingObject)
    },
    setFromList = function(listObject) {



      if (!is.null(listObject$`as_of_date`)) {
        self$`as_of_date` <- self$`as_of_date` <- as.Date(listObject$`as_of_date`, "%Y-%m-%d")
      }
      else {
        self$`as_of_date` <- NA 
      }





      if (!is.null(listObject$`name`)) {
        self$`name` <- listObject$`name`
      }
      else {
        self$`name` <- NA 
      }

      if (!is.null(listObject$`ticker`)) {
        self$`ticker` <- listObject$`ticker`
      }
      else {
        self$`ticker` <- NA 
      }

      if (!is.null(listObject$`type`)) {
        self$`type` <- listObject$`type`
      }
      else {
        self$`type` <- NA 
      }

      if (!is.null(listObject$`composite_figi`)) {
        self$`composite_figi` <- listObject$`composite_figi`
      }
      else {
        self$`composite_figi` <- NA 
      }

      if (!is.null(listObject$`isin`)) {
        self$`isin` <- listObject$`isin`
      }
      else {
        self$`isin` <- NA 
      }

      if (!is.null(listObject$`ric`)) {
        self$`ric` <- listObject$`ric`
      }
      else {
        self$`ric` <- NA 
      }

      if (!is.null(listObject$`sedol`)) {
        self$`sedol` <- listObject$`sedol`
      }
      else {
        self$`sedol` <- NA 
      }

      if (!is.null(listObject$`face`)) {
        self$`face` <- listObject$`face`
      }
      else {
        self$`face` <- NA 
      }

      if (!is.null(listObject$`coupon`)) {
        self$`coupon` <- listObject$`coupon`
      }
      else {
        self$`coupon` <- NA 
      }

      if (!is.null(listObject$`market_value_held`)) {
        self$`market_value_held` <- listObject$`market_value_held`
      }
      else {
        self$`market_value_held` <- NA 
      }

      if (!is.null(listObject$`notional_value`)) {
        self$`notional_value` <- listObject$`notional_value`
      }
      else {
        self$`notional_value` <- NA 
      }




      if (!is.null(listObject$`maturity`)) {
        self$`maturity` <- self$`maturity` <- as.Date(listObject$`maturity`, "%Y-%m-%d")
      }
      else {
        self$`maturity` <- NA 
      }





      if (!is.null(listObject$`quantity_held`)) {
        self$`quantity_held` <- listObject$`quantity_held`
      }
      else {
        self$`quantity_held` <- NA 
      }

      if (!is.null(listObject$`weighting`)) {
        self$`weighting` <- listObject$`weighting`
      }
      else {
        self$`weighting` <- NA 
      }

      if (!is.null(listObject$`quantity_units`)) {
        self$`quantity_units` <- listObject$`quantity_units`
      }
      else {
        self$`quantity_units` <- NA 
      }

      if (!is.null(listObject$`quantity_per_share`)) {
        self$`quantity_per_share` <- listObject$`quantity_per_share`
      }
      else {
        self$`quantity_per_share` <- NA 
      }




      if (!is.null(listObject$`contract_expiry_date`)) {
        self$`contract_expiry_date` <- self$`contract_expiry_date` <- as.Date(listObject$`contract_expiry_date`, "%Y-%m-%d")
      }
      else {
        self$`contract_expiry_date` <- NA 
      }





    },
    getAsList = function() {
      listObject = list()

      listObject[["as_of_date"]] <- self$`as_of_date`



        
      listObject[["name"]] <- self$`name`
      listObject[["ticker"]] <- self$`ticker`
      listObject[["type"]] <- self$`type`
      listObject[["composite_figi"]] <- self$`composite_figi`
      listObject[["isin"]] <- self$`isin`
      listObject[["ric"]] <- self$`ric`
      listObject[["sedol"]] <- self$`sedol`
      listObject[["face"]] <- self$`face`
      listObject[["coupon"]] <- self$`coupon`
      listObject[["market_value_held"]] <- self$`market_value_held`
      listObject[["notional_value"]] <- self$`notional_value`

      listObject[["maturity"]] <- self$`maturity`



        
      listObject[["quantity_held"]] <- self$`quantity_held`
      listObject[["weighting"]] <- self$`weighting`
      listObject[["quantity_units"]] <- self$`quantity_units`
      listObject[["quantity_per_share"]] <- self$`quantity_per_share`

      listObject[["contract_expiry_date"]] <- self$`contract_expiry_date`



        
      return(listObject)
    }
  )
)
