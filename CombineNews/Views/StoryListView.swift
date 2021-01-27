//
//  StoryListView.swift
//  CombineNews
//
//  Created by Derek on 1/27/21.
//

import SwiftUI

struct StoryListView: View {
    init() {
            
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.black]

        UINavigationBar.appearance().backgroundColor = UIColor.red
        }
    
   @ObservedObject var storyListVM = StoryListViewModel()
    var body: some View {
        NavigationView{
            List(self.storyListVM.stories, id: \.id){storyVM in
                NavigationLink(
                    destination: StoryDetailView(storyId: storyVM.id)){
                Text("\(storyVM.title)")
                }
            } //List
            .navigationBarTitle("Tech News",displayMode: .large)

        }//Nav View
    }
}

struct StoryListView_Previews: PreviewProvider {
    static var previews: some View {
        StoryListView()
    }
}
