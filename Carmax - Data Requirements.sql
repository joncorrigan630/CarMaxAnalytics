-- Given historical industry sales, how can CarMax tailor it’s marketing and inventory strategies to draw in distinct segments of consumers?

-- Database Objectives: 
   #1. Create a primary table for storing all carmax data imported from the original dataset
   #2. Create three new tables from the primary table to store all customer, vehicle, and purchase data 
   #3. Create a new table view containing all data from the purchase_info table and a new column for the midrange of each purchase price bin grouped by purchase price
   #4. Create a new table view containing vehicle make, model, and year aggregated by total vehicles sold and the average purchase price for each vehicle 
   #5. Create a new table view containing the number of vehicles purchased, average purchase amount, and average income grouped by customer gender 