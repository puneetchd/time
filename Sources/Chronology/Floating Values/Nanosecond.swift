//
//  Nanosecond.swift
//  Chronology
//
//  Created by Dave DeLong on 2/19/18.
//

import Foundation

public struct Nanosecond: RegionField, NanosecondField, DateComponentsField, DateComponentsInitializable {
    public static var representedComponents: Set<Calendar.Component> = [.nanosecond]
    
    public let region: Region
    public let dateComponents: DateComponents
    
    internal init(dateComponents: DateComponents, region: Region) {
        self.region = region
        self.dateComponents = dateComponents.requireAndRestrict(to: type(of: self).representedComponents)
    }
    
}
