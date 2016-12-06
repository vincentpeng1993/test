## ORF574 Rolling Correlation
# Plot the rolling correlation of two asset returns

library("quantmod")
library("PerformanceAnalytics")

symbolData <- new.env() #Make a new environment for quantmod to store data in
getSymbols(c("SPY","^VIX"), env = symbolData, src = "yahoo", from = "2000-01-01")

Ra <- dailyReturn(symbolData$SPY, type = "log")
Rb <- dailyReturn(symbolData$VIX, type = "log")

chart.RollingCorrelation(Ra, Rb, width = 90, main = "3-month Rolling Correlation Between Log-returns of SPY and VIX")
