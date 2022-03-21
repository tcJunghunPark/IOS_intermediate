//
//  ContentCollectionViewHeader.swift
//  NetfilxStyleSample
//
//  Created by Junghun Park on 2022/03/21.
//

import UIKit

class ContentCollectionViewHeader: UICollectionReusableView { // 반드시 이 클래스여야 헤더 혹은 푸터가 될 수 있음
    let sectionNameLabel = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        sectionNameLabel.font = .systemFont(ofSize: 17, weight: .bold)
        sectionNameLabel.textColor = .white
        sectionNameLabel.sizeToFit()
        
        addSubview(sectionNameLabel)
        
        sectionNameLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.top.bottom.leading.equalToSuperview().offset(10)
            
        }
    }
}
