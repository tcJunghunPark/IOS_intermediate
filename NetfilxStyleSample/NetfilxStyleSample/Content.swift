//
//  Content.swift
//  NetfilxStyleSample
//
//  Created by Junghun Park on 2022/03/21.
//

import UIKit

struct Content : Decodable {
    let sectionType: SectionType
    let sectionName: String
    let contentItem: [Item]
    
    enum SectionType:String, Decodable { // 스트링으로 받지만 종류가 정해져있기 때문에 이넘으로 받는게 좋음
        case basic
        case main
        case large
        case rank
    }
    
}

struct Item:Decodable {
    let description: String
    let imageName: String
    
    var image: UIImage {
        return UIImage(named: imageName) ?? UIImage() //이미지의 이름과 스트링이 동일하기때문에 바로 이미지 리턴
    }
}

