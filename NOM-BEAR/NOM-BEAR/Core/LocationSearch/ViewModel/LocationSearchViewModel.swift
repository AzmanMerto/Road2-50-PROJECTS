//
//  LocationSearchViewModel.swift
//  NOM-BEAR
//
//  Created by NomoteteS on 26.01.2023.
//

import Foundation
import MapKit

class LocationSearchViewModel : NSObject, ObservableObject {
    
    // MARK: - Properties
    
    @Published var result = [MKLocalSearchCompletion]()
    private let searchCompleter = MKLocalSearchCompleter()
    var queryFragment: String = "" {
        didSet {
            searchCompleter.queryFragment = queryFragment
        }
    }
    
    
    override init() {
        super.init()
        searchCompleter.delegate = self
        searchCompleter.queryFragment = queryFragment
    }
    
}

    // MARK: - MKLocalSearchCompleter Delegate
 
extension LocationSearchViewModel: MKLocalSearchCompleterDelegate {
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        self.result = completer.results
    }
}
