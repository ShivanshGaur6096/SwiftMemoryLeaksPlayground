//: [Previous](@previous)

import Foundation

var otpEnabledCountries = ["960","679","238","47","354","91","1","61","90","66","55","972","84","65","57","81","52","44","64","82","966","51","254","233","93","27","45","60","33"]

var otpLessEnabledCountries = ["91","1","44","61","60","62","966","234","92","90","27","66","886","82","45","353","31","47","94","880","95","64","354","855","63","65","81","55","57","977","98","973","965","375","971","20","679","974","976","86","233","994","996","52","33","972","230","84","238","41","46","358","54","591","56","502","51","34","58","852","968","268","1242","962","970","374","992","218","254","93"]

var setOfOTP = Set(otpEnabledCountries)
var setOfOTPLess = Set(otpLessEnabledCountries)

print(setOfOTP.subtracting(setOfOTPLess))
