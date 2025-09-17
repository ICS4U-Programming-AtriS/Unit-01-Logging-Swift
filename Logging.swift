//
//  NameOfProgram.swift
//
//  Created by Atri Sarker
//  Created on 2025-09-17
//  Version 1.0
//  Copyright (c) 2025 Atri Sarker. All rights reserved.
//
// Enterprise software for ATREE Logging Company.
// This software is used to calculate the amount of logs that a truck can fit.
// Given input for a log length, it will return the log amount.

// Maximum payload capacity for the truck. [IN KG]
let TRUCK_WEIGHT_LIMIT = 1100
// Rate that defines how much a log weighs per meter. [IN KG/M]
let WEIGHT_PER_METER = 20
// Our company's offered log lengths.
// Only these lengths are offered due to ease of inventory and transport.
// More log lengths may be offered in the future.
let LOG_LENGTHS = [0.25, 0.5, 1]

// Welcome message.
print("Welcome to the ATREE logging company's ", terminator: "")
print("tooling kit for industry-standard log packing.")
print("Our software is known to be robust ", terminator: "")
print("and military-grade, much like our logs.");
print();
// Prompt for log length.
print("LOG LENGTHS (m): [ | ", terminator: "")
for length in LOG_LENGTHS { print("\(length) ", terminator: " | ") }
print("]")
print("Enter the length of the log (m): ", terminator: "")
// Get log length as a string.
if let logLengthAsString = readLine() {
    // Convert log length input to a double.
    if let logLength = Double(logLengthAsString) {
        // Check if the log length is a valid length
        if LOG_LENGTHS.contains(logLength) {
            // Calculate the amount of logs that can fit in the truck
            let logAmount = Double(TRUCK_WEIGHT_LIMIT) / (Double(WEIGHT_PER_METER) * logLength)
            // Display the result [IN BLUE]
            print("\u{001B}[0;34mLog Amount : ", terminator: "")
            print("\(Int(logAmount))")
        } else {
            // Error message for invalid log length. [IN RED]
            print("\u{001B}[0;31mERROR: INVALID LOG LENGTH.")
        }
    } else {
        // Error message for non-numeric length. [IN RED]
        print("\u{001B}[0;31mERROR: LOG LENGTH MUST BE NUMERIC.")
    }
}