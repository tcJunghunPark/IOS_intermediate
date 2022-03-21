//
//  ContentCollectionViewCell.swift
//  NetfilxStyleSample
//
//  Created by Junghun Park on 2022/03/21.
//

import UIKit
import SnapKit

class ContentCollectionViewCell: UICollectionViewCell {
    let imageView = UIImageView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //contentView는 기본 객체 마치 self와 같은 셀이 이미 있다고 가정하기 때문
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 5
        contentView.clipsToBounds = true
        
        imageView.contentMode = .scaleToFill
        
        contentView.addSubview(imageView)
        
        imageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
