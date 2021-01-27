//
//  StoryDetailViewModel.swift
//  CombineNews
//
//  Created by Derek on 1/27/21.
//
import Combine
import Foundation

class StoryDetailViewModel:ObservableObject {
    private var cancellable:AnyCancellable?
    @Published private var story = Story.placeholder()
    
    func fetchStoryDetails(storyId:Int){
        self.cancellable = WebService().getStoryById(storyId: storyId)
            .catch({ _ in Just(Story.placeholder() )})
            .sink(receiveCompletion: { _ in }, receiveValue: {story in
                self.story = story
            })
    }
    
    
}
extension StoryDetailViewModel{
    var title:String{
        return self.story.title
    }
    
    var url:String{
        return self.story.url
    }
}
