//
//  StoryDetailView.swift
//  CombineNews
//
//  Created by Derek on 1/27/21.
//

import SwiftUI

struct StoryDetailView: View {
   @ObservedObject private var storyDetailVM: StoryDetailViewModel
    var storyId:Int

    
    init(storyId:Int) {
        self.storyDetailVM = StoryDetailViewModel()
        self.storyId = storyId
    }
    
    var body: some View {
        VStack {
            Text(self.storyDetailVM.title)
            NewsView(url: self.storyDetailVM.url)
            //:vStack
        }.onAppear{
            self.storyDetailVM.fetchStoryDetails(storyId: self.storyId)
        }
    }
}

struct StoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StoryDetailView(storyId: 8863)
    }
}
