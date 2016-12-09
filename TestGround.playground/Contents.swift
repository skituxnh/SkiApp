import UIKit

//let snowDataArray: [String] = ["5<span class=\"symbol\">\"</span></div>\n\t</div>\n\t<div class=\"snowfall-total\" id=\"forty-eight-hour\">\n\t\t<div class=\"snowfall-label\">48hr</div>\n\t\t", "5<span class=\"symbol\">\"</span></div>\n\t</div>\n\t<div class=\"snowfall-total\" id=\"current-depth\">\n\t\t<div class=\"snowfall-label\">Depth</div>\n\t\t", "35<span class=\"symbol\">\"</span></div>\n\t</div>\n\t<div class=\"snowfall-total\" id=\"year-to-date\">\n\t\t<div class=\"snowfall-label\">YTD</div>\n\t\t", "88<span class=\"symbol\">\"</span></div>\n\t</div>\n</div>\n\n\n"]
//
//
//func snowDataLabels(dataArray: [String]) -> [String] {
//    
//    var resultsArray: [String] = []
//    
//    for element in snowDataArray {
//        let splitted = element.characters.split { ["<",">","\"","=","/"].contains(String($0)) }
//        var trimmed = splitted.map { String($0).trimmingCharacters(in: .whitespaces) }
//        
//    }
//    
//    return resultsArray
//    
//}
//
//
//
//snowDataLabels(dataArray: snowDataArray)
