//
//  PDFGroupContainer.swift
//  TPPDF
//
//  Created by Philip Niedertscheider on 31.05.19.
//

/**
 A section container defines the position of an element in a column of a given container.
 */
public enum PDFGroupContainer {

    /**
     Element is in no container, only real use is as a default value
     */
    case none

    /**
     Container at the top left
     */
    case headerLeft

    /**
     Container at the top center
     */
    case headerCenter

    /**
     Container at the top right
     */
    case headerRight

    /**
     Container aligned to left
     */
    case left

    /**
     Container aligned to center
     */
    case center

    /**
     Container aligned to right
     */
    case right

    /**
     Container at the bottom left
     */
    case footerLeft

    /**
     Container at the bottom center
     */
    case footerCenter

    /**
     Container at the bottom right
     */
    case footerRight

    internal init(from container: PDFContainer) {
        switch container {
        case .none:
            self = .none
        case .headerLeft:
            self = .headerLeft
        case .headerCenter:
            self = .headerCenter
        case .headerRight:
            self = .headerRight
        case .contentLeft:
            self = .left
        case .contentCenter:
            self = .center
        case .contentRight:
            self = .right
        case .footerLeft:
            self = .footerLeft
        case .footerCenter:
            self = .footerCenter
        case .footerRight:
            self = .footerRight
        }
    }

    /**
     Array of all possible containers, expect `.none`.
     Useful for initalizing default values for each container
     */
    internal static var all: [PDFGroupContainer] {
        [.headerLeft, .headerCenter, .headerRight, .left, .center, .right, .footerLeft, .footerCenter, .footerRight]
    }

    /**
     Returns the mapped `PDFContainer`
     */
    internal var contentContainer: PDFContainer {
        switch self {
        case .headerLeft: return .headerLeft
        case .headerCenter: return .headerCenter
        case .headerRight: return .headerRight
        case .left: return .contentLeft
        case .center: return .contentCenter
        case .right: return .contentRight
        case .footerLeft: return .footerLeft
        case .footerCenter: return .footerCenter
        case .footerRight: return .footerRight
        default: return .none
        }
    }
}
