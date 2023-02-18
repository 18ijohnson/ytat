//
//  SearchView.swift
//  ytat
//
//  Created by Isaac Johnson on 2/12/23.
//

import SwiftUI
import TVUIKit

//MARK: - SearchView
struct SearchBar: UIViewControllerRepresentable {
    typealias UIViewControllerType = UINavigationController
    
    @Binding var searchResults: SearchResponse?
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SearchBar>) -> UINavigationController {
        let controller = UISearchController(searchResultsController: context.coordinator)
        controller.searchResultsUpdater = context.coordinator
        
        return UINavigationController(rootViewController: UISearchContainerViewController(searchController: controller))
    }

    func updateUIViewController(_ uiViewController: UINavigationController, context: UIViewControllerRepresentableContext<SearchBar>) {
    }

    func makeCoordinator() -> SearchBar.Coordinator {
        Coordinator(searchResults: $searchResults)
    }


    class Coordinator: UIViewController, UISearchResultsUpdating {
                
        @Binding var searchResults: SearchResponse?
        private var searchDelayTimer: Timer?

        init(searchResults: Binding<SearchResponse?>) {
            self._searchResults = searchResults
            super.init(nibName: nil, bundle: nil)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
            
        func updateSearchResults(for searchController: UISearchController) {
            guard let searchText = searchController.searchBar.text else { return }
                
            if searchText != "" {
                // Update the search suggestions
                searchController.searchSuggestions = getSuggestions(searchText: searchText)
                
                // Cancel any existing search delay timer
                searchDelayTimer?.invalidate()
                
                // Start a new search delay timer with a 3-second interval
                searchDelayTimer = Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { [weak self] _ in
                    self?.searchResults = self?.getSearchResults(searchText: searchText) // Get the search results and update the binding
                }
            } else {
                // Clear the search results if there is no search text
                self.searchResults = nil
                
                // Cancel any existing search delay timer
                searchDelayTimer?.invalidate()
            }
        }
        
        private func getSearchResults(searchText: String) -> SearchResponse? {
            return callSearchAPI(searchText: searchText)
        }
    }

}

func getSuggestions(searchText: String) -> [UISearchSuggestion] {
    var searchSuggestions: [UISearchSuggestion] = [UISearchSuggestion]()
    
    let suggestionsResponse = callSearchSuggestionsAPI(searchText: searchText)
    for i in 0 ..< suggestionsResponse!.count {
        searchSuggestions.append(UISearchSuggestionItem(localizedSuggestion: suggestionsResponse?[i] ?? ""))
    }
    
    return searchSuggestions
}

//struct SearchBar_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchBar(searchResults: )
//    }
//}
