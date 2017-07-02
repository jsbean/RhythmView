//
//  RhythmView.swift
//  RhythmView
//
//  Created by James Bean on 6/14/17.
//
//

import Collections
import Rhythm
import RhythmSpellingTools
import GraphicsTools
import QuartzCore

/// View composed of `BeamsView`.
///
/// - TODO: Add `TupletBracketView` values.
public struct RhythmView: CompositeRenderable {
    
    public struct Configuration {

        public let orientation: Orientation
        public let slope: Double
        public let beamWidth: Double
        public let beamletLength: Double
        public let beamDisplacement: Double
        public let beamStyling: Styling
        
        public init(
            orientation: Orientation,
            slope: Double,
            beamWidth: Double,
            beamletLength: Double,
            beamDisplacement: Double,
            beamStyling: Styling
        )
        {
            self.orientation = orientation
            self.slope = slope
            self.beamWidth = beamWidth
            self.beamletLength = beamletLength
            self.beamDisplacement = beamDisplacement
            self.beamStyling = beamStyling
        }
    }

    public var components: [Renderable] {
        return [beamsView]
    }

    private let beamsView: BeamsView

    public init(beamsView: BeamsView) {
        self.beamsView = beamsView
    }
}
