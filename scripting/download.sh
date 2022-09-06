#!/bin/bash

echo "This scripts downloads data from google finance"

# 1. create folder with the name "data"
# 	 this removes data folder if it exists and then creates it

# your code

# 2. next, we define important parameters
#    we will first define range of years for which we wish to obtain data 
#    on stocks
# - create a variable called EPOCHSTART for lower end of the range, in seconds after 1970-01-01
# For instance, set EPOCHSTART to 631155600.

# your code

# - create a variable called EPOCHEND for higher end of the range, 
#   should be bigger than the previous variable.
# For instance, set EPOCHEND to 1609459200

# your code


# 5. Go to
# http://www.nasdaq.com/screening/companies-by-name.aspx?letter=0&exchange=nyse&render=download
# and select the options NYSE, MEGA (>$200B) and Buy. Download the csv and name it nasdaq_screener.csv
# Note: the .csv file is already in the folder for your convenience. 
# save the list of tickers (that is the first column of the csv) in a variable called "tickers".
# Try to do it programatically, but if you don't succeed you can also input the list of tickers manually

# your code

# 5. Now for each stock in tickers, download the data

USERAGENT="Mozilla/5.0"
BASEURL="https://query1.finance.yahoo.com/v7/finance/download/"

for ticker in $tickers; do
    URL="${BASEURL}${ticker}?period1=${EPOCHSTART}&period2=${EPOCHEND}&interval=1d&events=history&includeAdjustedClose=true"
    wget --user-agent=${USERAGENT} "$URL" -O data/${ticker}.csv
done

# 5. Compress the folder "data" using tar command and save it in the same folder with the name "data.tar.gz"

# your code 

# 6. Remove the folder "data"

# your code

