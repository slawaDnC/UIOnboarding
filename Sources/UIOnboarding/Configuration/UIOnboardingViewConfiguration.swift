//
//  UIOnboardingViewConfiguration.swift
//  UIOnboarding
//
//  Created by Vyacheslav on 12.07.2023.
//

import UIKit

// MARK: - UIOnboardingViewConfiguration
public struct UIOnboardingViewConfiguration {
    // MARK: - Feature
    public enum Feature {
        case plain(UIOnboardingFeature)
        case checkBox(UIOnboardingFeatureCheckBox)
    }

    // MARK: - TableSelectingType
    public enum TableSelectingType {
        case single
        case multiple
    }

    // MARK: - Properties
    public var appIcon: UIImage
    public var firstTitleLine: NSMutableAttributedString
    public var secondTitleLine: NSMutableAttributedString
    public var features: [Feature]
    public var textViewConfiguration: UIOnboardingTextViewConfiguration? = nil
    public var buttonConfiguration: UIOnboardingButtonConfiguration

    public var defaultSelection: IndexPath
    public var selectingType: TableSelectingType


    // MARK: - Init
    public init(
        appIcon: UIImage,
        firstTitleLine: NSMutableAttributedString,
        secondTitleLine: NSMutableAttributedString,
        features: [Feature],
        textViewConfiguration: UIOnboardingTextViewConfiguration? = nil,
        buttonConfiguration: UIOnboardingButtonConfiguration,
        defaultSelection: IndexPath = .init(row: 0, section: 0),
        selectingType: TableSelectingType = .single
    ) {
        self.appIcon = appIcon
        self.firstTitleLine = firstTitleLine
        self.secondTitleLine = secondTitleLine
        self.features = features
        self.textViewConfiguration = textViewConfiguration
        self.buttonConfiguration = buttonConfiguration
        self.defaultSelection = defaultSelection
        self.selectingType = selectingType
    }
}
