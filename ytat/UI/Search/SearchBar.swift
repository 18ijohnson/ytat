//
//  SearchView.swift
//  ytat
//
//  Created by Isaac Johnson on 2/12/23.
//

import SwiftUI

struct SearchBar<Content: View>: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UINavigationController
    
    @Binding var text: String
    @Binding var results: SearchResponse?
    
    var placeholder: String = ""
    @ViewBuilder var content: () -> Content

    class Coordinator: NSObject, UISearchResultsUpdating, UISearchControllerDelegate, UISearchBarDelegate {

        @Binding var text: String
        @Binding var results: SearchResponse?
        private var lastUpdate: Date = Date.distantPast
        
        init(text: Binding<String>, results: Binding<SearchResponse?>) {
            _text = text
            _results = results
        }

        // MARK: - UISearchResultsUpdating impl
        
        // Called when user selects one of the search suggestion buttons displayed under the keyboard on tvOS.
        func updateSearchResults(for searchController: UISearchController) {
            
            // IMPORTANT!!!
            // only if text has changed it will be reassigned.
            // reassignment implies a content view update
            if( searchController.searchBar.text != nil && self.text != searchController.searchBar.text ) {
                self.text = searchController.searchBar.text ?? ""
                searchController.searchSuggestions = getSuggestions(searchText: searchController.searchBar.text!)
                self.results = getSearchResults(searchText: searchController.searchBar.text ?? "")
                
                
            }
        }
        
        private func getSearchResults(searchText: String) -> SearchResponse? {
            return callSearchAPI(searchText: searchText)
        }
        
        func getSuggestions(searchText: String) -> [UISearchSuggestion] {
            var searchSuggestions: [UISearchSuggestion] = [UISearchSuggestion]()
            
            let suggestionsResponse = callSearchSuggestionsAPI(searchText: searchText)
            for i in 0 ..< suggestionsResponse!.count {
                searchSuggestions.append(UISearchSuggestionItem(localizedSuggestion: suggestionsResponse?[i] ?? ""))
            }
            
            return searchSuggestions
        }
        
        // MARK: - UISearchBarDelegate impl
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            //text = searchText
        }
        
        func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
            
        }
    }

    func makeCoordinator() -> SearchBar.Coordinator {
        return Coordinator(text: $text, results: $results)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<SearchBar>) -> UIViewControllerType {

        let topController = UIHostingController(rootView: content() )
        
        let searchController =  UISearchController(searchResultsController: topController)
        searchController.searchResultsUpdater = context.coordinator
        // searchController.searchBar.delegate = context.coordinator
        // searchController.delegate = context.coordinator
        searchController.searchBar.placeholder = placeholder
        
        let searchContainer = UISearchContainerViewController(searchController: searchController)
        
        let searchNavigationController = UINavigationController(rootViewController: searchContainer)

        return searchNavigationController
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: UIViewControllerRepresentableContext<SearchBar>) {
        
        if let vc = uiViewController.children.first as? UISearchContainerViewController {

            if let searchResultController = vc.searchController.searchResultsController, let host = searchResultController as? UIHostingController<Content> {
                
                host.rootView = content()
            }

        }
    }

}
