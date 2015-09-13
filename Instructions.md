---
title: "Instructions"
author: "Yilmaz Rona"
date: "September 12, 2015"
output: html_document
---

### Introduction
This is the submission for Project 1 of Exploratory Data Analysis.

It contains all the code needed to generate the plots from the source data, <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb].

### Preparation
Prior to executing the code, you must download and unzip the source data

### The files
* <b>load_data.R</b>:  A function to import the unzipped data.  It is called by the plotting routines and must be sourced alongside the plotting files.  
* <b>plot1.R</b>:  Produces plot 1, a histogram of Global Active Power
* <b>plot2.R</b>:  Produces plot 2, a time series plot of Global Active Power
* <b>plot3.R</b>:  Produces plot 3, a time series plot showing traces of Sub Metering 1,2 and 3.
* <b>plot4.R</b>:  Produces 4 plots, 
      + a time series plot of Global Active Power
      + a time series plot of Voltage
      + a time series plot showing traces of Sub Metering 1,2 and 3
      + a time series plot of Global Reactive Power
  
### Example Usage
```
source('load_data.r')
source('/plot1.R')
temp <- plot1("household_power_consumption.txt")
```
