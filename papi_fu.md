Search
======

Search for Packages using a set of search criteria

| URL | Method | Success Response Code | Error Response Code |
| --- | ------ | --------------------- | ------------------- |
| /offer/package | GET | 200 | *\<\<TODO: See PAPI Connector Error Response Codes\>\>* |


Request query params
--------------------

| Parameter | Value | Description |
| --------- | ----- | ----------- |
| api\_key | string | **Required**. API Authentication Key (may be supplied as api\_key header instead) e.g. cc1885c8-f979-4cc8-91ef-83ddafe33798 |
| start | integer | Start at (for pagination), default is 0 |
| end | integer | End at (for pagination), default is 9 |
| occupation | string/array of strings | Travellers. Format: numberOfAdults,childAge0,childAge1,..childAgeN. Example: 2,7,5. Array represents multiple room request. Defaults to 2 adults |
| context | string | Default thomascook.com. For nl packages request for context=thomascook.nl |
| commercialDestination | string/array of strings | Destination of the package (UK only). Facet code returned in search response. e.g. Balearic\_Islands\_-\_Any = Balearic Islands - Any |
| departureDate | string | Departure date. (Earliest) Departure Date,[Latest Departure Date] Format: YYYYMMDD[,YYYYMMDD] |
| duration | string | Duration of the stay (in nights), can be a number or range. Example 2-7.  Also codes e.g. 101 = Less than 7 nights. |
| depAirport | string | Departure airport or airport grouping code. Refer [Airport Grouping Codes](https://conf.tc-ecom.de/display/OWA/PlayerHub+Codes+Reference#PlayerHubCodesReference-AirportGroupingCodes) to view the code groupings for various contexts. |
| boardType | string/array of strings | Mapped Board Codes. Codes 0-7 for UK maps to Solr codes 0-38. 0-6 for NL |
| stars | string/array of strings | Star rating of the hotel 1-5 |
| sort | string | Sort code. Facet returned in result e.g. price\_asc = Price (lowest to highest) |
| accomType | string/array of strings | Accommodation type, NL only |
| brand | string/array of strings | Code for Holiday Provider e.g. 1 = Airtours |
| priceRange | string/array of strings | Price Range code e.g. 1= \<£200  5 \>=£800 |
| discount | string/array of strings | Discounts code e.g. 3 = 30% - 40% |
| savings | string/array of strings | Savings code e.g. 3 = £200 - £299 |
| resortCategory | string | Resort Category code e.g. Arrecife = Arricife |
| concept | string/array of strings | Concepts e.g. 3 = Adult-Only Hotels, SUN = Sunstar |
| facilities | string/array of strings | e.g. 1 = Wifi/Internet |


Sample Request
--------------

```/offer/package?start=0&end=2&commercialDestination=FAO&occupation=2&departureDate=20140420&key=cc1885c8-f979-4cc8-91ef-83ddafe33798```


Hotel Search
============

Details of a Package

| URL | Method | Success Response Code | Error Response Code |
| --- | ------ | --------------------- | ------------------- |
| /offer/hotels/hotelId | GET | 200 | *\<\<TODO: See PAPI Connector Error Response Codes\>\>* |


Path param
----------

| Parameter | Value | Description |
| --------- | ----- | ----------- |
| hotelId | string | **Required**. Hotel id |



Request query params
--------------------

| Parameter | Value | Description |
| --------- | ----- | ----------- |
| api\_key | string | **Required**. API Authentication Key (may be supplied as api\_key header instead) e.g. cc1885c8-f979-4cc8-91ef-83ddafe33798 |
| occupation | string/array of strings | Travellers. Format: numberOfAdults,childAge0,childAge1,..childAgeN. Example: 2,7,5. Array represents multiple room request. Defaults to 2 adults |
| context | string | Default thomascook.com. For nl packages request for context=thomascook.nl |
| departureDate | string | Departure date. (Earliest) Departure Date,[Latest Departure Date] Format: YYYYMMDD[,YYYYMMDD] |
| duration | string | Duration of the stay (in nights), can be a number or range. Example 2-7.  Also codes e.g. 101 = Less than 7 nights. |
| depAirport | string | Departure airport or airport grouping code. Refer [Airport Grouping Codes](https://conf.tc-ecom.de/display/OWA/PlayerHub+Codes+Reference#PlayerHubCodesReference-AirportGroupingCodes) to view the code groupings for various contexts. |


Details
=======

Details of a Package

| URL | Method | Success Response Code | Error Response Code |
| --- | ------ | --------------------- | ------------------- |
| /offer/package/id/details | GET | 200 | *\<\<TODO: See PAPI Connector Error Response Codes\>\>* |


Path param
----------

| Parameter | Value | Description |
| --------- | ----- | ----------- |
| id | string | **Required**. Package id |


Request query params
--------------------

| Parameter | Value | Description |
| --------- | ----- | ----------- |
| api\_key | string | **Required**. API Authentication Key |
| contentId | string | **Required**. Content id of package |
| context | string | Default en. For de packages request for context=de |
| startDate | string | **Required.** Start date of the package, format YYYYMMDD |
| endDate | string | End date of the package, format YYYYMMDD |
| duration | string | **Required.** Duration of the stay |
| depAirport | string | **Required.** Departure airport or airport grouping code |
| boardType | string | **Required.** Board Type code |
| room | string/array of strings | **Required.** Room specification and occupation |


Sample Request
--------------

```/offer/package/51974/details?contentId=94739A&startDate=20140202&depAirport=STN&duration=2&boardType=GT06-HB&room=ST04-DO%2C2%7C2&context=en&key=cc1885c8-f979-4cc8-91ef-83ddafe33798```


Matrix
======

Matrix details of a Package

| URL | Method | Success Response Code | Error Response Code |
| --- | ------ | --------------------- | ------------------- |
| /offer/package/id/matrix | GET | 200 | *\<\<TODO: See PAPI Connector Error Response Codes\>\>* |


Path param
----------

| Parameter | Value | Description |
| --------- | ----- | ----------- |
| id | string | **Required**. Package id |


Request query params
--------------------

| Parameter | Value | Description |
| --------- | ----- | ----------- |
| api\_key | string | **Required**. API Authentication Key |
| contentId | string | **Required**. Content id of package |
| context | string | Default en. For de packages request for context=de |
| startDate | string | **Required.** Start date of the package, format YYYYMMDD |
| endDate | string | End date of the package, format YYYYMMDD |
| duration | string | **Required.** Duration of the stay |
| depAirport | string | **Required.** Departure airport or airport grouping code |
| boardType | string | **Required.** Board Type code |
| room | string/array of strings | **Required.** Room specification and occupation |


Sample Request
--------------

```/offer/package/28480/matrix?contentId=94770A&startDate=20140202&depAirport=STN&duration=2&room=ST04-DO%2C2%7C2&boardType=GT06-AI&context=en&key=cc1885c8-f979-4cc8-91ef-83ddafe33798```
