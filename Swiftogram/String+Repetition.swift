//
//  String+Repetition.swift
//  Swiftogram
//
//  Created by Joshua Smith on 6/13/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

/** Returns a string with `count` copies of `str`. */
func *(str: String, count: Int) -> String
{
    return String(count: count, repeatedValue: Character(str))
}

/** Returns a string with `count` copies of `str`. */
func *(count: Int, str: String) -> String
{
    return String(count: count, repeatedValue: Character(str))
}

/** Returns a string with `count` copies of `char`. */
func *(char: Character, count: Int) -> String
{
    return String(count: count, repeatedValue: char)
}

/** Returns a string with `count` copies of `char`. */
func *(count: Int, char: Character) -> String
{
    return String(count: count, repeatedValue: char)
}
