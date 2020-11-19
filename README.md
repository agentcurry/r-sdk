# Intrinio R SDK

To get an API key, [sign up here](https://intrinio.com/).

Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.


## Overview

- API version: 2.16.4
- Package version: 1.5.4

The new Intrinio R SDK wraps all API v2 endpoints into an easy-to-use set of classes, methods, and response objects.

The new Intrinio R SDK is not yet available via CRAN and must be installed manually.

Once the new Intrinio R SDK reaches version 1.0.0 it will be uploaded to and made available via CRAN,
superseding the current [Intrinio Stock API Wrapper](https://cran.r-project.org/web/packages/IntrinioStockAPI/index.html).

## Installation


### Prerequisites
You'll need the `devtools` package in order to build the API.

Make sure you have a proper CRAN repository from which you can download packages.

Install the devtools package with the following command in R:

```
> R
> if(!require(devtools)) { install.packages("devtools") }
```

### Installation of the API package

First, clone the Intrinio R-SDK Github repo.

```
> git clone https://github.com/intrinio/r-sdk.git
```

Next, set your working directory to where you've cloned the R SDK and using R, execute:

```
> cd r-sdk
> R
> library(devtools)
> install(".")
```

## Getting Started

Please follow the Installation procedure and then run the following code:

```R
# Setup client
client <- IntrinioSDK::ApiClient$new()

# Configure API key authorization: ApiKeyAuth
client$configuration$apiKey <- "YOUR_API_KEY"

#Configure retries
client$configuration$allowRetries <- TRUE

# Setup API with client
CompanyApi <- IntrinioSDK::CompanyApi$new(client)

# Required params
identifier <- "AAPL" # Character | A Company identifier (Ticker, CIK, LEI, Intrinio ID)

response <- CompanyApi$get_company(identifier)

print(response)
print(response$content)
```

## Retries

By default, automatic retries are enabled for the R SDK. Retries can be enabled/disabled by setting `allowRetries` on the client configuration to `TRUE`/`FALSE` as seen in the code example above.

If set to `TRUE`, all calls to the API will attempt a successful completion up to 5 times with exponential backoff before failing. If set to `FALSE`, calls to the API will attempt one successful call.

## API Endpoints

Complete documentation for the Intrinio R SDK is available on the Intrinio website.

[View Intrinio R SDK Documentation](https://docs.intrinio.com/documentation/r)

A listing of classes and methods is also provided below:

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*IntrinioSDK::BulkDownloadsApi* | [**get_bulk_download_links**](docs/BulkDownloadsApi.md#get_bulk_download_links) | **GET** /bulk_downloads/links | All Links
*IntrinioSDK::CompanyApi* | [**get_all_companies**](docs/CompanyApi.md#get_all_companies) | **GET** /companies | All Companies
*IntrinioSDK::CompanyApi* | [**get_all_company_news**](docs/CompanyApi.md#get_all_company_news) | **GET** /companies/news | All News
*IntrinioSDK::CompanyApi* | [**get_company**](docs/CompanyApi.md#get_company) | **GET** /companies/{identifier} | Lookup Company
*IntrinioSDK::CompanyApi* | [**get_company_data_point_number**](docs/CompanyApi.md#get_company_data_point_number) | **GET** /companies/{identifier}/data_point/{tag}/number | Data Point (Number) for Company
*IntrinioSDK::CompanyApi* | [**get_company_data_point_text**](docs/CompanyApi.md#get_company_data_point_text) | **GET** /companies/{identifier}/data_point/{tag}/text | Data Point (Text) for Company
*IntrinioSDK::CompanyApi* | [**get_company_filings**](docs/CompanyApi.md#get_company_filings) | **GET** /companies/{identifier}/filings | All Filings by Company
*IntrinioSDK::CompanyApi* | [**get_company_fundamentals**](docs/CompanyApi.md#get_company_fundamentals) | **GET** /companies/{identifier}/fundamentals | All Fundamentals by Company
*IntrinioSDK::CompanyApi* | [**get_company_historical_data**](docs/CompanyApi.md#get_company_historical_data) | **GET** /companies/{identifier}/historical_data/{tag} | Historical Data for Company
*IntrinioSDK::CompanyApi* | [**get_company_ipos**](docs/CompanyApi.md#get_company_ipos) | **GET** /companies/ipos | IPOs
*IntrinioSDK::CompanyApi* | [**get_company_news**](docs/CompanyApi.md#get_company_news) | **GET** /companies/{identifier}/news | All News by Company
*IntrinioSDK::CompanyApi* | [**get_company_securities**](docs/CompanyApi.md#get_company_securities) | **GET** /companies/{identifier}/securities | All Securities by Company
*IntrinioSDK::CompanyApi* | [**lookup_company_fundamental**](docs/CompanyApi.md#lookup_company_fundamental) | **GET** /companies/{identifier}/fundamentals/lookup/{statement_code}/{fiscal_year}/{fiscal_period} | Lookup Fundamental by Company
*IntrinioSDK::CompanyApi* | [**search_companies**](docs/CompanyApi.md#search_companies) | **GET** /companies/search | Search Companies
*IntrinioSDK::DataPointApi* | [**get_data_point_number**](docs/DataPointApi.md#get_data_point_number) | **GET** /data_point/{identifier}/{tag}/number | Data Point (Number)
*IntrinioSDK::DataPointApi* | [**get_data_point_text**](docs/DataPointApi.md#get_data_point_text) | **GET** /data_point/{identifier}/{tag}/text | Data Point (Text)
*IntrinioSDK::DataTagApi* | [**get_all_data_tags**](docs/DataTagApi.md#get_all_data_tags) | **GET** /data_tags | All Data Tags
*IntrinioSDK::DataTagApi* | [**get_data_tag_by_id**](docs/DataTagApi.md#get_data_tag_by_id) | **GET** /data_tags/{identifier} | Lookup Data Tag
*IntrinioSDK::DataTagApi* | [**search_data_tags**](docs/DataTagApi.md#search_data_tags) | **GET** /data_tags/search | Search Data Tags
*IntrinioSDK::ETFsApi* | [**get_all_etfs**](docs/ETFsApi.md#get_all_etfs) | **GET** /etfs | All ETFs
*IntrinioSDK::ETFsApi* | [**get_etf**](docs/ETFsApi.md#get_etf) | **GET** /etfs/{identifier} | Lookup ETF
*IntrinioSDK::ETFsApi* | [**get_etf_analytics**](docs/ETFsApi.md#get_etf_analytics) | **GET** /etfs/{identifier}/analytics | ETF Analytics
*IntrinioSDK::ETFsApi* | [**get_etf_holdings**](docs/ETFsApi.md#get_etf_holdings) | **GET** /etfs/{identifier}/holdings | ETF Holdings
*IntrinioSDK::ETFsApi* | [**get_etf_stats**](docs/ETFsApi.md#get_etf_stats) | **GET** /etfs/{identifier}/stats | Exchange Traded Fund (ETF) stats
*IntrinioSDK::ETFsApi* | [**search_etfs**](docs/ETFsApi.md#search_etfs) | **GET** /etfs/search | Search ETFs
*IntrinioSDK::FilingApi* | [**get_all_filings**](docs/FilingApi.md#get_all_filings) | **GET** /filings | All Filings
*IntrinioSDK::FilingApi* | [**get_all_notes**](docs/FilingApi.md#get_all_notes) | **GET** /filings/notes | All Filing Notes
*IntrinioSDK::FilingApi* | [**get_filing_by_id**](docs/FilingApi.md#get_filing_by_id) | **GET** /filings/{id} | Lookup Filing
*IntrinioSDK::FilingApi* | [**get_filing_fundamentals**](docs/FilingApi.md#get_filing_fundamentals) | **GET** /filings/{identifier}/fundamentals | All Fundamentals by Filing
*IntrinioSDK::FilingApi* | [**get_filing_html**](docs/FilingApi.md#get_filing_html) | **GET** /filings/{identifier}/html | Filing Html
*IntrinioSDK::FilingApi* | [**get_filing_text**](docs/FilingApi.md#get_filing_text) | **GET** /filings/{identifier}/text | Filing Text
*IntrinioSDK::FilingApi* | [**get_note**](docs/FilingApi.md#get_note) | **GET** /filings/notes/{identifier} | Filing Note by ID
*IntrinioSDK::FilingApi* | [**get_note_html**](docs/FilingApi.md#get_note_html) | **GET** /filings/notes/{identifier}/html | Filing Note HTML
*IntrinioSDK::FilingApi* | [**get_note_text**](docs/FilingApi.md#get_note_text) | **GET** /filings/notes/{identifier}/text | Filing Note Text
*IntrinioSDK::FilingApi* | [**search_notes**](docs/FilingApi.md#search_notes) | **GET** /filings/notes/search | Search Filing Notes
*IntrinioSDK::ForexApi* | [**get_forex_currencies**](docs/ForexApi.md#get_forex_currencies) | **GET** /forex/currencies | Forex Currencies
*IntrinioSDK::ForexApi* | [**get_forex_pairs**](docs/ForexApi.md#get_forex_pairs) | **GET** /forex/pairs | Forex Currency Pairs
*IntrinioSDK::ForexApi* | [**get_forex_prices**](docs/ForexApi.md#get_forex_prices) | **GET** /forex/prices/{pair}/{timeframe} | Forex Currency Prices
*IntrinioSDK::FundamentalsApi* | [**get_fundamental_by_id**](docs/FundamentalsApi.md#get_fundamental_by_id) | **GET** /fundamentals/{id} | Fundamental by ID
*IntrinioSDK::FundamentalsApi* | [**get_fundamental_reported_financials**](docs/FundamentalsApi.md#get_fundamental_reported_financials) | **GET** /fundamentals/{id}/reported_financials | Reported Financials
*IntrinioSDK::FundamentalsApi* | [**get_fundamental_standardized_financials**](docs/FundamentalsApi.md#get_fundamental_standardized_financials) | **GET** /fundamentals/{id}/standardized_financials | Standardized Financials
*IntrinioSDK::FundamentalsApi* | [**lookup_fundamental**](docs/FundamentalsApi.md#lookup_fundamental) | **GET** /fundamentals/lookup/{identifier}/{statement_code}/{fiscal_year}/{fiscal_period} | Lookup Fundamental
*IntrinioSDK::HistoricalDataApi* | [**get_historical_data**](docs/HistoricalDataApi.md#get_historical_data) | **GET** /historical_data/{identifier}/{tag} | Historical Data
*IntrinioSDK::IndexApi* | [**get_all_economic_indices**](docs/IndexApi.md#get_all_economic_indices) | **GET** /indices/economic | All Economic Indices
*IntrinioSDK::IndexApi* | [**get_all_sic_indices**](docs/IndexApi.md#get_all_sic_indices) | **GET** /indices/sic | All SIC Indices
*IntrinioSDK::IndexApi* | [**get_all_stock_market_indices**](docs/IndexApi.md#get_all_stock_market_indices) | **GET** /indices/stock_market | All Stock Market Indices
*IntrinioSDK::IndexApi* | [**get_economic_index_by_id**](docs/IndexApi.md#get_economic_index_by_id) | **GET** /indices/economic/{identifier} | Lookup Economic Index
*IntrinioSDK::IndexApi* | [**get_economic_index_data_point_number**](docs/IndexApi.md#get_economic_index_data_point_number) | **GET** /indices/economic/{identifier}/data_point/{tag}/number | Data Point (Number) for an Economic Index
*IntrinioSDK::IndexApi* | [**get_economic_index_data_point_text**](docs/IndexApi.md#get_economic_index_data_point_text) | **GET** /indices/economic/{identifier}/data_point/{tag}/text | Data Point (Text) for an Economic Index
*IntrinioSDK::IndexApi* | [**get_economic_index_historical_data**](docs/IndexApi.md#get_economic_index_historical_data) | **GET** /indices/economic/{identifier}/historical_data/{tag} | Historical Data for an Economic Index
*IntrinioSDK::IndexApi* | [**get_sic_index_by_id**](docs/IndexApi.md#get_sic_index_by_id) | **GET** /indices/sic/{identifier} | Lookup SIC Index
*IntrinioSDK::IndexApi* | [**get_sic_index_data_point_number**](docs/IndexApi.md#get_sic_index_data_point_number) | **GET** /indices/sic/{identifier}/data_point/{tag}/number | Data Point (Number) for an SIC Index
*IntrinioSDK::IndexApi* | [**get_sic_index_data_point_text**](docs/IndexApi.md#get_sic_index_data_point_text) | **GET** /indices/sic/{identifier}/data_point/{tag}/text | Data Point (Text) for an SIC Index
*IntrinioSDK::IndexApi* | [**get_sic_index_historical_data**](docs/IndexApi.md#get_sic_index_historical_data) | **GET** /indices/sic/{identifier}/historical_data/{tag} | Historical Data for an SIC Index
*IntrinioSDK::IndexApi* | [**get_stock_market_index_by_id**](docs/IndexApi.md#get_stock_market_index_by_id) | **GET** /indices/stock_market/{identifier} | Lookup Stock Market Index
*IntrinioSDK::IndexApi* | [**get_stock_market_index_data_point_number**](docs/IndexApi.md#get_stock_market_index_data_point_number) | **GET** /indices/stock_market/{identifier}/data_point/{tag}/number | Data Point (Number) for Stock Market Index
*IntrinioSDK::IndexApi* | [**get_stock_market_index_data_point_text**](docs/IndexApi.md#get_stock_market_index_data_point_text) | **GET** /indices/stock_market/{identifier}/data_point/{tag}/text | Data Point (Text) for Stock Market Index
*IntrinioSDK::IndexApi* | [**get_stock_market_index_historical_data**](docs/IndexApi.md#get_stock_market_index_historical_data) | **GET** /indices/stock_market/{identifier}/historical_data/{tag} | Historical Data for Stock Market Index
*IntrinioSDK::IndexApi* | [**search_economic_indices**](docs/IndexApi.md#search_economic_indices) | **GET** /indices/economic/search | Search Economic Indices
*IntrinioSDK::IndexApi* | [**search_sic_indices**](docs/IndexApi.md#search_sic_indices) | **GET** /indices/sic/search | Search SIC Indices
*IntrinioSDK::IndexApi* | [**search_stock_markets_indices**](docs/IndexApi.md#search_stock_markets_indices) | **GET** /indices/stock_market/search | Search Stock Market Indices
*IntrinioSDK::MunicipalityApi* | [**get_all_municipalities**](docs/MunicipalityApi.md#get_all_municipalities) | **GET** /municipalities | All Municipalities
*IntrinioSDK::MunicipalityApi* | [**get_municipality_by_id**](docs/MunicipalityApi.md#get_municipality_by_id) | **GET** /municipalities/{id} | Municipality by ID
*IntrinioSDK::MunicipalityApi* | [**get_municipality_financials**](docs/MunicipalityApi.md#get_municipality_financials) | **GET** /municipalities/{id}/financials | Financials for a Municipality
*IntrinioSDK::OptionsApi* | [**get_options**](docs/OptionsApi.md#get_options) | **GET** /options/{symbol} | Options
*IntrinioSDK::OptionsApi* | [**get_options_chain**](docs/OptionsApi.md#get_options_chain) | **GET** /options/chain/{symbol}/{expiration} | Options Chain
*IntrinioSDK::OptionsApi* | [**get_options_chain_realtime**](docs/OptionsApi.md#get_options_chain_realtime) | **GET** /options/chain/{symbol}/{expiration}/realtime | Options Chain Realtime
*IntrinioSDK::OptionsApi* | [**get_options_expirations**](docs/OptionsApi.md#get_options_expirations) | **GET** /options/expirations/{symbol} | Options Expirations
*IntrinioSDK::OptionsApi* | [**get_options_prices**](docs/OptionsApi.md#get_options_prices) | **GET** /options/prices/{identifier} | Option Prices
*IntrinioSDK::OptionsApi* | [**get_options_prices_realtime**](docs/OptionsApi.md#get_options_prices_realtime) | **GET** /options/prices/{identifier}/realtime | Option Prices Realtime
*IntrinioSDK::SecurityApi* | [**get_all_securities**](docs/SecurityApi.md#get_all_securities) | **GET** /securities | All Securities
*IntrinioSDK::SecurityApi* | [**get_security_by_id**](docs/SecurityApi.md#get_security_by_id) | **GET** /securities/{identifier} | Lookup Security
*IntrinioSDK::SecurityApi* | [**get_security_data_point_number**](docs/SecurityApi.md#get_security_data_point_number) | **GET** /securities/{identifier}/data_point/{tag}/number | Data Point (Number) for Security
*IntrinioSDK::SecurityApi* | [**get_security_data_point_text**](docs/SecurityApi.md#get_security_data_point_text) | **GET** /securities/{identifier}/data_point/{tag}/text | Data Point (Text) for Security
*IntrinioSDK::SecurityApi* | [**get_security_historical_data**](docs/SecurityApi.md#get_security_historical_data) | **GET** /securities/{identifier}/historical_data/{tag} | Historical Data for Security
*IntrinioSDK::SecurityApi* | [**get_security_intraday_prices**](docs/SecurityApi.md#get_security_intraday_prices) | **GET** /securities/{identifier}/prices/intraday | Intraday Stock Prices for Security
*IntrinioSDK::SecurityApi* | [**get_security_latest_dividend_record**](docs/SecurityApi.md#get_security_latest_dividend_record) | **GET** /securities/{identifier}/dividends/latest | Latest Dividend Record for Security
*IntrinioSDK::SecurityApi* | [**get_security_latest_earnings_record**](docs/SecurityApi.md#get_security_latest_earnings_record) | **GET** /securities/{identifier}/earnings/latest | Latest Earnings Record for Security
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_adi**](docs/SecurityApi.md#get_security_price_technicals_adi) | **GET** /securities/{identifier}/prices/technicals/adi | Accumulation/Distribution Index
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_adtv**](docs/SecurityApi.md#get_security_price_technicals_adtv) | **GET** /securities/{identifier}/prices/technicals/adtv | Average Daily Trading Volume
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_adx**](docs/SecurityApi.md#get_security_price_technicals_adx) | **GET** /securities/{identifier}/prices/technicals/adx | Average Directional Index
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_ao**](docs/SecurityApi.md#get_security_price_technicals_ao) | **GET** /securities/{identifier}/prices/technicals/ao | Awesome Oscillator
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_atr**](docs/SecurityApi.md#get_security_price_technicals_atr) | **GET** /securities/{identifier}/prices/technicals/atr | Average True Range
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_bb**](docs/SecurityApi.md#get_security_price_technicals_bb) | **GET** /securities/{identifier}/prices/technicals/bb | Bollinger Bands
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_cci**](docs/SecurityApi.md#get_security_price_technicals_cci) | **GET** /securities/{identifier}/prices/technicals/cci | Commodity Channel Index
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_cmf**](docs/SecurityApi.md#get_security_price_technicals_cmf) | **GET** /securities/{identifier}/prices/technicals/cmf | Chaikin Money Flow
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_dc**](docs/SecurityApi.md#get_security_price_technicals_dc) | **GET** /securities/{identifier}/prices/technicals/dc | Donchian Channel
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_dpo**](docs/SecurityApi.md#get_security_price_technicals_dpo) | **GET** /securities/{identifier}/prices/technicals/dpo | Detrended Price Oscillator
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_eom**](docs/SecurityApi.md#get_security_price_technicals_eom) | **GET** /securities/{identifier}/prices/technicals/eom | Ease of Movement
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_fi**](docs/SecurityApi.md#get_security_price_technicals_fi) | **GET** /securities/{identifier}/prices/technicals/fi | Force Index
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_ichimoku**](docs/SecurityApi.md#get_security_price_technicals_ichimoku) | **GET** /securities/{identifier}/prices/technicals/ichimoku | Ichimoku Kinko Hyo
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_kc**](docs/SecurityApi.md#get_security_price_technicals_kc) | **GET** /securities/{identifier}/prices/technicals/kc | Keltner Channel
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_kst**](docs/SecurityApi.md#get_security_price_technicals_kst) | **GET** /securities/{identifier}/prices/technicals/kst | Know Sure Thing
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_macd**](docs/SecurityApi.md#get_security_price_technicals_macd) | **GET** /securities/{identifier}/prices/technicals/macd | Moving Average Convergence Divergence
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_mfi**](docs/SecurityApi.md#get_security_price_technicals_mfi) | **GET** /securities/{identifier}/prices/technicals/mfi | Money Flow Index
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_mi**](docs/SecurityApi.md#get_security_price_technicals_mi) | **GET** /securities/{identifier}/prices/technicals/mi | Mass Index
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_nvi**](docs/SecurityApi.md#get_security_price_technicals_nvi) | **GET** /securities/{identifier}/prices/technicals/nvi | Negative Volume Index
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_obv**](docs/SecurityApi.md#get_security_price_technicals_obv) | **GET** /securities/{identifier}/prices/technicals/obv | On-balance Volume
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_obv_mean**](docs/SecurityApi.md#get_security_price_technicals_obv_mean) | **GET** /securities/{identifier}/prices/technicals/obv_mean | On-balance Volume Mean
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_rsi**](docs/SecurityApi.md#get_security_price_technicals_rsi) | **GET** /securities/{identifier}/prices/technicals/rsi | Relative Strength Index
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_sma**](docs/SecurityApi.md#get_security_price_technicals_sma) | **GET** /securities/{identifier}/prices/technicals/sma | Simple Moving Average
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_sr**](docs/SecurityApi.md#get_security_price_technicals_sr) | **GET** /securities/{identifier}/prices/technicals/sr | Stochastic Oscillator
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_trix**](docs/SecurityApi.md#get_security_price_technicals_trix) | **GET** /securities/{identifier}/prices/technicals/trix | Triple Exponential Average
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_tsi**](docs/SecurityApi.md#get_security_price_technicals_tsi) | **GET** /securities/{identifier}/prices/technicals/tsi | True Strength Index
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_uo**](docs/SecurityApi.md#get_security_price_technicals_uo) | **GET** /securities/{identifier}/prices/technicals/uo | Ultimate Oscillator
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_vi**](docs/SecurityApi.md#get_security_price_technicals_vi) | **GET** /securities/{identifier}/prices/technicals/vi | Vortex Indicator
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_vpt**](docs/SecurityApi.md#get_security_price_technicals_vpt) | **GET** /securities/{identifier}/prices/technicals/vpt | Volume-price Trend
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_vwap**](docs/SecurityApi.md#get_security_price_technicals_vwap) | **GET** /securities/{identifier}/prices/technicals/vwap | Volume Weighted Average Price
*IntrinioSDK::SecurityApi* | [**get_security_price_technicals_wr**](docs/SecurityApi.md#get_security_price_technicals_wr) | **GET** /securities/{identifier}/prices/technicals/wr | Williams %R
*IntrinioSDK::SecurityApi* | [**get_security_realtime_price**](docs/SecurityApi.md#get_security_realtime_price) | **GET** /securities/{identifier}/prices/realtime | Realtime Stock Price for Security
*IntrinioSDK::SecurityApi* | [**get_security_stock_price_adjustments**](docs/SecurityApi.md#get_security_stock_price_adjustments) | **GET** /securities/{identifier}/prices/adjustments | Stock Price Adjustments by Security
*IntrinioSDK::SecurityApi* | [**get_security_stock_prices**](docs/SecurityApi.md#get_security_stock_prices) | **GET** /securities/{identifier}/prices | Stock Prices by Security
*IntrinioSDK::SecurityApi* | [**get_security_zacks_analyst_ratings**](docs/SecurityApi.md#get_security_zacks_analyst_ratings) | **GET** /securities/{identifier}/zacks/analyst_ratings | Zacks Analyst Ratings
*IntrinioSDK::SecurityApi* | [**get_security_zacks_analyst_ratings_snapshot**](docs/SecurityApi.md#get_security_zacks_analyst_ratings_snapshot) | **GET** /securities/{identifier}/zacks/analyst_ratings/snapshot | Zacks Analyst Ratings Snapshot
*IntrinioSDK::SecurityApi* | [**get_security_zacks_eps_surprises**](docs/SecurityApi.md#get_security_zacks_eps_surprises) | **GET** /securities/{identifier}/zacks/eps_surprises | Zacks EPS Surprises for Security
*IntrinioSDK::SecurityApi* | [**get_security_zacks_sales_surprises**](docs/SecurityApi.md#get_security_zacks_sales_surprises) | **GET** /securities/{identifier}/zacks/sales_surprises | Zacks Sales Surprises for Security
*IntrinioSDK::SecurityApi* | [**screen_securities**](docs/SecurityApi.md#screen_securities) | **POST** /securities/screen | Screen Securities
*IntrinioSDK::SecurityApi* | [**search_securities**](docs/SecurityApi.md#search_securities) | **GET** /securities/search | Search Securities
*IntrinioSDK::StockExchangeApi* | [**get_all_stock_exchanges**](docs/StockExchangeApi.md#get_all_stock_exchanges) | **GET** /stock_exchanges | All Stock Exchanges
*IntrinioSDK::StockExchangeApi* | [**get_stock_exchange_by_id**](docs/StockExchangeApi.md#get_stock_exchange_by_id) | **GET** /stock_exchanges/{identifier} | Lookup Stock Exchange
*IntrinioSDK::StockExchangeApi* | [**get_stock_exchange_price_adjustments**](docs/StockExchangeApi.md#get_stock_exchange_price_adjustments) | **GET** /stock_exchanges/{identifier}/prices/adjustments | Stock Price Adjustments by Exchange
*IntrinioSDK::StockExchangeApi* | [**get_stock_exchange_prices**](docs/StockExchangeApi.md#get_stock_exchange_prices) | **GET** /stock_exchanges/{identifier}/prices | Stock Prices by Exchange
*IntrinioSDK::StockExchangeApi* | [**get_stock_exchange_realtime_prices**](docs/StockExchangeApi.md#get_stock_exchange_realtime_prices) | **GET** /stock_exchanges/{identifier}/prices/realtime | Realtime Stock Prices by Exchange
*IntrinioSDK::StockExchangeApi* | [**get_stock_exchange_securities**](docs/StockExchangeApi.md#get_stock_exchange_securities) | **GET** /stock_exchanges/{identifier}/securities | Securities by Exchange
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_adi**](docs/TechnicalApi.md#get_security_price_technicals_adi) | **GET** /securities/{identifier}/prices/technicals/adi | Accumulation/Distribution Index
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_adtv**](docs/TechnicalApi.md#get_security_price_technicals_adtv) | **GET** /securities/{identifier}/prices/technicals/adtv | Average Daily Trading Volume
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_adx**](docs/TechnicalApi.md#get_security_price_technicals_adx) | **GET** /securities/{identifier}/prices/technicals/adx | Average Directional Index
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_ao**](docs/TechnicalApi.md#get_security_price_technicals_ao) | **GET** /securities/{identifier}/prices/technicals/ao | Awesome Oscillator
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_atr**](docs/TechnicalApi.md#get_security_price_technicals_atr) | **GET** /securities/{identifier}/prices/technicals/atr | Average True Range
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_bb**](docs/TechnicalApi.md#get_security_price_technicals_bb) | **GET** /securities/{identifier}/prices/technicals/bb | Bollinger Bands
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_cci**](docs/TechnicalApi.md#get_security_price_technicals_cci) | **GET** /securities/{identifier}/prices/technicals/cci | Commodity Channel Index
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_cmf**](docs/TechnicalApi.md#get_security_price_technicals_cmf) | **GET** /securities/{identifier}/prices/technicals/cmf | Chaikin Money Flow
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_dc**](docs/TechnicalApi.md#get_security_price_technicals_dc) | **GET** /securities/{identifier}/prices/technicals/dc | Donchian Channel
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_dpo**](docs/TechnicalApi.md#get_security_price_technicals_dpo) | **GET** /securities/{identifier}/prices/technicals/dpo | Detrended Price Oscillator
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_eom**](docs/TechnicalApi.md#get_security_price_technicals_eom) | **GET** /securities/{identifier}/prices/technicals/eom | Ease of Movement
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_fi**](docs/TechnicalApi.md#get_security_price_technicals_fi) | **GET** /securities/{identifier}/prices/technicals/fi | Force Index
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_ichimoku**](docs/TechnicalApi.md#get_security_price_technicals_ichimoku) | **GET** /securities/{identifier}/prices/technicals/ichimoku | Ichimoku Kinko Hyo
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_kc**](docs/TechnicalApi.md#get_security_price_technicals_kc) | **GET** /securities/{identifier}/prices/technicals/kc | Keltner Channel
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_kst**](docs/TechnicalApi.md#get_security_price_technicals_kst) | **GET** /securities/{identifier}/prices/technicals/kst | Know Sure Thing
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_macd**](docs/TechnicalApi.md#get_security_price_technicals_macd) | **GET** /securities/{identifier}/prices/technicals/macd | Moving Average Convergence Divergence
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_mfi**](docs/TechnicalApi.md#get_security_price_technicals_mfi) | **GET** /securities/{identifier}/prices/technicals/mfi | Money Flow Index
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_mi**](docs/TechnicalApi.md#get_security_price_technicals_mi) | **GET** /securities/{identifier}/prices/technicals/mi | Mass Index
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_nvi**](docs/TechnicalApi.md#get_security_price_technicals_nvi) | **GET** /securities/{identifier}/prices/technicals/nvi | Negative Volume Index
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_obv**](docs/TechnicalApi.md#get_security_price_technicals_obv) | **GET** /securities/{identifier}/prices/technicals/obv | On-balance Volume
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_obv_mean**](docs/TechnicalApi.md#get_security_price_technicals_obv_mean) | **GET** /securities/{identifier}/prices/technicals/obv_mean | On-balance Volume Mean
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_rsi**](docs/TechnicalApi.md#get_security_price_technicals_rsi) | **GET** /securities/{identifier}/prices/technicals/rsi | Relative Strength Index
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_sma**](docs/TechnicalApi.md#get_security_price_technicals_sma) | **GET** /securities/{identifier}/prices/technicals/sma | Simple Moving Average
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_sr**](docs/TechnicalApi.md#get_security_price_technicals_sr) | **GET** /securities/{identifier}/prices/technicals/sr | Stochastic Oscillator
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_trix**](docs/TechnicalApi.md#get_security_price_technicals_trix) | **GET** /securities/{identifier}/prices/technicals/trix | Triple Exponential Average
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_tsi**](docs/TechnicalApi.md#get_security_price_technicals_tsi) | **GET** /securities/{identifier}/prices/technicals/tsi | True Strength Index
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_uo**](docs/TechnicalApi.md#get_security_price_technicals_uo) | **GET** /securities/{identifier}/prices/technicals/uo | Ultimate Oscillator
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_vi**](docs/TechnicalApi.md#get_security_price_technicals_vi) | **GET** /securities/{identifier}/prices/technicals/vi | Vortex Indicator
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_vpt**](docs/TechnicalApi.md#get_security_price_technicals_vpt) | **GET** /securities/{identifier}/prices/technicals/vpt | Volume-price Trend
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_vwap**](docs/TechnicalApi.md#get_security_price_technicals_vwap) | **GET** /securities/{identifier}/prices/technicals/vwap | Volume Weighted Average Price
*IntrinioSDK::TechnicalApi* | [**get_security_price_technicals_wr**](docs/TechnicalApi.md#get_security_price_technicals_wr) | **GET** /securities/{identifier}/prices/technicals/wr | Williams %R
*IntrinioSDK::ZacksApi* | [**get_zacks_analyst_ratings**](docs/ZacksApi.md#get_zacks_analyst_ratings) | **GET** /zacks/analyst_ratings | Zacks Analyst Ratings
*IntrinioSDK::ZacksApi* | [**get_zacks_eps_estimates**](docs/ZacksApi.md#get_zacks_eps_estimates) | **GET** /zacks/eps_estimates | Zacks EPS Estimates
*IntrinioSDK::ZacksApi* | [**get_zacks_eps_growth_rates**](docs/ZacksApi.md#get_zacks_eps_growth_rates) | **GET** /zacks/eps_growth_rates | Zacks EPS Growth Rates
*IntrinioSDK::ZacksApi* | [**get_zacks_eps_surprises**](docs/ZacksApi.md#get_zacks_eps_surprises) | **GET** /zacks/eps_surprises | Zacks EPS Surprises
*IntrinioSDK::ZacksApi* | [**get_zacks_etf_holdings**](docs/ZacksApi.md#get_zacks_etf_holdings) | **GET** /zacks/etf_holdings | Zacks ETF Holdings
*IntrinioSDK::ZacksApi* | [**get_zacks_institutional_holding_companies**](docs/ZacksApi.md#get_zacks_institutional_holding_companies) | **GET** /zacks/institutional_holdings/companies | Zacks Institutional Holding Companies
*IntrinioSDK::ZacksApi* | [**get_zacks_institutional_holding_owners**](docs/ZacksApi.md#get_zacks_institutional_holding_owners) | **GET** /zacks/institutional_holdings/owners | Zacks Institutional Holding Owners
*IntrinioSDK::ZacksApi* | [**get_zacks_institutional_holdings**](docs/ZacksApi.md#get_zacks_institutional_holdings) | **GET** /zacks/institutional_holdings | Zacks Institutional Holdings
*IntrinioSDK::ZacksApi* | [**get_zacks_long_term_growth_rates**](docs/ZacksApi.md#get_zacks_long_term_growth_rates) | **GET** /zacks/long_term_growth_rates | Zacks Long Term Growth Rates
*IntrinioSDK::ZacksApi* | [**get_zacks_sales_surprises**](docs/ZacksApi.md#get_zacks_sales_surprises) | **GET** /zacks/sales_surprises | Zacks Sales Surprises
*IntrinioSDK::ZacksApi* | [**get_zacks_target_price_consensuses**](docs/ZacksApi.md#get_zacks_target_price_consensuses) | **GET** /zacks/target_price_consensuses | Zacks Target Price Consensuses


## Models

 - [IntrinioSDK::AccumulationDistributionIndexTechnicalValue](docs/AccumulationDistributionIndexTechnicalValue.md)
 - [IntrinioSDK::ApiResponseBulkDownloadLinks](docs/ApiResponseBulkDownloadLinks.md)
 - [IntrinioSDK::ApiResponseCompanies](docs/ApiResponseCompanies.md)
 - [IntrinioSDK::ApiResponseCompaniesSearch](docs/ApiResponseCompaniesSearch.md)
 - [IntrinioSDK::ApiResponseCompanyFilings](docs/ApiResponseCompanyFilings.md)
 - [IntrinioSDK::ApiResponseCompanyFundamentals](docs/ApiResponseCompanyFundamentals.md)
 - [IntrinioSDK::ApiResponseCompanyHistoricalData](docs/ApiResponseCompanyHistoricalData.md)
 - [IntrinioSDK::ApiResponseCompanyNews](docs/ApiResponseCompanyNews.md)
 - [IntrinioSDK::ApiResponseCompanySecurities](docs/ApiResponseCompanySecurities.md)
 - [IntrinioSDK::ApiResponseDataTags](docs/ApiResponseDataTags.md)
 - [IntrinioSDK::ApiResponseDataTagsSearch](docs/ApiResponseDataTagsSearch.md)
 - [IntrinioSDK::ApiResponseETFHoldings](docs/ApiResponseETFHoldings.md)
 - [IntrinioSDK::ApiResponseETFs](docs/ApiResponseETFs.md)
 - [IntrinioSDK::ApiResponseEconomicIndexHistoricalData](docs/ApiResponseEconomicIndexHistoricalData.md)
 - [IntrinioSDK::ApiResponseEconomicIndices](docs/ApiResponseEconomicIndices.md)
 - [IntrinioSDK::ApiResponseEconomicIndicesSearch](docs/ApiResponseEconomicIndicesSearch.md)
 - [IntrinioSDK::ApiResponseFilingFundamentals](docs/ApiResponseFilingFundamentals.md)
 - [IntrinioSDK::ApiResponseFilingNotes](docs/ApiResponseFilingNotes.md)
 - [IntrinioSDK::ApiResponseFilingNotesSearch](docs/ApiResponseFilingNotesSearch.md)
 - [IntrinioSDK::ApiResponseFilings](docs/ApiResponseFilings.md)
 - [IntrinioSDK::ApiResponseForexCurrencies](docs/ApiResponseForexCurrencies.md)
 - [IntrinioSDK::ApiResponseForexPairs](docs/ApiResponseForexPairs.md)
 - [IntrinioSDK::ApiResponseForexPrices](docs/ApiResponseForexPrices.md)
 - [IntrinioSDK::ApiResponseHistoricalData](docs/ApiResponseHistoricalData.md)
 - [IntrinioSDK::ApiResponseInitialPublicOfferings](docs/ApiResponseInitialPublicOfferings.md)
 - [IntrinioSDK::ApiResponseMunicipalities](docs/ApiResponseMunicipalities.md)
 - [IntrinioSDK::ApiResponseMunicipalitiyFinancials](docs/ApiResponseMunicipalitiyFinancials.md)
 - [IntrinioSDK::ApiResponseNews](docs/ApiResponseNews.md)
 - [IntrinioSDK::ApiResponseOptionPrices](docs/ApiResponseOptionPrices.md)
 - [IntrinioSDK::ApiResponseOptionPricesRealtime](docs/ApiResponseOptionPricesRealtime.md)
 - [IntrinioSDK::ApiResponseOptions](docs/ApiResponseOptions.md)
 - [IntrinioSDK::ApiResponseOptionsChain](docs/ApiResponseOptionsChain.md)
 - [IntrinioSDK::ApiResponseOptionsChainRealtime](docs/ApiResponseOptionsChainRealtime.md)
 - [IntrinioSDK::ApiResponseOptionsExpirations](docs/ApiResponseOptionsExpirations.md)
 - [IntrinioSDK::ApiResponseReportedFinancials](docs/ApiResponseReportedFinancials.md)
 - [IntrinioSDK::ApiResponseSICIndexHistoricalData](docs/ApiResponseSICIndexHistoricalData.md)
 - [IntrinioSDK::ApiResponseSICIndices](docs/ApiResponseSICIndices.md)
 - [IntrinioSDK::ApiResponseSICIndicesSearch](docs/ApiResponseSICIndicesSearch.md)
 - [IntrinioSDK::ApiResponseSecurities](docs/ApiResponseSecurities.md)
 - [IntrinioSDK::ApiResponseSecuritiesSearch](docs/ApiResponseSecuritiesSearch.md)
 - [IntrinioSDK::ApiResponseSecurityAccumulationDistributionIndex](docs/ApiResponseSecurityAccumulationDistributionIndex.md)
 - [IntrinioSDK::ApiResponseSecurityAverageDailyTradingVolume](docs/ApiResponseSecurityAverageDailyTradingVolume.md)
 - [IntrinioSDK::ApiResponseSecurityAverageDirectionalIndex](docs/ApiResponseSecurityAverageDirectionalIndex.md)
 - [IntrinioSDK::ApiResponseSecurityAverageTrueRange](docs/ApiResponseSecurityAverageTrueRange.md)
 - [IntrinioSDK::ApiResponseSecurityAwesomeOscillator](docs/ApiResponseSecurityAwesomeOscillator.md)
 - [IntrinioSDK::ApiResponseSecurityBollingerBands](docs/ApiResponseSecurityBollingerBands.md)
 - [IntrinioSDK::ApiResponseSecurityChaikinMoneyFlow](docs/ApiResponseSecurityChaikinMoneyFlow.md)
 - [IntrinioSDK::ApiResponseSecurityCommodityChannelIndex](docs/ApiResponseSecurityCommodityChannelIndex.md)
 - [IntrinioSDK::ApiResponseSecurityDetrendedPriceOscillator](docs/ApiResponseSecurityDetrendedPriceOscillator.md)
 - [IntrinioSDK::ApiResponseSecurityDonchianChannel](docs/ApiResponseSecurityDonchianChannel.md)
 - [IntrinioSDK::ApiResponseSecurityEaseOfMovement](docs/ApiResponseSecurityEaseOfMovement.md)
 - [IntrinioSDK::ApiResponseSecurityForceIndex](docs/ApiResponseSecurityForceIndex.md)
 - [IntrinioSDK::ApiResponseSecurityHistoricalData](docs/ApiResponseSecurityHistoricalData.md)
 - [IntrinioSDK::ApiResponseSecurityIchimokuKinkoHyo](docs/ApiResponseSecurityIchimokuKinkoHyo.md)
 - [IntrinioSDK::ApiResponseSecurityIntradayPrices](docs/ApiResponseSecurityIntradayPrices.md)
 - [IntrinioSDK::ApiResponseSecurityKeltnerChannel](docs/ApiResponseSecurityKeltnerChannel.md)
 - [IntrinioSDK::ApiResponseSecurityKnowSureThing](docs/ApiResponseSecurityKnowSureThing.md)
 - [IntrinioSDK::ApiResponseSecurityMassIndex](docs/ApiResponseSecurityMassIndex.md)
 - [IntrinioSDK::ApiResponseSecurityMoneyFlowIndex](docs/ApiResponseSecurityMoneyFlowIndex.md)
 - [IntrinioSDK::ApiResponseSecurityMovingAverageConvergenceDivergence](docs/ApiResponseSecurityMovingAverageConvergenceDivergence.md)
 - [IntrinioSDK::ApiResponseSecurityNegativeVolumeIndex](docs/ApiResponseSecurityNegativeVolumeIndex.md)
 - [IntrinioSDK::ApiResponseSecurityOnBalanceVolume](docs/ApiResponseSecurityOnBalanceVolume.md)
 - [IntrinioSDK::ApiResponseSecurityOnBalanceVolumeMean](docs/ApiResponseSecurityOnBalanceVolumeMean.md)
 - [IntrinioSDK::ApiResponseSecurityRelativeStrengthIndex](docs/ApiResponseSecurityRelativeStrengthIndex.md)
 - [IntrinioSDK::ApiResponseSecuritySimpleMovingAverage](docs/ApiResponseSecuritySimpleMovingAverage.md)
 - [IntrinioSDK::ApiResponseSecurityStochasticOscillator](docs/ApiResponseSecurityStochasticOscillator.md)
 - [IntrinioSDK::ApiResponseSecurityStockPriceAdjustments](docs/ApiResponseSecurityStockPriceAdjustments.md)
 - [IntrinioSDK::ApiResponseSecurityStockPrices](docs/ApiResponseSecurityStockPrices.md)
 - [IntrinioSDK::ApiResponseSecurityTripleExponentialAverage](docs/ApiResponseSecurityTripleExponentialAverage.md)
 - [IntrinioSDK::ApiResponseSecurityTrueStrengthIndex](docs/ApiResponseSecurityTrueStrengthIndex.md)
 - [IntrinioSDK::ApiResponseSecurityUltimateOscillator](docs/ApiResponseSecurityUltimateOscillator.md)
 - [IntrinioSDK::ApiResponseSecurityVolumePriceTrend](docs/ApiResponseSecurityVolumePriceTrend.md)
 - [IntrinioSDK::ApiResponseSecurityVolumeWeightedAveragePrice](docs/ApiResponseSecurityVolumeWeightedAveragePrice.md)
 - [IntrinioSDK::ApiResponseSecurityVortexIndicator](docs/ApiResponseSecurityVortexIndicator.md)
 - [IntrinioSDK::ApiResponseSecurityWilliamsR](docs/ApiResponseSecurityWilliamsR.md)
 - [IntrinioSDK::ApiResponseSecurityZacksAnalystRatings](docs/ApiResponseSecurityZacksAnalystRatings.md)
 - [IntrinioSDK::ApiResponseSecurityZacksAnalystRatingsSnapshot](docs/ApiResponseSecurityZacksAnalystRatingsSnapshot.md)
 - [IntrinioSDK::ApiResponseSecurityZacksEPSSurprises](docs/ApiResponseSecurityZacksEPSSurprises.md)
 - [IntrinioSDK::ApiResponseSecurityZacksSalesSurprises](docs/ApiResponseSecurityZacksSalesSurprises.md)
 - [IntrinioSDK::ApiResponseStandardizedFinancials](docs/ApiResponseStandardizedFinancials.md)
 - [IntrinioSDK::ApiResponseStockExchangeRealtimeStockPrices](docs/ApiResponseStockExchangeRealtimeStockPrices.md)
 - [IntrinioSDK::ApiResponseStockExchangeSecurities](docs/ApiResponseStockExchangeSecurities.md)
 - [IntrinioSDK::ApiResponseStockExchangeStockPriceAdjustments](docs/ApiResponseStockExchangeStockPriceAdjustments.md)
 - [IntrinioSDK::ApiResponseStockExchangeStockPrices](docs/ApiResponseStockExchangeStockPrices.md)
 - [IntrinioSDK::ApiResponseStockExchanges](docs/ApiResponseStockExchanges.md)
 - [IntrinioSDK::ApiResponseStockMarketIndexHistoricalData](docs/ApiResponseStockMarketIndexHistoricalData.md)
 - [IntrinioSDK::ApiResponseStockMarketIndices](docs/ApiResponseStockMarketIndices.md)
 - [IntrinioSDK::ApiResponseStockMarketIndicesSearch](docs/ApiResponseStockMarketIndicesSearch.md)
 - [IntrinioSDK::ApiResponseZacksAnalystRatings](docs/ApiResponseZacksAnalystRatings.md)
 - [IntrinioSDK::ApiResponseZacksEPSEstimates](docs/ApiResponseZacksEPSEstimates.md)
 - [IntrinioSDK::ApiResponseZacksEPSGrowthRates](docs/ApiResponseZacksEPSGrowthRates.md)
 - [IntrinioSDK::ApiResponseZacksEPSSurprises](docs/ApiResponseZacksEPSSurprises.md)
 - [IntrinioSDK::ApiResponseZacksETFHoldings](docs/ApiResponseZacksETFHoldings.md)
 - [IntrinioSDK::ApiResponseZacksInstitutionalHoldingCompanies](docs/ApiResponseZacksInstitutionalHoldingCompanies.md)
 - [IntrinioSDK::ApiResponseZacksInstitutionalHoldingOwners](docs/ApiResponseZacksInstitutionalHoldingOwners.md)
 - [IntrinioSDK::ApiResponseZacksInstitutionalHoldings](docs/ApiResponseZacksInstitutionalHoldings.md)
 - [IntrinioSDK::ApiResponseZacksLongTermGrowthRates](docs/ApiResponseZacksLongTermGrowthRates.md)
 - [IntrinioSDK::ApiResponseZacksSalesSurprises](docs/ApiResponseZacksSalesSurprises.md)
 - [IntrinioSDK::ApiResponseZacksTargetPriceConsensuses](docs/ApiResponseZacksTargetPriceConsensuses.md)
 - [IntrinioSDK::AverageDailyTradingVolumeTechnicalValue](docs/AverageDailyTradingVolumeTechnicalValue.md)
 - [IntrinioSDK::AverageDirectionalIndexTechnicalValue](docs/AverageDirectionalIndexTechnicalValue.md)
 - [IntrinioSDK::AverageTrueRangeTechnicalValue](docs/AverageTrueRangeTechnicalValue.md)
 - [IntrinioSDK::AwesomeOscillatorTechnicalValue](docs/AwesomeOscillatorTechnicalValue.md)
 - [IntrinioSDK::BollingerBandsTechnicalValue](docs/BollingerBandsTechnicalValue.md)
 - [IntrinioSDK::BulkDownloadLinks](docs/BulkDownloadLinks.md)
 - [IntrinioSDK::BulkDownloadSummary](docs/BulkDownloadSummary.md)
 - [IntrinioSDK::ChaikinMoneyFlowTechnicalValue](docs/ChaikinMoneyFlowTechnicalValue.md)
 - [IntrinioSDK::CommodityChannelIndexTechnicalValue](docs/CommodityChannelIndexTechnicalValue.md)
 - [IntrinioSDK::Company](docs/Company.md)
 - [IntrinioSDK::CompanyFiling](docs/CompanyFiling.md)
 - [IntrinioSDK::CompanyInitialPublicOffering](docs/CompanyInitialPublicOffering.md)
 - [IntrinioSDK::CompanyNews](docs/CompanyNews.md)
 - [IntrinioSDK::CompanyNewsSummary](docs/CompanyNewsSummary.md)
 - [IntrinioSDK::CompanySummary](docs/CompanySummary.md)
 - [IntrinioSDK::DataTag](docs/DataTag.md)
 - [IntrinioSDK::DataTagSummary](docs/DataTagSummary.md)
 - [IntrinioSDK::DetrendedPriceOscillatorTechnicalValue](docs/DetrendedPriceOscillatorTechnicalValue.md)
 - [IntrinioSDK::DividendRecord](docs/DividendRecord.md)
 - [IntrinioSDK::DonchianChannelTechnicalValue](docs/DonchianChannelTechnicalValue.md)
 - [IntrinioSDK::ETF](docs/ETF.md)
 - [IntrinioSDK::ETFAnalytics](docs/ETFAnalytics.md)
 - [IntrinioSDK::ETFHolding](docs/ETFHolding.md)
 - [IntrinioSDK::ETFStats](docs/ETFStats.md)
 - [IntrinioSDK::ETFSummary](docs/ETFSummary.md)
 - [IntrinioSDK::EarningsRecord](docs/EarningsRecord.md)
 - [IntrinioSDK::EaseOfMovementTechnicalValue](docs/EaseOfMovementTechnicalValue.md)
 - [IntrinioSDK::EconomicIndex](docs/EconomicIndex.md)
 - [IntrinioSDK::EconomicIndexSummary](docs/EconomicIndexSummary.md)
 - [IntrinioSDK::Filing](docs/Filing.md)
 - [IntrinioSDK::FilingNote](docs/FilingNote.md)
 - [IntrinioSDK::FilingNoteFiling](docs/FilingNoteFiling.md)
 - [IntrinioSDK::FilingNoteSummary](docs/FilingNoteSummary.md)
 - [IntrinioSDK::FilingSummary](docs/FilingSummary.md)
 - [IntrinioSDK::ForceIndexTechnicalValue](docs/ForceIndexTechnicalValue.md)
 - [IntrinioSDK::ForexCurrency](docs/ForexCurrency.md)
 - [IntrinioSDK::ForexPair](docs/ForexPair.md)
 - [IntrinioSDK::ForexPrice](docs/ForexPrice.md)
 - [IntrinioSDK::Fundamental](docs/Fundamental.md)
 - [IntrinioSDK::FundamentalSummary](docs/FundamentalSummary.md)
 - [IntrinioSDK::HistoricalData](docs/HistoricalData.md)
 - [IntrinioSDK::IchimokuKinkoHyoTechnicalValue](docs/IchimokuKinkoHyoTechnicalValue.md)
 - [IntrinioSDK::IntradayStockPrice](docs/IntradayStockPrice.md)
 - [IntrinioSDK::KeltnerChannelTechnicalValue](docs/KeltnerChannelTechnicalValue.md)
 - [IntrinioSDK::KnowSureThingTechnicalValue](docs/KnowSureThingTechnicalValue.md)
 - [IntrinioSDK::MassIndexTechnicalValue](docs/MassIndexTechnicalValue.md)
 - [IntrinioSDK::MoneyFlowIndexTechnicalValue](docs/MoneyFlowIndexTechnicalValue.md)
 - [IntrinioSDK::MovingAverageConvergenceDivergenceTechnicalValue](docs/MovingAverageConvergenceDivergenceTechnicalValue.md)
 - [IntrinioSDK::Municipality](docs/Municipality.md)
 - [IntrinioSDK::MunicipalityFinancial](docs/MunicipalityFinancial.md)
 - [IntrinioSDK::NegativeVolumeIndexTechnicalValue](docs/NegativeVolumeIndexTechnicalValue.md)
 - [IntrinioSDK::OnBalanceVolumeMeanTechnicalValue](docs/OnBalanceVolumeMeanTechnicalValue.md)
 - [IntrinioSDK::OnBalanceVolumeTechnicalValue](docs/OnBalanceVolumeTechnicalValue.md)
 - [IntrinioSDK::Option](docs/Option.md)
 - [IntrinioSDK::OptionChain](docs/OptionChain.md)
 - [IntrinioSDK::OptionChainRealtime](docs/OptionChainRealtime.md)
 - [IntrinioSDK::OptionPrice](docs/OptionPrice.md)
 - [IntrinioSDK::OptionPriceRealtime](docs/OptionPriceRealtime.md)
 - [IntrinioSDK::OptionRealtime](docs/OptionRealtime.md)
 - [IntrinioSDK::RealtimeStockPrice](docs/RealtimeStockPrice.md)
 - [IntrinioSDK::RealtimeStockPriceSecurity](docs/RealtimeStockPriceSecurity.md)
 - [IntrinioSDK::RelativeStrengthIndexTechnicalValue](docs/RelativeStrengthIndexTechnicalValue.md)
 - [IntrinioSDK::ReportedFinancial](docs/ReportedFinancial.md)
 - [IntrinioSDK::ReportedFinancialDimension](docs/ReportedFinancialDimension.md)
 - [IntrinioSDK::ReportedTag](docs/ReportedTag.md)
 - [IntrinioSDK::SICIndex](docs/SICIndex.md)
 - [IntrinioSDK::Security](docs/Security.md)
 - [IntrinioSDK::SecurityScreenClause](docs/SecurityScreenClause.md)
 - [IntrinioSDK::SecurityScreenGroup](docs/SecurityScreenGroup.md)
 - [IntrinioSDK::SecurityScreenResult](docs/SecurityScreenResult.md)
 - [IntrinioSDK::SecurityScreenResultData](docs/SecurityScreenResultData.md)
 - [IntrinioSDK::SecuritySummary](docs/SecuritySummary.md)
 - [IntrinioSDK::SimpleMovingAverageTechnicalValue](docs/SimpleMovingAverageTechnicalValue.md)
 - [IntrinioSDK::StandardizedFinancial](docs/StandardizedFinancial.md)
 - [IntrinioSDK::StochasticOscillatorTechnicalValue](docs/StochasticOscillatorTechnicalValue.md)
 - [IntrinioSDK::StockExchange](docs/StockExchange.md)
 - [IntrinioSDK::StockMarketIndex](docs/StockMarketIndex.md)
 - [IntrinioSDK::StockMarketIndexSummary](docs/StockMarketIndexSummary.md)
 - [IntrinioSDK::StockPrice](docs/StockPrice.md)
 - [IntrinioSDK::StockPriceAdjustment](docs/StockPriceAdjustment.md)
 - [IntrinioSDK::StockPriceAdjustmentSummary](docs/StockPriceAdjustmentSummary.md)
 - [IntrinioSDK::StockPriceSummary](docs/StockPriceSummary.md)
 - [IntrinioSDK::TechnicalIndicator](docs/TechnicalIndicator.md)
 - [IntrinioSDK::TripleExponentialAverageTechnicalValue](docs/TripleExponentialAverageTechnicalValue.md)
 - [IntrinioSDK::TrueStrengthIndexTechnicalValue](docs/TrueStrengthIndexTechnicalValue.md)
 - [IntrinioSDK::UltimateOscillatorTechnicalValue](docs/UltimateOscillatorTechnicalValue.md)
 - [IntrinioSDK::VolumePriceTrendTechnicalValue](docs/VolumePriceTrendTechnicalValue.md)
 - [IntrinioSDK::VolumeWeightedAveragePriceValue](docs/VolumeWeightedAveragePriceValue.md)
 - [IntrinioSDK::VortexIndicatorTechnicalValue](docs/VortexIndicatorTechnicalValue.md)
 - [IntrinioSDK::WilliamsRTechnicalValue](docs/WilliamsRTechnicalValue.md)
 - [IntrinioSDK::ZacksAnalystRating](docs/ZacksAnalystRating.md)
 - [IntrinioSDK::ZacksAnalystRatingSnapshot](docs/ZacksAnalystRatingSnapshot.md)
 - [IntrinioSDK::ZacksAnalystRatingSummary](docs/ZacksAnalystRatingSummary.md)
 - [IntrinioSDK::ZacksEPSEstimate](docs/ZacksEPSEstimate.md)
 - [IntrinioSDK::ZacksEPSGrowthRate](docs/ZacksEPSGrowthRate.md)
 - [IntrinioSDK::ZacksEPSSurprise](docs/ZacksEPSSurprise.md)
 - [IntrinioSDK::ZacksEPSSurpriseSummary](docs/ZacksEPSSurpriseSummary.md)
 - [IntrinioSDK::ZacksETFHolding](docs/ZacksETFHolding.md)
 - [IntrinioSDK::ZacksInstitutionalHolding](docs/ZacksInstitutionalHolding.md)
 - [IntrinioSDK::ZacksInstitutionalHoldingCompanyDetail](docs/ZacksInstitutionalHoldingCompanyDetail.md)
 - [IntrinioSDK::ZacksInstitutionalHoldingCompanySummary](docs/ZacksInstitutionalHoldingCompanySummary.md)
 - [IntrinioSDK::ZacksInstitutionalHoldingHistoricalSummary](docs/ZacksInstitutionalHoldingHistoricalSummary.md)
 - [IntrinioSDK::ZacksInstitutionalHoldingOwnerDetail](docs/ZacksInstitutionalHoldingOwnerDetail.md)
 - [IntrinioSDK::ZacksInstitutionalHoldingOwnerSummary](docs/ZacksInstitutionalHoldingOwnerSummary.md)
 - [IntrinioSDK::ZacksLongTermGrowthRate](docs/ZacksLongTermGrowthRate.md)
 - [IntrinioSDK::ZacksSalesSurprise](docs/ZacksSalesSurprise.md)
 - [IntrinioSDK::ZacksSalesSurpriseSummary](docs/ZacksSalesSurpriseSummary.md)
 - [IntrinioSDK::ZacksTargetPriceConsensus](docs/ZacksTargetPriceConsensus.md)

